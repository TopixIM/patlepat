
{} (:package |app)
  :configs $ {} (:init-fn |app.client/main!) (:reload-fn |app.client/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |alerts.calcit/ |respo-feather.calcit/
  :entries $ {}
    :server $ {} (:init-fn |app.server/main!) (:port 6001) (:reload-fn |app.server/reload!) (:storage-key |calcit.cirru)
      :modules $ [] |lilac/ |recollect/ |memof/ |ws-edn.calcit/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit-wss/ |calcit.std/ |calcit-regex/
  :files $ {}
    |app.client $ {}
      :defs $ {}
        |*states $ quote
          defatom *states $ {}
            :states $ {}
              :cursor $ []
        |*store $ quote (defatom *store nil)
        |connect! $ quote
          defn connect! () $ let
              url-obj $ url-parse js/location.href true
              host $ either (-> url-obj .-query .-host) js/location.hostname
              port $ either (-> url-obj .-query .-port) (:port config/site)
            ws-connect! (str "\"ws://" host "\":" port)
              {}
                :on-open $ fn (event) (simulate-login!)
                :on-close $ fn (event) (reset! *store nil) (js/console.error "\"Lost connection!")
                :on-data on-server-data
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch" op op-data
            case-default op
              ws-send! $ {} (:kind :op) (:op op) (:data op-data)
              :states $ reset! *states (update-states @*states op-data)
              :effect/connect $ connect!
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            connect!
            add-watch *store :changes $ fn (store prev) (render-app!)
            add-watch *states :changes $ fn (states prev) (render-app!)
            on-page-touch $ fn ()
              if (nil? @*store) (connect!)
            println "\"App started!"
        |mount-target $ quote
          def mount-target $ .querySelector js/document "\".app"
        |on-server-data $ quote
          defn on-server-data (data)
            case-default (:kind data) (println "\"unknown server data kind:" data)
              :patch $ let
                  changes $ :data data
                when config/dev? $ js/console.log "\"Changes" (to-js-data changes)
                reset! *store $ patch-twig @*store changes
        |reload! $ quote
          defn reload! () $ if (some? client-errors) (hud! "\"error" client-errors)
            do (hud! "\"inactive" nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
              add-watch *store :changes $ fn (store prev) (render-app!)
              add-watch *states :changes $ fn (states prev) (render-app!)
              println "\"Code updated."
        |render-app! $ quote
          defn render-app! () $ render! mount-target
            comp-container (:states @*states) @*store
            , dispatch!
        |simulate-login! $ quote
          defn simulate-login! () $ let
              raw $ .!getItem js/localStorage (:storage-key config/site)
            if (some? raw)
              do (println "\"Found storage.")
                dispatch! :user/log-in $ parse-cirru-edn raw
              do $ println "\"Found no storage."
      :ns $ quote
        ns app.client $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] respo.cursor :refer $ [] update-states
          [] app.comp.container :refer $ [] comp-container
          [] cljs.reader :refer $ [] read-string
          [] app.schema :as schema
          [] app.config :as config
          [] ws-edn.client :refer $ [] ws-connect! ws-send!
          [] recollect.patch :refer $ [] patch-twig
          [] cumulo-util.core :refer $ [] on-page-touch
          [] "\"url-parse" :default url-parse
          "\"bottom-tip" :default hud!
          "\"./calcit.build-errors" :default client-errors
    |app.comp $ {}
      :defs $ {}
        |comp-placeholder $ quote
          defcomp comp-placeholder (text)
            div
              {} $ :style
                merge ui/center $ {} (:padding 16) (:font-family ui/font-fancy)
                  :color $ hsl 0 0 80
                  :font-size 12
                  :font-style :italic
              <> text
        |comp-tabs $ quote
          defcomp comp-tabs (selected tabs)
            list->
              {} $ :style
                merge ui/row $ {} (:padding "\"8px 16px")
              -> tabs $ map
                fn (info)
                  [] (:name info)
                    div
                      {}
                        :style $ merge
                          {} (:padding "\"0 8px") (:font-family ui/font-fancy) (:font-weight 300) (:cursor :pointer) (:font-size 16)
                            :color $ hsl 0 0 70
                            :line-height "\"32px"
                          if
                            = selected $ :name info
                            {} (:font-weight 500)
                              :color $ hsl 0 0 30
                        :on-click $ fn (e d!)
                          d! :router/change $ {}
                            :name $ :name info
                      <> $ :title info
      :ns $ quote
        ns app.comp $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] respo.core :refer $ [] defcomp list-> >> <> span div
          [] app.config :as config
    |app.comp.chatroom $ {}
      :defs $ {}
        |comp-chatroom $ quote
          defcomp comp-chatroom (states messages styles)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :draft "\""
                send-message $ fn (d!)
                  d! cursor $ assoc state :draft "\""
                  when
                    not $ blank? (:draft state)
                    d! :message/create $ trim (:draft state)
              div
                {} $ :style
                  merge ui/expand ui/column
                    {} (:padding 8) (:position :relative)
                    , styles
                if
                  > (count messages) 20
                  a $ {}
                    :style $ merge ui/link
                      {} (:position :absolute) (:top 8) (:right 12)
                    :inner-text "\"清空"
                    :on-click $ fn (e d!) (d! :message/clear nil)
                if (empty? messages) (comp-placeholder "\"没有消息")
                list->
                  {} $ :style
                    merge ui/expand $ {} (:padding-bottom 400)
                  loop
                      pairs $ -> messages (.to-list)
                        .sort-by $ fn (pair)
                          :time $ last pair
                      last-user-id nil
                      acc $ []
                    if (empty? pairs) acc $ let
                        message $ last (first pairs)
                      recur (rest pairs) (:author-id message)
                        conj acc $ [] (:time message)
                          comp-message message $ = last-user-id (:author-id message)
                div
                  {} $ :style
                    merge ui/row $ {} (:align-items :flex-start)
                  textarea $ {}
                    :style $ merge ui/expand ui/textarea
                    :placeholder "\"text message..."
                    :value $ :draft state
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :draft (:value e)
                    :on-keydown $ fn (e d!)
                      when
                        = 13 $ :key-code e
                        send-message d!
                        .preventDefault $ :event e
                  =< 8 nil
                  a $ {} (:style ui/link) (:inner-text "\"发送")
                    :on-click $ fn (e d!) (send-message d!)
        |comp-message $ quote
          defcomp comp-message (message merged?)
            case (:type message)
              :message $ div
                {} $ :style
                  merge ui/row $ {} (:margin "\"4px 0")
                span $ {}
                  :inner-text $ str
                    or
                      :name $ :user message
                      , "\"GUEST"
                  :style $ merge
                    {} (:padding "\"0px 8px")
                      :background-color $ hsl 0 0 94
                      :border-radius "\"12px"
                    if merged? $ {} (:opacity 0)
                =< 8 nil
                div
                  {} $ :style ui/expand
                  if (:blotted? message)
                    <> (:id message)
                      {}
                        :color $ hsl 0 0 80
                        :text-decoration :line-through
                    <> $ :text message
                  =< 8 nil
                  <>
                    -> message :time dayjs $ .format "\"HH:mm:ss"
                    {}
                      :color $ hsl 0 0 80
                      :font-size 12
                      :font-family ui/font-fancy
                  if-not (:blotted? message)
                    span
                      {} (:class-name "\"invisible-link")
                        :on-click $ fn (e d!)
                          d! :message/blot-out $ :id message
                      comp-i :x 10 $ hsl 0 80 80
              :quote $ div
                {} $ :style
                  merge ui/row $ {} (:align-items :flex-start) (:margin "\"4px 0")
                <> "\"生成了" $ {}
                  :color $ hsl 0 0 80
                =< 8 nil
                div
                  {} $ :style ui/expand
                  div
                    {} $ :style
                      {}
                        :background-color $ hsl 200 80 50
                        :color :white
                        :padding "\"2px 8px"
                        :border-radius "\"6px"
                        :font-size 20
                        :line-height "\"30px"
                    <> $ :text message
              :operation $ div
                {} $ :style
                  merge ui/center $ {} (:margin "\"8px 0")
                <>
                  str
                    get-in message $ [] :user :name
                    , "\" " $ :text message
                  {}
                    :color $ hsl 0 0 100
                    :background-color $ hsl 0 0 88
                    :padding "\"0 16px"
                    :font-size 12
                    :line-height "\"20px"
                    :border-radius "\"4px"
              <> $ str "\"Unknown message type: " (:type message)
      :ns $ quote
        ns app.comp.chatroom $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] respo.core :refer $ [] defcomp <> list-> span div textarea button a
          [] app.config :as config
          [] clojure.string :as string
          [] app.comp :refer $ [] comp-placeholder
          [] "\"dayjs" :default dayjs
          [] feather.core :refer $ [] comp-icon comp-i
    |app.comp.container $ {}
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (states store)
            let
                state $ :data states
                session $ :session store
                router $ :router store
                router-data $ :data router
                render-body $ fn ()
                  div
                    {} $ :style (merge ui/expand ui/row)
                    comp-workspace (>> states :workspace) router (:templates store) (:game store) (:user store)
                    comp-chatroom (>> states :chat) (:messages store)
                      {} $ :border-left
                        str "\"1px solid " $ hsl 0 0 90
              if (nil? store) (comp-offline)
                div
                  {} $ :style (merge ui/global ui/fullscreen ui/column)
                  comp-navigation (:logged-in? store) (:count store)
                  if (:logged-in? store)
                    case (:name router)
                      :home $ render-body
                      :templates $ render-body
                      :profile $ comp-profile (:user store) (:data router)
                      <> router
                    comp-login $ >> states :login
                  comp-status-color $ :color store
                  when dev? $ comp-inspect "\"Store" store
                    {} (:bottom 0) (:left 0) (:max-width "\"100%")
                  comp-messages
                    get-in store $ [] :session :messages
                    {}
                    fn (info d!) (d! :session/remove-message info)
                  when dev? $ comp-reel (:reel-length store) ({})
        |comp-offline $ quote
          defcomp comp-offline () $ div
            {} $ :style
              merge ui/global ui/fullscreen ui/column-dispersive $ {}
                :background-color $ :theme config/site
            div $ {}
              :style $ {} (:height 0)
            div $ {}
              :style $ {}
                :background-image $ str "\"url(" (:icon config/site) "\")"
                :width 128
                :height 128
                :background-size :contain
            div
              {}
                :style $ {} (:cursor :pointer) (:line-height "\"32px")
                :on-click $ fn (e d!) (d! :effect/connect nil)
              <> "\"No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
        |comp-status-color $ quote
          defcomp comp-status-color (color)
            div $ {}
              :style $ let
                  size 24
                {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:background-color color) (:border-radius "\"50%") (:opacity 0.6) (:pointer-events :none)
      :ns $ quote
        ns app.comp.container $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp <> >> div span button
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] respo.comp.space :refer $ [] =<
          [] app.comp.navigation :refer $ [] comp-navigation
          [] app.comp.profile :refer $ [] comp-profile
          [] app.comp.login :refer $ [] comp-login
          [] respo-message.comp.messages :refer $ [] comp-messages
          [] cumulo-reel.comp.reel :refer $ [] comp-reel
          [] app.config :refer $ [] dev?
          [] app.schema :as schema
          [] app.config :as config
          [] app.comp.workspace :refer $ [] comp-workspace
          [] app.comp.chatroom :refer $ [] comp-chatroom
    |app.comp.login $ {}
      :defs $ {}
        |comp-login $ quote
          defcomp comp-login (states)
            let
                cursor $ :cursor states
                state $ or (:data states) initial-state
              div
                {} $ :style (merge ui/flex ui/center)
                div ({})
                  div
                    {} $ :style ({})
                    div ({})
                      input $ {} (:placeholder "\"Username")
                        :value $ :username state
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :username (:value e)
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder "\"Password")
                        :value $ :password state
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :password (:value e)
                  =< nil 8
                  div
                    {} $ :style
                      {} $ :text-align :right
                    span $ {} (:inner-text "\"Sign up")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) true
                    =< 8 nil
                    span $ {} (:inner-text "\"Log in")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) false
        |initial-state $ quote
          def initial-state $ {} (:username "\"") (:password "\"")
        |on-submit $ quote
          defn on-submit (username password signup?)
            fn (e dispatch!)
              dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
              .!setItem js/localStorage (:storage-key config/site)
                format-cirru-edn $ [] username password
      :ns $ quote
        ns app.comp.login $ :require
          [] respo.core :refer $ [] defcomp <> div input button span
          [] respo.comp.space :refer $ [] =<
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] respo-ui.core :as ui
          [] app.schema :as schema
          [] app.config :as config
    |app.comp.navigation $ {}
      :defs $ {}
        |comp-navigation $ quote
          defcomp comp-navigation (logged-in? count-members)
            div
              {} $ :style
                merge ui/row-center $ {} (:height 48) (:justify-content :space-between) (:padding "\"0 16px") (:font-size 16)
                  :border-bottom $ str "\"1px solid " (hsl 0 0 0 0.1)
                  :font-family ui/font-fancy
              div
                {}
                  :on-click $ fn (e d!)
                    d! :router/change $ {} (:name :home)
                  :style $ {} (:cursor :pointer)
                <> (:title config/site) nil
              div
                {}
                  :style $ {} (:cursor "\"pointer")
                  :on-click $ fn (e d!)
                    d! :router/change $ {} (:name :profile)
                <> $ if logged-in? "\"Me" "\"Guest"
                =< 8 nil
                <> count-members
      :ns $ quote
        ns app.comp.navigation $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] respo.core :refer $ [] defcomp <> span div
          [] app.config :as config
    |app.comp.profile $ {}
      :defs $ {}
        |comp-profile $ quote
          defcomp comp-profile (user members)
            div
              {} $ :style
                merge ui/flex $ {} (:padding 16)
              div
                {} $ :style
                  {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "\"Hello! " (:name user)
              =< nil 16
              div
                {} $ :style ui/row
                <> "\"Members:"
                =< 8 nil
                list->
                  {} $ :style ui/row
                  -> members
                    map-kv $ fn (k username)
                      [] k $ div
                        {} $ :style
                          {} (:padding "\"0 8px")
                            :border $ str "\"1px solid " (hsl 0 0 80)
                            :border-radius "\"16px"
                            :margin "\"0 4px"
                        <> username
                    .to-list
              =< nil 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!)
                      js/location.replace $ str js/location.origin "\"?time=" (.now js/Date)
                  <> "\"Refresh"
                =< 8 nil
                button
                  {}
                    :style $ merge ui/button
                      {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!) (dispatch! :user/log-out nil)
                      .removeItem js/localStorage $ :storage-key config/site
                  <> "\"Log out"
              =< nil 48
              a $ {} (:href "\"https://github.com/TopixIM/patlepat") (:inner-text "\"GitHub Address") (:target "\"_blank")
      :ns $ quote
        ns app.comp.profile $ :require
          [] respo-ui.core :refer $ [] hsl
          [] app.schema :as schema
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp list-> <> span div button a
          [] respo.comp.space :refer $ [] =<
          [] app.config :as config
    |app.comp.templates $ {}
      :defs $ {}
        |comp-template-preview $ quote
          defcomp comp-template-preview (template)
            list-> ({})
              ->
                interleave
                  concat (:pieces template) (repeat "\"" 10)
                  -> (:slots template)
                    .map-list $ fn (pair)
                      :text $ last pair
                map-indexed $ fn (idx item)
                  [] idx $ if (.!test config/slot-matcher item)
                    <> item $ {}
                      :color $ hsl 200 80 70
                      :font-size 24
                      :margin "\"0 4px"
                      :vertical-align :bottom
                    <> item $ {}
                      :color $ hsl 0 0 50
        |comp-templates $ quote
          defcomp comp-templates (states templates selected)
            let
                template-editor $ use-prompt (>> states :editor)
                  {} $ :text "\"编辑模板, 用 {什么} 来插入填空位置"
                remove-plugin $ use-confirm (>> states :remove)
                  {} $ :text "\"确认真的要删除模板吗"
              div
                {} $ :style (merge ui/expand ui/column)
                div
                  {} $ :style ui/row-parted
                  span nil
                  a $ {} (:inner-text "\"添加模板") (:style ui/link)
                    :on-click $ fn (e d!)
                      .show template-editor d! $ fn (text) (d! :template/create text)
                list->
                  {} $ :style
                    {} $ :padding "\"0px 4px"
                  -> templates
                    map-kv $ fn (k template)
                      [] k $ div
                        {} $ :style
                          merge ui/row-parted
                            {} (:padding "\"4px 8px")
                              :border-bottom $ str "\"1px solid " (hsl 0 0 94)
                            if
                              = selected $ :id template
                              {} $ :background-color (hsl 0 0 97)
                        div ({}) (comp-template-preview template)
                          div ({})
                            <> (:text template)
                              {}
                                :color $ hsl 0 0 70
                                :font-size 10
                        if-not
                          = selected $ :id template
                          div ({})
                            a $ {} (:style ui/link) (:inner-text "\"使用该模板")
                              :on-click $ fn (e d!)
                                d! :template/choose $ :id template
                            =< 8 nil
                            a $ {} (:style ui/link) (:inner-text "\"删除")
                              :on-click $ fn (e d!)
                                .show remove-plugin d! $ fn ()
                                  d! :template/remove $ :id template
                    .to-list
                if (empty? templates) (comp-placeholder "\"No tempaltes")
                .render template-editor
                .render remove-plugin
      :ns $ quote
        ns app.comp.templates $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] respo.core :refer $ [] defcomp list-> >> <> span div a
          [] app.config :as config
          [] respo-alerts.core :refer $ [] use-prompt use-confirm
          [] app.comp :refer $ [] comp-placeholder
    |app.comp.workspace $ {}
      :defs $ {}
        |comp-card $ quote
          defcomp comp-card (card mine? on-remove)
            div
              {} $ :style
                {} (:display :inline-block) (:padding "\"8px 16px")
                  :border $ str "\"1px solid " (hsl 0 0 90)
                  :margin "\"4px"
              if mine?
                span ({})
                  <> $ :text card
                  <> "\"(我的)" $ {} (:font-size 12)
                    :color $ hsl 0 0 80
                    :line-height "\"28px"
                    :vertical-align :middle
                  =< 8 nil
                  comp-icon :x
                    {}
                      :color $ hsl 0 80 60
                      :cursor :pointer
                      :font-size 12
                    fn (e d!) (on-remove d!)
                <>
                  .!replace (:text card) pattern-any "\"*"
                  {} (:font-size 24) (:line-height "\"28px") (:font-family ui/font-code) (:vertical-align :middle)
        |comp-slot $ quote
          defcomp comp-slot (states slot template-id user-id)
            let
                create-plugin $ use-prompt (>> states :create)
                  {} (:text "\"Add card") (:button-text "\"Add it")
              div
                {} $ :style
                  merge ui/expand ui/column $ {}
                    :border-left $ str "\"1px solid " (hsl 0 0 90)
                    :padding 8
                div ({})
                  <> (:text slot)
                    {} $ :color (hsl 280 80 70)
                  =< 8 nil
                  a $ {} (:style ui/link) (:inner-text "\"增加卡片")
                    :on-click $ fn (e d!)
                      .show create-plugin d! $ fn (text)
                        when-not (blank? text)
                          d! :template/add-card $ {} (:template-id template-id) (:text text)
                            :slot-id $ :id slot
                list-> ({})
                  -> slot :cards
                    map-kv $ fn (k card)
                      [] k $ comp-card card
                        = user-id $ :author-id card
                        fn (d!)
                          d! :template/remove-card $ {} (:template-id template-id)
                            :slot-id $ :id slot
                            :card-id $ :id card
                    .to-list
                if
                  empty? $ :cards slot
                  comp-placeholder "\"没有卡片"
                .render create-plugin
        |comp-workspace $ quote
          defcomp comp-workspace (states router templates game user)
            div
              {} $ :style
                merge ui/expand ui/column $ {} (:flex 1.5)
              comp-tabs (:name router)
                []
                  {} (:title "\"主页") (:name :home)
                  {} (:title "\"模板") (:name :templates)
              if
                = :templates $ :name router
                comp-templates (>> states :templates) templates $ :template-id game
                let
                    template $ get templates (:template-id game)
                    has-next? $ -> template :slots (.to-map) vals (.to-list)
                      map $ fn (x) (:cards x)
                      every? $ fn (xs)
                        not $ empty? xs
                  if (some? template)
                    div
                      {} $ :style
                        merge ui/expand ui/column $ {} (:padding 16)
                      div
                        {} $ :style ui/row-middle
                        comp-template-preview template
                        =< 16 nil
                        if has-next?
                          button $ {}
                            :style $ merge ui/button
                              {} (:color :white)
                                :background-color $ hsl 200 90 60
                            :inner-text "\"拼接句子"
                            :on-click $ fn (e d!) (d! :message/show-result nil)
                          <> "\"卡片种类不足" $ {}
                            :color $ hsl 10 80 76
                      =< nil 20
                      list->
                        {} $ :style ui/row
                        -> template :slots (.to-list)
                          .sort-by $ fn (pair)
                            :order $ last pair
                          map $ fn (pair)
                            let[] (k slot) pair $ [] k
                              comp-slot (>> states k) slot (:id template) (:id user)
                    div
                      {} $ :style
                        {} (:padding 16) (:font-family ui/font-fancy) (:font-weight 300)
                      <> "\"没有选择模板, 或者模板已不存在"
        |pattern-any $ quote
          def pattern-any $ new js/RegExp "\"." "\"g"
      :ns $ quote
        ns app.comp.workspace $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] respo.core :refer $ [] defcomp >> list-> <> span div a button
          [] app.config :as config
          [] app.comp.templates :refer $ [] comp-templates comp-template-preview
          [] respo-alerts.core :refer $ [] use-prompt
          [] app.comp :refer $ [] comp-tabs comp-placeholder
          [] feather.core :refer $ [] comp-icon
    |app.config $ {}
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ quote
          def site $ {} (:port 11023) (:title "\"Patlepat") (:icon "\"http://cdn.tiye.me/logo/topix.png") (:theme "\"#eeeeff") (:storage-key "\"patlepat") (:storage-file "\"storage.cirru")
        |slot-matcher $ quote
          def slot-matcher $ new js/RegExp slot-pattern
        |slot-pattern $ quote (def slot-pattern "\"\\{[\\w\\s\\u4e00-\\u9fa5]+\\}")
      :ns $ quote (ns app.config)
    |app.schema $ {}
      :defs $ {}
        |card $ quote
          def card $ {} (:id nil) (:text "\"") (:author-id nil) (:time nil)
        |database $ quote
          def database $ {}
            :sessions $ do session ({})
            :users $ do user ({})
            :messages $ do message ({})
            :templates $ do template ({})
            :game $ {} (:template-id nil)
        |message $ quote
          def message $ {} (:id nil) (:author-id nil) (:text "\"") (:type :message) (:time nil) (:blotted? false)
        |router $ quote
          def router $ {} (:name nil) (:title nil)
            :data $ {}
            :router nil
        |session $ quote
          def session $ {} (:user-id nil) (:id nil) (:nickname nil)
            :router $ do router
              {} (:name :home) (:data nil) (:router nil)
            :messages $ {}
        |slot $ quote
          def slot $ {} (:id nil) (:order 0) (:text "\"")
            :cards $ do card ({})
        |template $ quote
          def template $ {} (:id nil) (:text "\"")
            :pieces $ []
            :slots $ do slot ({})
        |user $ quote
          def user $ {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
      :ns $ quote (ns app.schema)
    |app.server $ {}
      :defs $ {}
        |*client-caches $ quote
          defatom *client-caches $ {}
        |*initial-db $ quote
          defatom *initial-db $ if
            path-exists? $ w-log storage-file
            do (println "\"Found local EDN data")
              merge schema/database $ parse-cirru-edn (read-file storage-file)
            do (println "\"Found no data") schema/database
        |*reader-reel $ quote (defatom *reader-reel @*reel)
        |*reel $ quote
          defatom *reel $ merge reel-schema
            {} (:base @*initial-db) (:db @*initial-db)
        |dispatch! $ quote
          defn dispatch! (op op-data sid)
            let
                op-id $ generate-id!
                op-time $ str (get-time!)
              if config/dev? $ println "\"Dispatch!" (str op) op-data sid
              if (= op :effect/persist) (persist-db!)
                reset! *reel $ reel-reducer @*reel updater op op-data sid op-id op-time config/dev?
        |get-backup-path! $ quote
          defn get-backup-path! () $ let
              now $ .extract (get-time!)
            join-path calcit-dirname "\"backups"
              str $ :month now
              str (:day now) "\"-snapshot.cirru"
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            let
                p? $ get-env "\"port"
                port $ if (some? p?) (parse-float p?) (:port config/site)
              run-server! port
              println $ str "\"Server started on port:" port
            do (; "\"init it before doing multi-threading") (identity @*reader-reel)
            set-interval 200 $ fn () (render-loop!)
            set-interval 600000 $ fn () (persist-db!)
            on-control-c on-exit!
        |on-exit! $ quote
          defn on-exit! () (persist-db!) (; println "\"exit code is...") (quit! 0)
        |persist-db! $ quote
          defn persist-db! () $ let
              file-content $ format-cirru-edn
                assoc (:db @*reel) :sessions $ {}
              storage-path storage-file
              backup-path $ get-backup-path!
            check-write-file! storage-path file-content
            check-write-file! backup-path file-content
        |reload! $ quote
          defn reload! () (println "\"Code updated..")
            if (not config/dev?) (raise "\"reloading only happens in dev mode")
            clear-twig-caches!
            reset! *reel $ refresh-reel @*reel @*initial-db updater
            sync-clients! @*reader-reel
        |render-loop! $ quote
          defn render-loop! () $ when
            not $ identical? @*reader-reel @*reel
            reset! *reader-reel @*reel
            sync-clients! @*reader-reel
        |run-server! $ quote
          defn run-server! (port)
            wss-serve! (&{} :port port)
              fn (data)
                key-match data
                    :connect sid
                    do (dispatch! :session/connect nil sid) (println "\"New client.")
                  (:message sid msg)
                    let
                        action $ parse-cirru-edn msg
                      case-default (:kind action) (println "\"unknown action:" action)
                        :op $ dispatch! (:op action) (:data action) sid
                  (:disconnect sid)
                    do (println "\"Client closed!") (dispatch! :session/disconnect nil sid)
                  _ $ println "\"unknown data:" data
        |storage-file $ quote
          def storage-file $ if (empty? calcit-dirname)
            str calcit-dirname $ :storage-file config/site
            str calcit-dirname "\"/" $ :storage-file config/site
        |sync-clients! $ quote
          defn sync-clients! (reel)
            wss-each! $ fn (sid)
              let
                  db $ :db reel
                  records $ :records reel
                  session $ get-in db ([] :sessions sid)
                  old-store $ or (get @*client-caches sid) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store
                    {} $ :key :id
                ; when config/dev? $ println "\"Changes for" sid "\":" changes (count records)
                if
                  not= changes $ []
                  do
                    wss-send! sid $ format-cirru-edn
                      {} (:kind :patch) (:data changes)
                    swap! *client-caches assoc sid new-store
            new-twig-loop!
      :ns $ quote
        ns app.server $ :require (app.schema :as schema)
          app.updater :refer $ updater
          cumulo-reel.core :refer $ reel-reducer refresh-reel reel-schema
          app.config :as config
          app.twig.container :refer $ twig-container
          recollect.diff :refer $ diff-twig
          wss.core :refer $ wss-serve! wss-send! wss-each!
          recollect.twig :refer $ new-twig-loop! clear-twig-caches!
          app.$meta :refer $ calcit-dirname
          calcit.std.fs :refer $ path-exists? check-write-file!
          calcit.std.time :refer $ set-interval
          calcit.std.date :refer $ Date get-time!
          calcit.std.path :refer $ join-path
    |app.twig.container $ {}
      :defs $ {}
        |twig-container $ quote
          defn twig-container (db session records)
            let
                logged-in? $ some? (:user-id session)
                router $ :router session
                base-data $ {} (:logged-in? logged-in?) (:session session)
                  :reel-length $ count records
                users $ :users db
              merge base-data $ if logged-in?
                {}
                  :user $ twig-user
                    get-in db $ [] :users (:user-id session)
                  :router $ assoc router :data
                    case-default (:name router) ({})
                      :home $ :pages db
                      :profile $ twig-members (:sessions db) (:users db)
                  :count $ count (:sessions db)
                  :color $ rand-hex-color!
                  :messages $ -> (:messages db)
                    map-kv $ fn (k message)
                      [] k $ assoc message :user
                        twig-user $ get users (:author-id message)
                  :templates $ :templates db
                  :game $ :game db
                {}
        |twig-members $ quote
          defn twig-members (sessions users)
            -> sessions $ map-kv
              fn (k session)
                [] k $ get-in users
                  [] (:user-id session) :name
      :ns $ quote
        ns app.twig.container $ :require
          [] app.twig.user :refer $ [] twig-user
          calcit.std.rand :refer $ rand-hex-color!
    |app.twig.user $ {}
      :defs $ {}
        |twig-user $ quote
          defn twig-user (user) (dissoc user :password)
      :ns $ quote (ns app.twig.user)
    |app.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (db op op-data sid op-id op-time)
            let
                session $ get-in db ([] :sessions sid)
                user-id $ :user-id session
                user $ if (some? user-id)
                  get-in db $ [] :users user-id
                  , nil
                f $ case-default op
                  fn (& args) (println "\"Unknown op:" op) db
                  :session/connect session/connect
                  :session/disconnect session/disconnect
                  :session/remove-message session/remove-message
                  :user/log-in user/log-in
                  :user/sign-up user/sign-up
                  :user/log-out user/log-out
                  :router/change router/change
                  :message/create message/create-message
                  :message/clear message/clear
                  :message/blot-out message/blot-out
                  :message/show-result message/show-result
                  :template/create template/create-template
                  :template/remove template/remove-template
                  :template/choose template/choose
                  :template/add-card template/add-card
                  :template/remove-card template/remove-card
              f db op-data sid op-id op-time session user
      :ns $ quote
        ns app.updater $ :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.schema :as schema)
          [] respo-message.updater :refer $ [] update-messages
          [] app.updater.message :as message
          [] app.updater.template :as template
    |app.updater.message $ {}
      :defs $ {}
        |blot-out $ quote
          defn blot-out (db op-data sid op-id op-time session user)
            assoc-in db ([] :messages op-data :blotted?) true
        |clear $ quote
          defn clear (db op-data sid op-id op-time session user)
            update db :messages $ fn (messages)
              assoc
                -> messages (.to-list)
                  .sort-by $ fn (pair)
                    negate $ :time (last pair)
                  take 5
                  pairs-map
                , op-id $ {} (:id op-id) (:text "\"清除了消息") (:time op-time) (:type :operation)
                  :author-id $ :user-id session
        |create-message $ quote
          defn create-message (db op-data sid op-id op-time session user)
            assoc-in db ([] :messages op-id)
              {} (:id op-id) (:text op-data)
                :author-id $ :user-id session
                :time op-time
                :type :message
        |show-result $ quote
          defn show-result (db op-data sid op-id op-time session user)
            let
                template-id $ get-in db ([] :game :template-id)
                template $ get-in db ([] :templates template-id)
                insertions $ -> template :slots (.to-list)
                  .sort-by $ fn (pair)
                    :order $ last pair
                  map $ fn (pair)
                    :text $ last
                      first $ :cards (last pair)
                content $ .join-str
                  interleave
                    concat (:pieces template) (repeat "\"" 10)
                    , insertions
                  , "\""
              -> db
                assoc-in ([] :messages op-id)
                  {} (:id op-id) (:time op-time) (:text content) (:type :quote)
                update-in ([] :templates template-id :slots)
                  fn (slots)
                    -> slots $ map-kv
                      fn (k slot)
                        [] k $ update slot :cards
                          fn (cards)
                            -> cards (.to-list) (rest) (pairs-map)
      :ns $ quote
        ns app.updater.message $ :require
    |app.updater.router $ {}
      :defs $ {}
        |change $ quote
          defn change (db op-data sid op-id op-time session user)
            assoc-in db ([] :sessions sid :router) op-data
      :ns $ quote (ns app.updater.router)
    |app.updater.session $ {}
      :defs $ {}
        |connect $ quote
          defn connect (db op-data sid op-id op-time s user)
            assoc-in db ([] :sessions sid)
              merge schema/session $ {} (:id sid)
        |disconnect $ quote
          defn disconnect (db op-data sid op-id op-time session user)
            update db :sessions $ fn (session) (dissoc session sid)
        |remove-message $ quote
          defn remove-message (db op-data sid op-id op-time session user)
            update-in db ([] :sessions sid :messages)
              fn (messages)
                dissoc messages $ :id op-data
      :ns $ quote
        ns app.updater.session $ :require ([] app.schema :as schema)
    |app.updater.template $ {}
      :defs $ {}
        |add-card $ quote
          defn add-card (db op-data sid op-id op-time session user)
            assoc-in db
              [] :templates (:template-id op-data) :slots (:slot-id op-data) :cards op-id
              {} (:id op-id)
                :text $ :text op-data
                :time op-time
                :author-id $ :user-id session
        |choose $ quote
          defn choose (db op-data sid op-id op-time session user)
            -> db
              assoc-in ([] :game :template-id) op-data
              assoc-in ([] :messages op-id)
                {} (:type :operation) (:id op-id) (:time op-time)
                  :author-id $ :user-id session
                  :text $ str "\"切换了模板: "
                    get-in db $ [] :templates op-data :text
        |create-template $ quote
          defn create-template (db op-data sid op-id op-time session user)
            let
                pieces $ re-split op-data slot-pattern
                slots $ re-find-all op-data slot-pattern
                data $ {} (:id op-id) (:text op-data) (:pieces pieces)
                  :slots $ -> slots
                    map-indexed $ fn (idx slot)
                      [] (str op-id "\"-" idx)
                        {}
                          :id $ str op-id "\"-" idx
                          :order idx
                          :text slot
                          :cards $ {}
                    pairs-map
              -> db
                assoc-in ([] :templates op-id) data
                assoc-in ([] :messages op-id)
                  {} (:type :operation) (:id op-id) (:time op-time)
                    :author-id $ :user-id session
                    :text $ str "\"创建了模板: " op-data
        |remove-card $ quote
          defn remove-card (db op-data sid op-id op-time session user)
            dissoc-in db $ [] :templates (:template-id op-data) :slots (:slot-id op-data) :cards (:card-id op-data)
        |remove-template $ quote
          defn remove-template (db op-data sid op-id op-time session user)
            -> db
              dissoc-in $ [] :templates op-data
              assoc-in ([] :messages op-id)
                {} (:type :operation) (:id op-id) (:time op-time)
                  :author-id $ :user-id session
                  :text $ str "\"删除了模板: "
                    get-in db $ [] :templates op-data :text
      :ns $ quote
        ns app.updater.template $ :require
          app.config :refer $ slot-pattern
          regex.core :refer $ re-find-all re-split
    |app.updater.user $ {}
      :defs $ {}
        |log-in $ quote
          defn log-in (db op-data sid op-id op-time s user)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ -> (:users db) (vals) (.to-list)
                  find $ fn (user)
                    and $ = username (:name user)
              update-in db ([] :sessions sid)
                fn (session)
                  if (some? maybe-user)
                    if
                      = (md5 password) (:password maybe-user)
                      assoc session :user-id $ :id maybe-user
                      update session :messages $ fn (messages)
                        assoc messages op-id $ {} (:id op-id)
                          :text $ str "\"Wrong password for " username
                    update session :messages $ fn (messages)
                      assoc messages op-id $ {} (:id op-id)
                        :text $ str "\"No user named: " username
        |log-out $ quote
          defn log-out (db op-data sid op-id op-time session user)
            assoc-in db ([] :sessions sid :user-id) nil
        |sign-up $ quote
          defn sign-up (db op-data sid op-id op-time s user)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ find
                  vals $ :users db
                  fn (user)
                    = username $ :name user
              if (some? maybe-user)
                update-in db ([] :sessions sid :messages)
                  fn (messages)
                    assoc messages op-id $ {} (:id op-id)
                      :text $ str "\"Name is taken: " username
                -> db
                  assoc-in ([] :sessions sid :user-id) op-id
                  assoc-in ([] :users op-id)
                    {} (:id op-id) (:name username) (:nickname username)
                      :password $ md5 password
                      :avatar nil
      :ns $ quote
        ns app.updater.user $ :require
          [] cumulo-util.core :refer $ [] find-first
          calcit.std.hash :refer $ md5
