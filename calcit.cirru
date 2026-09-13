
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |)
      :init-fn 'app.client/main!
      :mode :native
      :reload-fn 'app.client/reload!
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |alerts.calcit/ |respo-feather.calcit/
      :type-slots $ {}
    :server $ {} (:description |)
      :init-fn 'app.server/main!
      :mode :native
      :reload-fn 'app.server/reload!
      :feature-policy $ {}
      :modules $ [] |lilac/ |recollect/ |memof/ |ws-edn.calcit/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit-wss/ |calcit.std/ |calcit-regex/
      :type-slots $ {}
  :files $ {}
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *states
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *store nil
          :examples $ []
          :schema $ :: 'Dynamic
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect! ()
            let
                location $ unsafe-coerce js/location JsObject
                url-obj $ unsafe-coerce
                  url-parse (.-href location) true
                  , JsObject
                query $ unsafe-coerce (.-query url-obj) JsObject
                raw-host $ .-host query
                raw-port $ .-port query
                host $ if (js-present? raw-host) (unsafe-coerce raw-host String) (.-hostname location)
                port $ if (js-present? raw-port) (unsafe-coerce raw-port String) (&map:get config/site :port)
              ws-connect! (str |ws:// host |: port)
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event) (reset! *store nil)
                    js/console.error "|Lost connection!"
                  :on-data on-server-data
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println |Dispatch op op-data
            case-default op
              ws-send! $ {} (:kind :op) (:op op) (:data op-data)
              :states $ let[] (cursor s) op-data $ reset! *states (update-states @*states cursor s)
              :effect/connect $ connect!
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            connect!
            add-watch *store :changes $ fn (store prev) (render-app!)
            add-watch *states :changes $ fn (states prev) (render-app!)
            on-page-touch $ fn () $ if (nil? @*store) (connect!)
            println "|App started!"
          :examples $ []
          :schema $ :: 'Dynamic
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target (.querySelector js/document |.app)
          :examples $ []
          :schema $ :: 'Dynamic
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-server-data (data)
            case-default (&map:get data :kind)
              println "|unknown server data kind:" data
              :patch $ let
                  changes $ &map:get data :data
                when config/dev? $ js/console.log |Changes $ to-js-data changes
                reset! *store $ patch-twig @*store changes
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (some? client-errors) (hud! |error client-errors)
              do (hud! |inactive nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
                add-watch *store :changes $ fn (store prev) (render-app!)
                add-watch *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target
              comp-container (&map:get @*states :states) @*store
              , dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            let
                raw $ js/localStorage.getItem $ &map:get config/site :storage-key
              if (js-present? raw)
                do (println "|Found storage.")
                  dispatch! :user/log-in $ parse-cirru-edn $ unsafe-coerce raw String
                do $ println "|Found no storage."
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.client
          :require
            [] respo.core :refer $ [] render! clear-cache! realize-ssr!
            [] respo.cursor :refer $ [] update-states
            [] app.comp.container :refer $ [] comp-container
            [] cljs.reader :refer $ [] read-string
            [] app.schema :as schema
            [] app.config :as config
            [] ws-edn.client :refer $ [] ws-connect! ws-send!
            [] recollect.patch :refer $ [] patch-twig
            [] cumulo-util.core :refer $ [] on-page-touch
            [] |url-parse :default url-parse
            |bottom-tip :default hud!
            |./calcit.build-errors :default client-errors
    'app.comp $ %{} 'FileEntry
      :defs $ {}
        'comp-placeholder $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-placeholder (text)
            div
              {} $ :style $ merge ui/center
                {} (:padding 16) (:font-family ui/font-fancy)
                  :color $ hsl 0 0 80
                  :font-size 12
                  :font-style :italic
              <> text
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-tabs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-tabs (selected tabs)
            list->
              {} $ :style $ merge ui/row
                {} $ :padding "|8px 16px"
              -> tabs $ map $ fn (info)
                [] (&map:get info :name)
                  div
                    {}
                      :style $ merge
                        schema/style-map $ {} (:padding "|0 8px") (:font-family ui/font-fancy) (:font-weight 300) (:cursor :pointer) (:font-size 16)
                          :color $ hsl 0 0 70
                          :line-height |32px
                        schema/style-map $ if
                          = selected $ &map:get info :name
                          {} (:font-weight 500)
                            :color $ hsl 0 0 30
                          {}
                      :on-click $ fn (e d!)
                        d! :router/change $ {} $ :name (&map:get info :name)
                    <> $ &map:get info :title
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp
          :require ([] app.schema :as schema)
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp list-> >> <> span div
            [] app.config :as config
    'app.comp.chatroom $ %{} 'FileEntry
      :defs $ {}
        'DayjsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DayjsHost
            .format $ :: 'Fn $ {}
              :args $ [] 'String
              :return 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'comp-chatroom $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-chatroom (states messages styles)
            let
                cursor $ schema/read-field states :cursor
                state $ or
                  schema/read-field states :data
                  {} $ :draft |
                send-message $ fn (d!)
                  d! cursor $ assoc state :draft |
                  when
                    not $ blank? $ schema/read-field state :draft
                    d! :message/create $ trim $ schema/read-field state :draft
              div
                {} $ :style $ merge ui/expand ui/column
                  {} (:padding 8) (:position :relative)
                  , styles
                if
                  > (count messages) 20
                  a $ {}
                    :style $ merge ui/link $ {} (:position :absolute) (:top 8) (:right 12)
                    :inner-text "|清空"
                    :on-click $ fn (e d!) (d! :message/clear nil)
                if (empty? messages) (comp-placeholder "|没有消息")
                list->
                  {} $ :style $ merge ui/expand
                    {} $ :padding-bottom 400
                  loop
                      pairs $ -> (unsafe-coerce messages 'Map) (&map:to-list)
                        .sort-by $ fn (pair)
                          schema/read-field
                            option:unwrap-or (last pair) ({})
                            , :time
                      last-user-id nil
                      acc $ []
                    if (empty? pairs) acc $ let
                        pair $ option:unwrap-or (first pairs) []
                        message $ option:unwrap-or (last pair) ({})
                      recur (rest pairs)
                        schema/read-field message :author-id
                        conj acc $ []
                          schema/read-field message :time
                          comp-message message $ = last-user-id $ schema/read-field message :author-id
                div
                  {} $ :style $ merge (schema/style-map ui/row)
                    schema/style-map $ {} $ :align-items :flex-start
                  textarea $ {}
                    :style $ merge ui/expand ui/textarea
                    :placeholder "|text message..."
                    :value $ schema/read-field state :draft
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :draft $ option:unwrap-or (get e :value) |
                    :on-keydown $ fn (e d!)
                      when
                        = 13 $ option:unwrap-or (get e :key-code) 0
                        send-message d!
                        .!preventDefault $ option:unwrap-or (get e :event) (js-object)
                  =< 8 nil
                  a $ {} (:style ui/link) (:inner-text "|发送")
                    :on-click $ fn (e d!) (send-message d!)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-message (message merged?)
            case
              schema/read-field message :type
              :message $ div
                {} $ :style $ merge ui/row
                  {} $ :margin "|4px 0"
                span $ {}
                  :inner-text $ str $ or
                    schema/read-field
                      option:unwrap-or (get message :user) ({})
                      , :name
                    , |GUEST
                  :style $ merge
                    schema/style-map $ {} (:padding "|0px 8px")
                      :background-color $ hsl 0 0 94
                      :border-radius |12px
                    schema/style-map $ if merged?
                      {} $ :opacity 0
                      {}
                =< 8 nil
                div
                  {} $ :style ui/expand
                  if
                    schema/read-field message :blotted?
                    <>
                      schema/read-field message :id
                      {}
                        :color $ hsl 0 0 80
                        :text-decoration :line-through
                    <> $ schema/read-field message :text
                  =< 8 nil
                  <>
                    ->
                      unsafe-coerce
                        dayjs $ schema/read-field message :time
                        , DayjsHost
                      .format |HH:mm:ss
                    {}
                      :color $ hsl 0 0 80
                      :font-size 12
                      :font-family ui/font-fancy
                  if-not
                    schema/read-field message :blotted?
                    span
                      {} (:class-name |invisible-link)
                        :on-click $ fn (e d!)
                          d! :message/blot-out $ schema/read-field message :id
                      comp-i :x 10 $ hsl 0 80 80
              :quote $ div
                {} $ :style $ merge ui/row
                  {} (:align-items :flex-start) (:margin "|4px 0")
                <> "|生成了" $ {} $ :color (hsl 0 0 80)
                =< 8 nil
                div
                  {} $ :style ui/expand
                  div
                    {} $ :style $ {}
                      :background-color $ hsl 200 80 50
                      :color :white
                      :padding "|2px 8px"
                      :border-radius |6px
                      :font-size 20
                      :line-height |30px
                    <> $ schema/read-field message :text
              :operation $ div
                {} $ :style $ merge ui/center
                  {} $ :margin "|8px 0"
                <>
                  str
                    get-in message $ [] :user :name
                    , "| " $ schema/read-field message :text
                  {}
                    :color $ hsl 0 0 100
                    :background-color $ hsl 0 0 88
                    :padding "|0 16px"
                    :font-size 12
                    :line-height |20px
                    :border-radius |4px
              <> $ str "|Unknown message type: " $ schema/read-field message :type
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.chatroom
          :require ([] app.schema :as schema)
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp <> list-> span div textarea button a
            [] app.config :as config
            [] clojure.string :as string
            [] app.comp :refer $ [] comp-placeholder
            [] |dayjs :default dayjs
            [] feather.core :refer $ [] comp-icon comp-i
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (states store)
            let
                state $ &map:get states :data
                session $ &map:get store :session
                router $ &map:get store :router
                router-data $ &map:get router :data
                render-body $ fn () $ div
                  {} $ :style $ merge ui/expand ui/row
                  comp-workspace (>> states :workspace) router (&map:get store :templates) (&map:get store :game) (&map:get store :user)
                  comp-chatroom (>> states :chat) (&map:get store :messages)
                    {} $ :border-left $ str "|1px solid " (hsl 0 0 90)
              if (nil? store) (comp-offline)
                div
                  {} $ :style $ merge ui/global ui/fullscreen ui/column
                  comp-navigation (&map:get store :logged-in?) (&map:get store :count)
                  if (&map:get store :logged-in?)
                    case (&map:get router :name)
                      :home $ render-body
                      :templates $ render-body
                      :profile $ comp-profile (&map:get store :user) (&map:get router :data)
                      <> router
                    comp-login $ >> states :login
                  comp-status-color $ &map:get store :color
                  when dev? $ comp-inspect |Store store $ {} (:bottom 0) (:left 0) (:max-width |100%)
                  comp-messages
                    unsafe-coerce
                      option:unwrap-or
                        get-in store $ [] :session :messages
                        {}
                      :: Map String Dynamic
                    {}
                    fn (info d!)
                      d! :session/remove-message info
                  when dev? $ comp-reel (&map:get store :reel-length) ({})
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-offline ()
            div
              {} $ :style $ merge ui/global ui/fullscreen ui/column-dispersive
                {} $ :background-color $ &map:get config/site :theme
              div $ {} $ :style
                {} $ :height 0
              div $ {} $ :style
                {}
                  :background-image $ str "|url(" (&map:get config/site :icon) "|)"
                  :width 128
                  :height 128
                  :background-size :contain
              div
                {}
                  :style $ {} (:cursor :pointer) (:line-height |32px)
                  :on-click $ fn (e d!) (d! :effect/connect nil)
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} $ :style
              let
                  size 24
                {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8)
                  :background-color color
                  :border-radius |50%
                  :opacity 0.6
                  :pointer-events :none
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
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
    'app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-login (states)
            let
                cursor $ &map:get states :cursor
                state $ or (&map:get states :data) initial-state
              div
                {} $ :style $ merge (schema/style-map ui/flex) (schema/style-map ui/center)
                div ({})
                  div
                    {} $ :style $ {}
                    div ({})
                      input $ {} (:placeholder |Username)
                        :value $ &map:get state :username
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :username $ schema/read-field e :value
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder |Password)
                        :value $ &map:get state :password
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :password $ schema/read-field e :value
                  =< nil 8
                  div
                    {} $ :style $ {} (:text-align :right)
                    span $ {} (:inner-text "|Sign up")
                      :style $ merge ui/link
                      :on-click $ on-submit (&map:get state :username) (&map:get state :password) true
                    =< 8 nil
                    span $ {} (:inner-text "|Log in")
                      :style $ merge ui/link
                      :on-click $ on-submit (&map:get state :username) (&map:get state :password) false
          :examples $ []
          :schema $ :: 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state
            {} (:username |) (:password |)
          :examples $ []
          :schema $ :: 'Dynamic
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            fn (e dispatch!)
              dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
              js/localStorage.setItem (&map:get config/site :storage-key)
                format-cirru-edn $ [] username password
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            [] respo.core :refer $ [] defcomp <> div input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.schema :as schema
            [] app.config :as config
    'app.comp.navigation $ %{} 'FileEntry
      :defs $ {} $ 'comp-navigation
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-navigation (logged-in? count-members)
            div
              {} $ :style $ merge ui/row-center
                {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                  :border-bottom $ str "|1px solid " $ hsl 0 0 0 0.1
                  :font-family ui/font-fancy
              div
                {}
                  :on-click $ fn (e d!)
                    d! :router/change $ {} $ :name :home
                  :style $ {} $ :cursor :pointer
                <> (&map:get config/site :title) nil
              div
                {}
                  :style $ {} $ :cursor |pointer
                  :on-click $ fn (e d!)
                    d! :router/change $ {} $ :name :profile
                <> $ if logged-in? |Me |Guest
                =< 8 nil
                <> count-members
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.navigation
          :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp <> span div
            [] app.config :as config
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {} $ 'comp-profile
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-profile (user members)
            div
              {} $ :style $ merge ui/flex
                {} $ :padding 16
              div
                {} $ :style $ {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " $ &map:get user :name
              =< nil 16
              div
                {} $ :style ui/row
                <> |Members:
                =< 8 nil
                list->
                  {} $ :style ui/row
                  -> members
                    map-kv $ fn (k username)
                      [] k $ div
                        {} $ :style $ {} (:padding "|0 8px")
                          :border $ str "|1px solid " $ hsl 0 0 80
                          :border-radius |16px
                          :margin "|0 4px"
                        <> username
                    .to-list
              =< nil 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!)
                      js/location.replace $ str js/location.origin |?time= $ .now js/Date
                  <> |Refresh
                =< 8 nil
                button
                  {}
                    :style $ merge ui/button $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!) (dispatch! :user/log-out nil)
                      js/localStorage.removeItem $ &map:get config/site :storage-key
                  <> "|Log out"
              =< nil 48
              a $ {}
                :href |https://github.com/TopixIM/patlepat
                :inner-text "|GitHub Address"
                :target |_blank
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.profile
          :require
            [] respo-ui.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> <> span div button a
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
    'app.comp.templates $ %{} 'FileEntry
      :defs $ {}
        'comp-template-preview $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-template-preview (template)
            list-> ({})
              ->
                interleave
                  concat
                    schema/read-field template :pieces
                    repeat | 10
                  ->
                    schema/read-field template :slots
                    &map:to-list
                    map $ fn (pair)
                      schema/read-field
                        option:unwrap-or (last pair) ({})
                        , :text
                map-indexed $ fn (idx item)
                  [] idx $ if
                    .!test config/slot-matcher item
                    <> item $ {}
                      :color $ hsl 200 80 70
                      :font-size 24
                      :margin "|0 4px"
                      :vertical-align :bottom
                    <> item $ {} $ :color (hsl 0 0 50)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-templates $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-templates (states templates selected)
            let
                template-editor $ use-prompt (>> states :editor)
                  {} $ :text "|编辑模板, 用 {什么} 来插入填空位置"
                remove-plugin $ use-confirm (>> states :remove)
                  {} $ :text "|确认真的要删除模板吗"
              div
                {} $ :style $ merge ui/expand ui/column
                div
                  {} $ :style ui/row-parted
                  span $ {}
                  a $ {} (:inner-text "|添加模板") (:style ui/link)
                    :on-click $ fn (e d!)
                      .show template-editor d! $ fn (text) (d! :template/create text)
                list->
                  {} $ :style $ {} (:padding "|0px 4px")
                  -> templates
                    map-kv $ fn (k template)
                      [] k $ div
                        {} $ :style $ merge (schema/style-map ui/row-parted)
                          schema/style-map $ {} (:padding "|4px 8px")
                            :border-bottom $ str "|1px solid " $ hsl 0 0 94
                          schema/style-map $ if
                            = selected $ schema/read-field template :id
                            {} $ :background-color $ hsl 0 0 97
                            {}
                        div ({})
                          comp-template-preview template
                          div ({})
                            <>
                              schema/read-field template :text
                              {}
                                :color $ hsl 0 0 70
                                :font-size 10
                        if-not
                          = selected $ schema/read-field template :id
                          div ({})
                            a $ {} (:style ui/link) (:inner-text "|使用该模板")
                              :on-click $ fn (e d!)
                                d! :template/choose $ schema/read-field template :id
                            =< 8 nil
                            a $ {} (:style ui/link) (:inner-text "|删除")
                              :on-click $ fn (e d!)
                                .show remove-plugin d! $ fn () $ d! :template/remove
                                  schema/read-field template :id
                    .to-list
                if (empty? templates) (comp-placeholder "|No tempaltes")
                .render template-editor
                .render remove-plugin
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.templates
          :require ([] app.schema :as schema)
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp list-> >> <> span div a
            [] app.config :as config
            [] respo-alerts.core :refer $ [] use-prompt use-confirm
            [] app.comp :refer $ [] comp-placeholder
    'app.comp.workspace $ %{} 'FileEntry
      :defs $ {}
        'comp-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-card (card mine? on-remove)
            div
              {} $ :style $ {} (:display :inline-block) (:padding "|8px 16px")
                :border $ str "|1px solid " $ hsl 0 0 90
                :margin |4px
              if mine?
                span ({})
                  <> $ schema/read-field card :text
                  <> "|(我的)" $ {} (:font-size 12)
                    :color $ hsl 0 0 80
                    :line-height |28px
                    :vertical-align :middle
                  =< 8 nil
                  comp-icon :x
                    {}
                      :color $ hsl 0 80 60
                      :cursor :pointer
                      :font-size 12
                    fn (e d!) (on-remove d!)
                <>
                  unsafe-coerce
                    .!replace
                      schema/read-field card :text
                      , pattern-any |*
                    , String
                  {} (:font-size 24) (:line-height |28px) (:font-family ui/font-code) (:vertical-align :middle)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-slot $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-slot (states slot template-id user-id)
            let
                create-plugin $ use-prompt (>> states :create)
                  {} (:text "|Add card") (:button-text "|Add it")
              div
                {} $ :style $ merge ui/expand ui/column
                  {}
                    :border-left $ str "|1px solid " $ hsl 0 0 90
                    :padding 8
                div ({})
                  <>
                    schema/read-field slot :text
                    {} $ :color $ hsl 280 80 70
                  =< 8 nil
                  a $ {} (:style ui/link) (:inner-text "|增加卡片")
                    :on-click $ fn (e d!)
                      .show create-plugin d! $ fn (text)
                        when-not (blank? text)
                          d! :template/add-card $ {} (:template-id template-id) (:text text)
                            :slot-id $ schema/read-field slot :id
                list-> ({})
                  ->
                    schema/read-field slot :cards
                    map-kv $ fn (k card)
                      [] k $ comp-card card
                        = user-id $ schema/read-field card :author-id
                        fn (d!)
                          d! :template/remove-card $ {} (:template-id template-id)
                            :slot-id $ schema/read-field slot :id
                            :card-id $ schema/read-field card :id
                    .to-list
                if
                  empty? $ schema/read-field slot :cards
                  comp-placeholder "|没有卡片"
                .render create-plugin
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-workspace $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-workspace (states router templates game user)
            div
              {} $ :style $ merge (schema/style-map ui/expand) (schema/style-map ui/column)
                schema/style-map $ {} $ :flex 1.5
              comp-tabs
                schema/read-field router :name
                []
                  {} (:title "|主页") (:name :home)
                  {} (:title "|模板") (:name :templates)
              if
                = :templates $ schema/read-field router :name
                comp-templates (>> states :templates) templates $ schema/read-field game :template-id
                let
                    maybe-template $ get templates $ schema/read-field game :template-id
                    template $ option:unwrap-or maybe-template $ {}
                    has-next? $ ->
                      schema/read-field template :slots
                      &map:to-list
                      map $ fn (pair)
                        schema/read-field (last pair) :cards
                      every? $ fn (xs)
                        not $ empty? xs
                  if (option:some? maybe-template)
                    div
                      {} $ :style $ merge (schema/style-map ui/expand) (schema/style-map ui/column)
                        schema/style-map $ {} $ :padding 16
                      div
                        {} $ :style ui/row-middle
                        comp-template-preview template
                        =< 16 nil
                        if has-next?
                          button $ {}
                            :style $ merge ui/button $ {} (:color :white)
                              :background-color $ hsl 200 90 60
                            :inner-text "|拼接句子"
                            :on-click $ fn (e d!)
                              d! :message/show-result nil
                          <> "|卡片种类不足" $ {} $ :color (hsl 10 80 76)
                      =< nil 20
                      list->
                        {} $ :style ui/row
                        ->
                          schema/read-field template :slots
                          &map:to-list
                          .sort-by $ fn (pair)
                            schema/read-field
                              option:unwrap-or (last pair) ({})
                              , :order
                          map $ fn (pair)
                            let[] (k slot) pair $ [] k $ comp-slot (>> states k) slot
                              schema/read-field template :id
                              schema/read-field user :id
                    div
                      {} $ :style $ {} (:padding 16) (:font-family ui/font-fancy) (:font-weight 300)
                      <> "|没有选择模板, 或者模板已不存在"
          :examples $ []
          :schema $ :: 'Dynamic
        'pattern-any $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def pattern-any (new js/RegExp |. |g)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.workspace
          :require ([] app.schema :as schema)
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp >> list-> <> span div a button
            [] app.config :as config
            [] app.comp.templates :refer $ [] comp-templates comp-template-preview
            [] respo-alerts.core :refer $ [] use-prompt
            [] app.comp :refer $ [] comp-tabs comp-placeholder
            [] feather.core :refer $ [] comp-icon
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:port 11023) (:title |Patlepat)
              :icon |http://cdn.tiye.me/logo/topix.png
              :theme |#eeeeff
              :storage-key |patlepat
              :storage-file |storage.cirru
          :examples $ []
          :schema $ :: 'Dynamic
        'slot-matcher $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def slot-matcher (new js/RegExp slot-pattern)
          :examples $ []
          :schema $ :: 'Dynamic
        'slot-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def slot-pattern |\{[\w\s\u4e00-\u9fa5]+\}
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def card
            {} (:id nil) (:text |) (:author-id nil) (:time nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            {}
              :sessions $ do session $ {}
              :users $ do user $ {}
              :messages $ do message $ {}
              :templates $ do template $ {}
              :game $ {} $ :template-id nil
          :examples $ []
          :schema $ :: 'Dynamic
        'message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def message
            {} (:id nil) (:author-id nil) (:text |) (:type :message) (:time nil) (:blotted? false)
          :examples $ []
          :schema $ :: 'Dynamic
        'read-field $ %{} 'CodeEntry
          :doc "|Read a field from an open map or nominal struct boundary."
          :code $ quote $ defn read-field (value field)
            if (struct? value) (&struct:get value field) (&map:get value field)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Tag
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            {} (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ :: 'Dynamic
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ do router $ {} (:name :home) (:data nil) (:router nil)
              :messages $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'slot $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def slot
            {} (:id nil) (:order 0) (:text |)
              :cards $ do card $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'style-map $ %{} 'CodeEntry
          :doc "|Normalize heterogeneous Respo style maps at the UI boundary."
          :code $ quote $ defn style-map (value)
            unsafe-coerce value $ :: Map Tag Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Map)
            :args $ [] 'Dynamic
        'template $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def template
            {} (:id nil) (:text |)
              :pieces $ []
              :slots $ do slot $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def user
            {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *client-caches ({})
          :examples $ []
          :schema $ :: 'Dynamic
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *initial-db
            if
              path-exists? $ w-log storage-file
              do
                println "|Found local EDN data"
                merge schema/database $ parse-cirru-edn $ read-file storage-file
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ :: 'Dynamic
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Ref 'cumulo-reel.core/ReelState
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            struct-with reel-schema (:base @*initial-db) (:db @*initial-db)
          :examples $ []
          :schema $ :: 'Ref 'cumulo-reel.core/ReelState
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op op-data sid)
            let
                op-id $ generate-id!
                op-time $ -> (get-time!) (.timestamp)
              if config/dev? $ println |Dispatch! (str op) op-data sid
              if (= op :effect/persist) (persist-db!)
                let
                    action $ case-default op (:: op op-data)
                      :session/connect $ :: :session/connect
                      :session/disconnect $ :: :session/disconnect
                      :user/log-out $ :: :user/log-out op-data
                  reset! *reel $ reel-reducer @*reel updater action sid op-id op-time config/dev?
          :examples $ []
          :schema $ :: 'Dynamic
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-backup-path! ()
            let
                now $ extract-time $ get-time!
              join-path calcit-dirname |backups
                str $ &map:get now :month
                str (&map:get now :day) |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            let
                port $ option:unwrap-or
                  option:map (get-env |port) parse-float
                  &map:get config/site :port
              run-server! port
              println $ str "|Server started on port:" port
            do
              ; "|init it before doing multi-threading"
              identity @*reader-reel
            set-interval 200 $ fn () $ render-loop!
            set-interval 600000 $ fn () $ persist-db!
            on-control-c on-exit!
          :examples $ []
          :schema $ :: 'Dynamic
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                file-content $ format-cirru-edn $ assoc (:db @*reel) :sessions ({})
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated..")
            if (not config/dev?)
              raise "|reloading only happens in dev mode"
            clear-twig-caches!
            reset! *reel $ refresh-reel @*reel @*initial-db updater
            sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            wss-serve! (&{} :port port)
              fn (data)
                match data
                  (:connect sid)
                    do (dispatch! :session/connect nil sid) (println "|New client.")
                  (:message sid msg)
                    let
                        action $ parse-cirru-edn msg
                      case-default (&map:get action :kind) (println "|unknown action:" action)
                        :op $ dispatch! (&map:get action :op) (&map:get action :data) sid
                  (:disconnect sid)
                    do (println "|Client closed!")
                      dispatch! :session/disconnect nil sid
                  _ $ println "|unknown data:" data
          :examples $ []
          :schema $ :: 'Dynamic
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            if (empty? calcit-dirname)
              str calcit-dirname $ &map:get config/site :storage-file
              str calcit-dirname |/ $ &map:get config/site :storage-file
          :examples $ []
          :schema $ :: 'Dynamic
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel)
            begin-twig-frame!
            wss-each! $ fn (sid)
              let
                  db $ :db reel
                  records $ :records reel
                  session $ get-in db $ [] :sessions sid
                  old-store $ or (get @*client-caches sid) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store $ {} (:key :id)
                ; when config/dev? $ println "|Changes for" sid |: changes $ count records
                if
                  not= changes $ []
                  do
                    wss-send! sid $ format-cirru-edn $ {} (:kind :patch) (:data changes)
                    swap! *client-caches assoc sid new-store
            finish-twig-frame!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'cumulo-reel.core/ReelState
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.server
          :require (app.schema :as schema)
            app.updater :refer $ updater
            cumulo-reel.core :refer $ reel-reducer refresh-reel reel-schema
            app.config :as config
            app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            recollect.twig :refer $ clear-twig-caches!
            recollect.memo :refer $ begin-twig-frame! finish-twig-frame!
            app.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
            calcit.std.time :refer $ set-interval
            calcit.std.date :refer $ Date get-time! extract-time
            calcit.std.path :refer $ join-path
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db session records)
            let
                session-map $ unsafe-coerce
                  option:unwrap-or session $ {}
                  , 'Map
                logged-in? $ some? $ &map:get session-map :user-id
                router $ unsafe-coerce (&map:get session-map :router) 'Map
                base-data $ {} (:logged-in? logged-in?) (:session session-map)
                  :reel-length $ count records
                users $ &map:get db :users
              merge base-data $ if logged-in?
                {}
                  :user $ twig-user $ option:unwrap-or
                    get-in db $ [] :users $ &map:get session-map :user-id
                    {}
                  :router $ assoc router :data $ case-default (&map:get router :name) ({})
                    :home $ &map:get db :pages
                    :profile $ twig-members (&map:get db :sessions) (&map:get db :users)
                  :count $ count $ &map:get db :sessions
                  :color $ rand-hex-color!
                  :messages $ -> (&map:get db :messages)
                    map-kv $ fn (k message)
                      [] k $ assoc message :user $ twig-user
                        option:unwrap-or
                          get users $ &map:get message :author-id
                          {}
                  :templates $ &map:get db :templates
                  :game $ &map:get db :game
                , nil
          :examples $ []
          :schema $ :: 'Dynamic
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            -> sessions (&map:to-list)
              .map-pair $ fn (k session)
                [] k $ option:unwrap-or
                  get-in users $ [] (&map:get session :user-id) :name
                  , |
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require
            [] app.twig.user :refer $ [] twig-user
            calcit.std.rand :refer $ rand-hex-color!
    'app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user) (dissoc user :password)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.user
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
            let
                session-data $ unsafe-coerce
                  option:unwrap-or
                    get-in db $ [] :sessions sid
                    {}
                  , 'Map
                user-id $ &map:get session-data :user-id
                user-data $ if (nil? user-id) nil $ option:unwrap-or
                  get-in db $ [] :users user-id
                  , nil
              match op
                (:session/connect) (session/connect db nil sid op-id op-time session-data user-data)
                (:session/disconnect)
                  session/disconnect db nil sid op-id op-time session-data user-data
                (:session/remove-message op-data)
                  session/remove-message db op-data sid op-id op-time session-data user-data
                (:user/log-in op-data) (user/log-in db op-data sid op-id op-time session-data user-data)
                (:user/sign-up op-data) (user/sign-up db op-data sid op-id op-time session-data user-data)
                (:user/log-out op-data) (user/log-out db op-data sid op-id op-time session-data user-data)
                (:router/change op-data) (router/change db op-data sid op-id op-time session-data user-data)
                (:message/create op-data)
                  message/create-message db op-data sid op-id op-time session-data user-data
                (:message/clear op-data) (message/clear db op-data sid op-id op-time session-data user-data)
                (:message/blot-out op-data)
                  message/blot-out db op-data sid op-id op-time session-data user-data
                (:message/show-result op-data)
                  message/show-result db op-data sid op-id op-time session-data user-data
                (:template/create op-data)
                  template/create-template db op-data sid op-id op-time session-data user-data
                (:template/remove op-data)
                  template/remove-template db op-data sid op-id op-time session-data user-data
                (:template/choose op-data) (template/choose db op-data sid op-id op-time session-data user-data)
                (:template/add-card op-data)
                  template/add-card db op-data sid op-id op-time session-data user-data
                (:template/remove-card op-data)
                  template/remove-card db op-data sid op-id op-time session-data user-data
                _ $ do (eprintln "|Unknown op:" op) db
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            [] app.updater.session :as session
            [] app.updater.user :as user
            [] app.updater.router :as router
            [] app.schema :as schema
            [] respo-message.updater :refer $ [] update-messages
            [] app.updater.message :as message
            [] app.updater.template :as template
    'app.updater.message $ %{} 'FileEntry
      :defs $ {}
        'blot-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn blot-out (db op-data sid op-id op-time session user)
            assoc-in db ([] :messages op-data :blotted?) true
          :examples $ []
          :schema $ :: 'Dynamic
        'clear $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn clear (db op-data sid op-id op-time session user)
            update db :messages $ fn (messages)
              assoc
                -> (unsafe-coerce messages 'Map) (&map:to-list)
                  .sort-by $ fn (pair)
                    negate $ schema/read-field
                      option:unwrap-or (last pair) ({})
                      , :time
                  take 5
                  pairs-map
                , op-id $ {} (:id op-id) (:text "|清除了消息") (:time op-time) (:type :operation)
                  :author-id $ schema/read-field session :user-id
          :examples $ []
          :schema $ :: 'Dynamic
        'create-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-message (db op-data sid op-id op-time session user)
            assoc-in db ([] :messages op-id)
              {} (:id op-id) (:text op-data)
                :author-id $ schema/read-field session :user-id
                :time op-time
                :type :message
          :examples $ []
          :schema $ :: 'Dynamic
        'show-result $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn show-result (db op-data sid op-id op-time session user)
            let
                template-id $ option:unwrap-or
                  get-in db $ [] :game :template-id
                  , nil
                template $ option:unwrap-or
                  get-in db $ [] :templates template-id
                  {}
                insertions $ ->
                  schema/read-field template :slots
                  &map:to-list
                  .sort-by $ fn (pair)
                    schema/read-field
                      option:unwrap-or (last pair) ({})
                      , :order
                  map $ fn (pair)
                    let
                        slot $ option:unwrap-or (last pair) ({})
                        cards $ schema/read-field slot :cards
                        card-pair $ option:unwrap-or
                          first $ &map:to-list cards
                          , []
                        card $ option:unwrap-or (last card-pair) {}
                      schema/read-field card :text
                content $ join-str
                  interleave
                    concat
                      schema/read-field template :pieces
                      repeat | 10
                    , insertions
                  , |
              -> db
                assoc-in ([] :messages op-id)
                  {} (:id op-id) (:time op-time) (:text content) (:type :quote)
                update-in ([] :templates template-id :slots)
                  fn (slots)
                    ->
                      unsafe-coerce
                        option:unwrap-or slots $ {}
                        , 'Map
                      map-kv $ fn (k slot)
                        [] k $ update slot :cards $ fn (cards)
                          -> (unsafe-coerce cards 'Map) (&map:to-list) (rest) (pairs-map)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.message
          :require $ [] app.schema :as schema
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db op-data sid op-id op-time session user)
            assoc-in db ([] :sessions sid :router) op-data
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db op-data sid op-id op-time s user)
            assoc-in db ([] :sessions sid)
              merge schema/session $ {} $ :id sid
          :examples $ []
          :schema $ :: 'Dynamic
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db op-data sid op-id op-time session user)
            update db :sessions $ fn (session) (dissoc session sid)
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db op-data sid op-id op-time session user)
            update-in db ([] :sessions sid :messages)
              fn (messages)
                dissoc
                  option:unwrap-or messages $ {}
                  &map:get op-data :id
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ [] app.schema :as schema
    'app.updater.template $ %{} 'FileEntry
      :defs $ {}
        'add-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-card (db op-data sid op-id op-time session user)
            assoc-in db
              [] :templates (&map:get op-data :template-id) :slots (&map:get op-data :slot-id) :cards op-id
              {} (:id op-id)
                :text $ &map:get op-data :text
                :time op-time
                :author-id $ &map:get session :user-id
          :examples $ []
          :schema $ :: 'Dynamic
        'choose $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn choose (db op-data sid op-id op-time session user)
            -> db
              assoc-in ([] :game :template-id) op-data
              assoc-in ([] :messages op-id)
                {} (:type :operation) (:id op-id) (:time op-time)
                  :author-id $ &map:get session :user-id
                  :text $ str "|切换了模板: " $ get-in db ([] :templates op-data :text)
          :examples $ []
          :schema $ :: 'Dynamic
        'create-template $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-template (db op-data sid op-id op-time session user)
            let
                pieces $ re-split op-data slot-pattern
                slots $ re-find-all op-data slot-pattern
                data $ {} (:id op-id) (:text op-data) (:pieces pieces)
                  :slots $ -> slots
                    map-indexed $ fn (idx slot)
                      [] (str op-id |- idx)
                        {}
                          :id $ str op-id |- idx
                          :order idx
                          :text slot
                          :cards $ {}
                    pairs-map
              -> db
                assoc-in ([] :templates op-id) data
                assoc-in ([] :messages op-id)
                  {} (:type :operation) (:id op-id) (:time op-time)
                    :author-id $ &map:get session :user-id
                    :text $ str "|创建了模板: " op-data
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-card (db op-data sid op-id op-time session user)
            dissoc-in db $ [] :templates (&map:get op-data :template-id) :slots (&map:get op-data :slot-id) :cards $ &map:get op-data :card-id
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-template $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-template (db op-data sid op-id op-time session user)
            -> db
              dissoc-in $ [] :templates op-data
              assoc-in ([] :messages op-id)
                {} (:type :operation) (:id op-id) (:time op-time)
                  :author-id $ &map:get session :user-id
                  :text $ str "|删除了模板: " $ get-in db ([] :templates op-data :text)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.template
          :require
            app.config :refer $ slot-pattern
            regex.core :refer $ re-find-all re-split
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'as-user-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-user-map (user) (unsafe-coerce user 'Map)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Map)
            :args $ [] 'Dynamic
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db op-data sid op-id op-time s user)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ -> (&map:get db :users) (vals) (.to-list)
                  find $ fn (user)
                    = username $ &map:get (as-user-map user) :name
              update-in db ([] :sessions sid)
                fn (session)
                  if (option:some? maybe-user)
                    if
                      = (md5 password)
                        &map:get
                          as-user-map $ option:unwrap maybe-user
                          , :password
                      assoc
                        option:unwrap-or session $ {}
                        , :user-id $ &map:get
                          as-user-map $ option:unwrap maybe-user
                          , :id
                      update
                        option:unwrap-or session $ {}
                        , :messages $ fn (messages)
                          assoc
                            option:unwrap-or messages $ {}
                            , op-id $ {} (:id op-id)
                              :text $ str "|Wrong password for " username
                    update
                      option:unwrap-or session $ {}
                      , :messages $ fn (messages)
                        assoc
                          option:unwrap-or messages $ {}
                          , op-id $ {} (:id op-id)
                            :text $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Dynamic
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db op-data sid op-id op-time session user)
            assoc-in db ([] :sessions sid :user-id) nil
          :examples $ []
          :schema $ :: 'Dynamic
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db op-data sid op-id op-time s user)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ find
                  -> (&map:get db :users) vals .to-list
                  fn (user)
                    = username $ &map:get (as-user-map user) :name
              if (option:some? maybe-user)
                update-in db ([] :sessions sid :messages)
                  fn (messages)
                    assoc
                      option:unwrap-or messages $ {}
                      , op-id $ {} (:id op-id)
                        :text $ str "|Name is taken: " username
                -> db
                  assoc-in ([] :sessions sid :user-id) op-id
                  assoc-in ([] :users op-id)
                    {} (:id op-id) (:name username) (:nickname username)
                      :password $ md5 password
                      :avatar nil
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require
            [] cumulo-util.core :refer $ [] find-first
            calcit.std.hash :refer $ md5
