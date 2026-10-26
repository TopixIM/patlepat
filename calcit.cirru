
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |recollect/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |alerts.calcit/ |respo-feather.calcit/ |js-ffi/
      :type-slots $ {}
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ [] |recollect/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit-wss/ |calcit.std/ |calcit-regex/
      :type-slots $ {}
  :files $ {}
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *states
            {} $ :cursor $ []
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store (Option :none)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Option 'app.schema/Store
        '*wire-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *wire-store nil
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect! () (reset! *wire-store nil)
            reset! *store $ Option :none
            ws-connect! (connection-url)
              {}
                :on-open $ fn (event) (simulate-login!)
                :on-close $ fn (event) (reset! *wire-store nil)
                  reset! *store $ Option :none
                  host/console-error! |Lost-connection
                :on-data on-server-data
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'connection-url $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connection-url ()
            let
                location $ browser/location-host
                query $ host/search-params-create $ .-search location
                server-host $ .unwrap-or (host/search-params-get query |host) (.-hostname location)
                server-port $ .unwrap-or (host/search-params-get query |port)
                  str $ :port config/site
              str |ws:// server-host |: server-port
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (raw)
            let
                op $ schema/decode-op raw
              match op
                (:states cursor state)
                  reset! *states $ update-state-tree @*states cursor state
                (:effect/connect) (connect!)
                _ $ ws-send! $ schema/encode-op op
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            connect!
            add-watch! *store :changes $ fn (store previous) (render-app!)
            add-watch! *states :changes $ fn (states previous) (render-app!)
            on-page-touch $ fn () $ match @*store
              (:none) (connect!)
              (:some store) &unit
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ dom/query-selector |.app
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ []
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-server-data (data)
            try
              if (enum? data)
                match data
                  (:patch raw-changes)
                    let
                        changes $ decode-changes raw-changes
                        result $ try-patch-twig @*wire-store changes
                      match result
                        (:ok candidate)
                          let
                              decoded $ schema/decode-store candidate
                            reset! *wire-store candidate
                            reset! *store $ Option :some decoded
                        (:err error)
                          raise $ patch-error-message error
                  _ $ raise |Unsupported-server-message
                raise |Expected-server-message-enum
              fn (error)
                host/console-error! $ str |Rejected-server-patch: error
                hud! |error error
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (js-present? client-errors) (hud! |error client-errors)
              do (hud! |inactive nil) (remove-watch! *store :changes) (remove-watch! *states :changes) (clear-cache!) (render-app!)
                add-watch! *store :changes $ fn (store previous) (render-app!)
                add-watch! *states :changes $ fn (states previous) (render-app!)
                println |Code-updated
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! (mount-target)
              fn () $ comp-container
                decode-map-as @*states $ :: 'Map 'Dynamic 'Dynamic
                , @*store
              , dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            match
              browser/storage-get $ :storage-key config/site
              (:none) &unit
              (:some content)
                try
                  ws-send! $ schema/encode-op $ schema/Op :user/log-in
                    schema/decode-credentials $ parse-cirru-edn content
                  fn (error) (host/console-error! |Invalid-saved-login)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.client
          :require
            respo.core :refer $ render-with! clear-cache!
            respo.ffi.browser :as dom
            respo.cursor :refer $ update-state-tree
            app.comp.container :refer $ comp-container
            app.schema :as schema
            app.config :as config
            ws-edn.client :refer $ ws-connect! ws-send!
            recollect.patch :refer $ try-patch-twig patch-error-message
            recollect.schema :refer $ decode-changes
            cumulo-util.core :refer $ on-page-touch
            js-ffi.browser :as browser
            js-ffi.shared :as host
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
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
        'comp-tabs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-tabs (selected tabs)
            list->
              {} $ :style $ merge ui/row
                {} $ :padding "|8px 16px"
              -> tabs $ map $ fn (info)
                [] (:name info)
                  div
                    {}
                      :style $ merge
                        {} (:padding "|0 8px") (:font-family ui/font-fancy) (:font-weight 300) (:cursor :pointer) (:font-size 16)
                          :color $ hsl 0 0 70
                          :line-height |32px
                        if
                          = selected $ :name info
                          {} (:font-weight 500)
                            :color $ hsl 0 0 30
                          {}
                      :on-click $ fn (e d!)
                        d! $ schema/Op :router/change $ assoc schema/router :name (:name info)
                    <> $ :title info
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Tag $ :: 'List 'app.schema/Tab
        'event-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-value (event)
            decode-map-as
              .unwrap-or (get event :value) |
              , 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |checked-text-input)
            :code $ quote $ do
              assert= "|小猫 🌸" $ event-value $ {} (:value "|小猫 🌸")
              assert= | $ event-value $ {} (:value |)
              assert= | $ event-value $ {}
            :tags $ #{} :migration :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp
          :require (app.schema :as schema)
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp list-> >> <> span div
            app.config :as config
    'app.comp.chatroom $ %{} 'FileEntry
      :defs $ {}
        'comp-chatroom $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-chatroom (states messages styles)
            let
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ match (get states :data)
                  (:none) (schema/ChatState :draft |)
                  (:some raw)
                    decode-map-as (schema/data-map raw) 'app.schema/ChatState
                ordered-messages $ -> messages
                  map-list-kv $ fn (id message) message
                  .sort-by $ fn (message) (:time message)
                send-message $ fn (d!)
                  hint-fn $ {}
                    :args $ [] $ :: 'Fn
                      {}
                        :args $ [] 'app.schema/Op
                        :return 'Unit
                    :return 'Unit
                  d! $ schema/Op :states cursor $ assoc state :draft |
                  when
                    not $ blank? $ :draft state
                    d! $ schema/Op :message/create $ trim (:draft state)
                  , &unit
              div
                {} $ :style $ merge ui/expand ui/column
                  {} (:padding 8) (:position :relative)
                  , styles
                if
                  > (.len messages) 20
                  a $ {}
                    :style $ merge ui/link $ {} (:position :absolute) (:top 8) (:right 12)
                    :inner-text "|清空"
                    :on-click $ fn (e d!)
                      d! $ schema/Op :message/clear
                if (empty? messages) (comp-placeholder "|没有消息")
                list->
                  {} $ :style $ merge ui/expand
                    {} $ :padding-bottom 400
                  map-indexed ordered-messages $ fn (idx message)
                    let
                        merged? $ match
                          nth ordered-messages $ dec idx
                          (:none) false
                          (:some previous)
                            match (:author-id message)
                              (:none)
                                match (:author-id previous)
                                  (:none) true
                                  (:some id) false
                              (:some id)
                                match (:author-id previous)
                                  (:none) false
                                  (:some previous-id) (= id previous-id)
                      [] (:id message) (comp-message message merged?)
                div
                  {} $ :style $ merge ui/row
                    {} $ :align-items :flex-start
                  textarea $ {}
                    :style $ merge ui/expand ui/textarea
                    :placeholder "|text message..."
                    :value $ :draft state
                    :on-input $ fn (e d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Enum
                            :return 'Unit
                        :return 'Unit
                      d! $ schema/Op :states cursor $ assoc state :draft (event-value e)
                    :on-keydown $ fn (e d!)
                      hint-fn $ {} $ :args
                        [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Enum
                            :return 'Unit
                      when
                        = 13 $ decode-map-as
                          .unwrap-or (get e :key-code) 0
                          , 'Number
                        send-message d!
                        .prevent-default! $ browser/event-host $ .unwrap (get e :event)
                  =< 8 nil
                  a $ {} (:style ui/link) (:inner-text "|发送")
                    :on-click $ fn (e d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Enum
                            :return 'Unit
                        :return 'Unit
                      send-message d!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) (:: 'Map 'String 'app.schema/MessageView) (:: 'Map 'Tag 'Dynamic)
            :features $ #{} :js-ffi
        'comp-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-message (message merged?)
            let
                author-name $ match (:user message)
                  (:none) |GUEST
                  (:some user) (:name user)
              case (:type message)
                :message $ div
                  {} $ :style $ merge ui/row
                    {} $ :margin "|4px 0"
                  span $ {} (:inner-text author-name)
                    :style $ {} (:padding "|0px 8px")
                      :background-color $ hsl 0 0 94
                      :border-radius |12px
                      :opacity $ if merged? 0 1
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
                      format-message-time $ :time message
                      {}
                        :color $ hsl 0 0 80
                        :font-size 12
                        :font-family ui/font-fancy
                    if-not (:blotted? message)
                      span
                        {} (:class-name |invisible-link)
                          :on-click $ fn (e d!)
                            d! $ schema/Op :message/blot-out $ :id message
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
                      <> $ :text message
                :operation $ div
                  {} $ :style $ merge ui/center
                    {} $ :margin "|8px 0"
                  <>
                    str author-name "| " $ :text message
                    {}
                      :color $ hsl 0 0 100
                      :background-color $ hsl 0 0 88
                      :padding "|0 16px"
                      :font-size 12
                      :line-height |20px
                      :border-radius |4px
                <> $ str "|Unknown message type: " $ :type message
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/MessageView 'Bool
        'format-message-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-message-time (time)
            decode-map-as
              .!format (dayjs time) |HH:mm:ss
              , 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Number
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.chatroom
          :require (app.schema :as schema)
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp <> list-> span div textarea button a
            app.comp :refer $ comp-placeholder event-value
            |dayjs :default dayjs
            feather.core :refer $ comp-i
            js-ffi.browser :as browser
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (states store)
            match store
              (:none) (comp-offline)
              (:some current)
                let
                    session $ :session current
                  div
                    {} $ :style $ merge ui/global ui/fullscreen ui/column
                    comp-navigation (:logged-in? current) (:count current)
                    match (:user current)
                      (:none)
                        comp-login $ >> states :login
                      (:some user)
                        let
                            render-body $ fn (selected-tab)
                              hint-fn $ {}
                                :args $ [] 'Tag
                                :return 'respo.schema/Element
                              div
                                {} $ :style $ merge ui/expand ui/row
                                comp-workspace (>> states :workspace) selected-tab (:templates current) (:game current) user
                                comp-chatroom (>> states :chat) (:messages current)
                                  {} $ :border-left $ str "|1px solid " (hsl 0 0 90)
                          match (:router current)
                            (:none) (<> "|No route")
                            (:some route)
                              match route
                                (:home) (render-body :home)
                                (:templates) (render-body :templates)
                                (:profile members) (comp-profile user members)
                                (:unknown router)
                                  <> $ to-lispy-string router
                    comp-status-color $ :color current
                    when dev? $ comp-inspect |Store current $ {} (:bottom 0) (:left 0) (:max-width |100%)
                    comp-messages
                      filter-map-kv (:messages session)
                        fn (id message)
                          MapEntryDecision :keep id $ {}
                            :id $ :id message
                            :text $ :text message
                      {}
                      fn (info d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'app.schema/Op
                              :return 'Unit
                          :return 'Unit
                        d! $ schema/Op :session/remove-message $ decode-map-as
                          .unwrap $ get info :id
                          , 'String
                    when dev? $ comp-reel (:reel-length current) ({})
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) (:: 'Option 'app.schema/Store)
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-offline ()
            div
              {} $ :style $ merge ui/global ui/fullscreen ui/column-dispersive
                {} $ :background-color $ :theme config/site
              div $ {} $ :style
                {} $ :height 0
              div $ {} $ :style
                {}
                  :background-image $ str "|url(" (:icon config/site) "|)"
                  :width 128
                  :height 128
                  :background-size :contain
              div
                {}
                  :style $ {} (:cursor :pointer) (:line-height |32px)
                  :on-click $ fn (e d!)
                    d! $ schema/Op :effect/connect
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} $ :style
              let
                  size 24
                {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:background-color color) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> >> div span button
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ =<
            app.comp.navigation :refer $ comp-navigation
            app.comp.profile :refer $ comp-profile
            app.comp.login :refer $ comp-login
            respo-message.comp.messages :refer $ comp-messages
            cumulo-reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            app.schema :as schema
            app.config :as config
            app.comp.workspace :refer $ comp-workspace
            app.comp.chatroom :refer $ comp-chatroom
    'app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-login (states)
            let
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ match (get states :data)
                  (:none) initial-state
                  (:some raw)
                    decode-map-as (schema/data-map raw) 'app.schema/LoginState
              div
                {} $ :style $ merge ui/flex ui/center
                div ({})
                  div
                    {} $ :style $ {}
                    div ({})
                      input $ {} (:placeholder |Username)
                        :value $ :username state
                        :style ui/input
                        :on-input $ fn (e d!)
                          hint-fn $ {} (:return 'Unit)
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {}
                                :args $ [] 'app.schema/Op
                                :return 'Unit
                          d! $ schema/Op :states cursor $ assoc state :username (event-value e)
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder |Password)
                        :value $ :password state
                        :style ui/input
                        :on-input $ fn (e d!)
                          hint-fn $ {} (:return 'Unit)
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {}
                                :args $ [] 'app.schema/Op
                                :return 'Unit
                          d! $ schema/Op :states cursor $ assoc state :password (event-value e)
                  =< nil 8
                  div
                    {} $ :style $ {} (:text-align :right)
                    span $ {} (:inner-text "|Sign up")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) true
                    =< 8 nil
                    span $ {} (:inner-text "|Log in")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Dynamic 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state (schema/LoginState :username | :password |)
          :examples $ []
          :schema $ :: 'app.schema/LoginState
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            fn (event dispatch!)
              hint-fn $ {} (:return 'Unit)
                :args $ [] (:: 'Map 'Tag 'Dynamic)
                  :: 'Fn $ {}
                    :args $ [] 'app.schema/Op
                    :return 'Unit
              dispatch! $ if signup?
                schema/Op :user/sign-up $ [] username password
                schema/Op :user/log-in $ [] username password
              browser/storage-set! (:storage-key config/site)
                format-cirru-edn $ [] username password
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String 'Bool
            :return $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
                :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'app.schema/Op
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            respo.core :refer $ defcomp <> div input button span
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            app.schema :as schema
            app.config :as config
            app.comp :refer $ event-value
            js-ffi.browser :as browser
    'app.comp.navigation $ %{} 'FileEntry
      :defs $ {} $ 'comp-navigation
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-navigation (logged-in? count-members)
            div
              {} $ :style $ merge ui/row-center
                {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                  :border-bottom $ str "|1px solid " $ hsl 0 0 0
                  :font-family ui/font-fancy
              div
                {}
                  :on-click $ fn (e d!)
                    d! $ schema/Op :router/change $ assoc schema/router :name :home
                  :style $ {} $ :cursor :pointer
                <> (:title config/site) nil
              div
                {}
                  :style $ {} $ :cursor |pointer
                  :on-click $ fn (e d!)
                    d! $ schema/Op :router/change $ assoc schema/router :name :profile
                <> $ if logged-in? |Me |Guest
                =< 8 nil
                <> $ str count-members
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Bool 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.navigation
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp <> span div
            app.config :as config
            app.schema :as schema
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {} $ 'comp-profile
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-profile (user members)
            div
              {} $ :style $ merge ui/flex
                {} $ :padding 16
              div
                {} $ :style $ {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " $ :name user
              =< nil 16
              div
                {} $ :style ui/row
                <> |Members:
                =< 8 nil
                list->
                  {} $ :style ui/row
                  map-list-kv members $ fn (id member)
                    [] id $ div
                      {} $ :style $ {} (:padding "|0 8px")
                        :border $ str "|1px solid " $ hsl 0 0 80
                        :border-radius |16px
                        :margin "|0 4px"
                      <> $ .unwrap-or member |GUEST
              =< nil 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!)
                      browser/location-replace! $ str
                        .-origin $ browser/location-host
                        , |?time= $ host/now-ms
                  <> |Refresh
                =< 8 nil
                button
                  {}
                    :style $ merge ui/button $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!)
                      dispatch! $ schema/Op :user/log-out
                      browser/storage-remove! $ :storage-key config/site
                  <> "|Log out"
              =< nil 48
              a $ {} (:href |https://github.com/TopixIM/patlepat) (:inner-text "|GitHub Address") (:target |_blank)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/UserView $ :: 'Map 'Number (:: 'Option 'String)
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.profile
          :require
            respo-ui.core :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp list-> <> span div button a
            respo.comp.space :refer $ =<
            app.config :as config
            js-ffi.browser :as browser
            js-ffi.shared :as host
    'app.comp.templates $ %{} 'FileEntry
      :defs $ {}
        'comp-template-preview $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-template-preview (template)
            let
                slots $ -> (:slots template)
                  map-list-kv $ fn (id slot) slot
                  .sort-by $ fn (slot) (:order slot)
              list-> ({})
                map-indexed (:pieces template)
                  fn (idx piece)
                    [] idx $ span ({})
                      <> piece $ {} $ :color (hsl 0 0 50)
                      match (nth slots idx)
                        (:none) (<> |)
                        (:some slot)
                          <> (:text slot)
                            {}
                              :color $ hsl 200 80 70
                              :font-size 24
                              :margin "|0 4px"
                              :vertical-align :bottom
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/Template
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
                      .show template-editor d! $ fn (text)
                        d! $ schema/Op :template/create text
                list->
                  {} $ :style $ {} (:padding "|0px 4px")
                  -> templates
                    filter-map-kv $ fn (k template)
                      let
                          selected? $ match selected
                            (:none) false
                            (:some id)
                              = id $ :id template
                        MapEntryDecision :keep k $ div
                          {} $ :style $ merge ui/row-parted
                            {} (:padding "|4px 8px")
                              :border-bottom $ str "|1px solid " $ hsl 0 0 94
                            if selected?
                              {} $ :background-color $ hsl 0 0 97
                              {}
                          div ({}) (comp-template-preview template)
                            div ({})
                              <> (:text template)
                                {}
                                  :color $ hsl 0 0 70
                                  :font-size 10
                          if-not selected? $ div ({})
                            a $ {} (:style ui/link) (:inner-text "|使用该模板")
                              :on-click $ fn (e d!)
                                d! $ schema/Op :template/choose $ :id template
                            =< 8 nil
                            a $ {} (:style ui/link) (:inner-text "|删除")
                              :on-click $ fn (e d!)
                                hint-fn $ {}
                                  :args $ [] (:: 'Map 'Tag 'Dynamic)
                                    :: 'Fn $ {}
                                      :args $ [] 'Enum
                                      :return 'Unit
                                  :return 'Unit
                                .show remove-plugin d! $ fn () $ d!
                                  schema/Op :template/remove $ :id template
                    .to-list
                if (empty? templates) (comp-placeholder "|No tempaltes")
                .render template-editor
                .render remove-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) (:: 'Map 'String 'app.schema/Template) (:: 'Option 'String)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.templates
          :require (app.schema :as schema)
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp list-> >> <> span div a
            app.config :as config
            respo-alerts.core :refer $ use-prompt use-confirm
            app.comp :refer $ comp-placeholder
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
                  <> $ :text card
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
                    fn (e d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Enum
                            :return 'Unit
                        :return 'Unit
                      on-remove d!
                <>
                  mask-card-text $ :text card
                  {} (:font-size 24) (:line-height |28px) (:font-family ui/font-code) (:vertical-align :middle)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/Card 'Bool $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] $ :: 'Fn
                  {} (:return 'Unit)
                    :args $ [] 'app.schema/Op
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
                  <> (:text slot)
                    {} $ :color $ hsl 280 80 70
                  =< 8 nil
                  a $ {} (:style ui/link) (:inner-text "|增加卡片")
                    :on-click $ fn (e d!)
                      hint-fn $ {} $ :args
                        [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Enum
                            :return 'Unit
                      .show create-plugin d! $ fn (text)
                        hint-fn $ {} $ :args ([] 'String)
                        when-not (blank? text)
                          d! $ schema/Op :template/add-card $ schema/AddCard :template-id template-id :text text :slot-id (:id slot)
                list-> ({})
                  -> (:cards slot)
                    filter-map-kv $ fn (k card)
                      MapEntryDecision :keep k $ comp-card card
                        match (:author-id card)
                          (:none) false
                          (:some author) (= author user-id)
                        fn (d!)
                          d! $ schema/Op :template/remove-card $ schema/RemoveCard :template-id template-id :slot-id (:id slot) :card-id (:id card)
                    .to-list
                if
                  empty? $ :cards slot
                  comp-placeholder "|没有卡片"
                .render create-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) 'app.schema/Slot 'String 'String
        'comp-workspace $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-workspace (states selected-tab templates game user)
            div
              {} $ :style $ merge ui/expand ui/column
                {} $ :flex 1.5
              comp-tabs selected-tab $ [] (schema/Tab :title "|主页" :name :home) (schema/Tab :title "|模板" :name :templates)
              if (= selected-tab :templates)
                comp-templates (>> states :templates) templates $ :template-id game
                let
                    maybe-template $ match (:template-id game)
                      (:none) (Option :none)
                      (:some id) (get templates id)
                  match maybe-template
                    (:none)
                      div
                        {} $ :style $ {} (:padding 16) (:font-family ui/font-fancy) (:font-weight 300)
                        <> "|没有选择模板, 或者模板已不存在"
                    (:some template)
                      let
                          slots $ -> (:slots template)
                            map-list-kv $ fn (id slot) slot
                            .sort-by $ fn (slot) (:order slot)
                          has-next? $ every? slots $ fn (slot)
                            not $ empty? $ :cards slot
                        div
                          {} $ :style $ merge ui/expand ui/column
                            {} $ :padding 16
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
                                  d! $ schema/Op :message/show-result
                              <> "|卡片种类不足" $ {} $ :color (hsl 10 80 76)
                          =< nil 20
                          list->
                            {} $ :style ui/row
                            map slots $ fn (slot)
                              [] (:id slot)
                                comp-slot
                                  >> states $ :id slot
                                  , slot (:id template) (:id user)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) 'Tag (:: 'Map 'String 'app.schema/Template) 'app.schema/Game 'app.schema/UserView
        'mask-card-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mask-card-text (text)
            decode-map-as
              .!replace text (new js/RegExp |. |g) |*
              , 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.workspace
          :require (app.schema :as schema)
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp >> list-> <> span div a button
            app.config :as config
            app.comp.templates :refer $ comp-templates comp-template-preview
            respo-alerts.core :refer $ use-prompt
            app.comp :refer $ comp-tabs comp-placeholder
            feather.core :refer $ comp-icon
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            schema/Site :port 11023 :title |Patlepat :icon |http://cdn.tiye.me/logo/topix.png :theme |#eeeeff :storage-key |patlepat :storage-file |storage.cirru
          :examples $ []
          :schema $ :: 'app.schema/Site
        'slot-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def slot-pattern |\{[\w\s\u4e00-\u9fa5]+\}
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
          :require $ app.schema :as schema
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'AddCard $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct AddCard (:template-id 'String) (:slot-id 'String) (:text 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Card (:id 'String) (:text 'String)
            :author-id $ :: 'Option 'String
            :time 'Number
          :examples $ []
          :schema $ :: 'StructDef
        'ChatState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ChatState (:draft 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Db
            :sessions $ :: 'Map 'Number 'app.schema/Session
            :users $ :: 'Map 'String 'app.schema/User
            :messages $ :: 'Map 'String 'app.schema/Message
            :templates $ :: 'Map 'String 'app.schema/Template
            :game 'app.schema/Game
          :examples $ []
          :schema $ :: 'StructDef
        'Game $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Game
            :template-id $ :: 'Option 'String
          :examples $ []
          :schema $ :: 'StructDef
        'LoginState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct LoginState (:username 'String) (:password 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Message (:id 'String) (:text 'String) (:time 'Number) (:type 'Tag)
            :author-id $ :: 'Option 'String
            :blotted? 'Bool
          :examples $ []
          :schema $ :: 'StructDef
        'MessageView $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct MessageView (:id 'String) (:text 'String) (:time 'Number) (:type 'Tag)
            :author-id $ :: 'Option 'String
            :blotted? 'Bool
            :user $ :: 'Option 'app.schema/UserView
          :examples $ []
          :schema $ :: 'StructDef
        'Notification $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Notification (:id 'String) (:text 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:session/connect) (:session/disconnect) (:session/remove-message 'String)
            :user/log-in $ :: 'List 'String
            :user/sign-up $ :: 'List 'String
            :user/log-out
            :router/change 'app.schema/Router
            :message/create 'String
            :message/clear
            :message/blot-out 'String
            :message/show-result
            :template/create 'String
            :template/remove 'String
            :template/choose 'String
            :template/add-card 'app.schema/AddCard
            :template/remove-card 'app.schema/RemoveCard
            :states (:: 'List 'Dynamic) 'Dynamic
            :effect/connect
            :reel/reset
            :reel/merge
            :effect/persist
          :examples $ []
          :schema $ :: 'EnumDef
        'RemoveCard $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct RemoveCard (:template-id 'String) (:slot-id 'String) (:card-id 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'RouteView $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum RouteView (:home) (:templates)
            :profile $ :: 'Map 'Number $ :: 'Option 'String
            :unknown 'app.schema/Router
          :examples $ []
          :schema $ :: 'EnumDef
        'Router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Router (:name 'Tag)
            :title $ :: 'Option 'String
            :data 'Dynamic
            :router 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'Session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Session (:id 'Number)
            :user-id $ :: 'Option 'String
            :nickname $ :: 'Option 'String
            :router 'app.schema/Router
            :messages $ :: 'Map 'String 'app.schema/Notification
          :examples $ []
          :schema $ :: 'StructDef
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Site (:port 'Number) (:title 'String) (:icon 'String) (:theme 'String) (:storage-key 'String) (:storage-file 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Slot $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Slot (:id 'String) (:order 'Number) (:text 'String)
            :cards $ :: 'Map 'String 'app.schema/Card
          :examples $ []
          :schema $ :: 'StructDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:logged-in? 'Bool) (:session 'app.schema/Session) (:reel-length 'Number)
            :user $ :: 'Option 'app.schema/UserView
            :router $ :: 'Option 'app.schema/RouteView
            :count 'Number
            :color 'String
            :messages $ :: 'Map 'String 'app.schema/MessageView
            :templates $ :: 'Map 'String 'app.schema/Template
            :game 'app.schema/Game
          :examples $ []
          :schema $ :: 'StructDef
        'StoreWire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StoreWire (:logged-in? 'Bool) (:session 'app.schema/Session) (:reel-length 'Number)
            :user $ :: 'Option $ :: 'Map 'Tag 'Dynamic
            :router 'Dynamic
            :count 'Number
            :color 'String
            :messages $ :: 'Map 'String 'app.schema/MessageView
            :templates $ :: 'Map 'String 'app.schema/Template
            :game 'app.schema/Game
          :examples $ []
          :schema $ :: 'StructDef
        'Tab $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Tab (:name 'Tag) (:title 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Template $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Template (:id 'String) (:text 'String)
            :pieces $ :: 'List 'String
            :slots $ :: 'Map 'String 'app.schema/Slot
          :examples $ []
          :schema $ :: 'StructDef
        'User $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct User (:id 'String) (:name 'String) (:password 'String)
            :nickname $ :: 'Option 'String
            :avatar $ :: 'Option 'String
          :examples $ []
          :schema $ :: 'StructDef
        'UserView $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct UserView (:id 'String) (:name 'String)
            :nickname $ :: 'Option 'String
            :avatar $ :: 'Option 'String
          :examples $ []
          :schema $ :: 'StructDef
        'data-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn data-map (raw)
            if (struct? raw)
              decode-map-as (&struct:to-map raw) (:: 'Map 'Tag 'Dynamic)
              decode-map-as raw $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            Db :sessions ({}) :users ({}) :messages ({}) :templates ({}) :game $ Game :template-id $ Option :none
          :examples $ []
          :schema $ :: 'app.schema/Db
        'decode-credentials $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-credentials (raw)
            let
                credentials $ decode-map-as raw $ :: 'List 'String
              if
                = 2 $ .len credentials
                , credentials $ raise "|Expected two credential strings"
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'List 'String
        'decode-database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-database (raw)
            let
                data $ data-map raw
                normalized $ -> data
                  assoc :sessions $ filter-map-kv
                    decode-map-as
                      .unwrap-or (get data :sessions) ({})
                      :: 'Map 'Number 'Dynamic
                    fn (id session)
                      MapEntryDecision :keep id $ normalize-session session
                  assoc :users $ normalize-items
                    .unwrap-or (get data :users) ({})
                    , normalize-user
                  assoc :messages $ normalize-items
                    .unwrap-or (get data :messages) ({})
                    , normalize-message
                  assoc :templates $ normalize-items
                    .unwrap-or (get data :templates) ({})
                    , normalize-template
                  assoc :game $ normalize-game $ .unwrap-or (get data :game) ({})
              decode-map-as normalized 'app.schema/Db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |legacy-game-archive-and-nominal-roundtrip)
            :code $ quote $ let
                raw $ {}
                  :sessions $ {}
                  :users $ {} $ |u
                    {} (:id |u) (:name |Ada) (:password |synthetic-hash) (:nickname nil) (:avatar nil)
                  :messages $ {} $ |m
                    {} (:id |m) (:text "|已有结果。") (:type :quote) (:time 11)
                  :templates $ {} $ |t
                    {} (:id |t) (:text "|{谁}。")
                      :pieces $ [] | "|。"
                      :slots $ {} $ |t-0
                        {} (:id |t-0) (:order 0) (:text "|{谁}")
                          :cards $ {} $ |card
                            {} (:id |card) (:text "|小猫 🌸") (:author-id |u) (:time 10)
                  :game $ {} $ :template-id |t
                db $ decode-database raw
                template $ .unwrap $ get (:templates db) |t
                slot $ .unwrap $ get (:slots template) |t-0
                card $ .unwrap $ get (:cards slot) |card
                message $ .unwrap $ get (:messages db) |m
              assert= "|小猫 🌸" $ :text card
              assert= 10 $ :time card
              assert= (Option :some |u) (:author-id card)
              assert= (Option :none) (:author-id message)
              assert= false $ :blotted? message
              assert= ([] | "|。") (:pieces template)
              assert= (Option :some |t)
                :template-id $ :game db
              assert= db $ decode-database $ parse-cirru-edn (format-cirru-edn db)
              assert= true $ try
                do
                  decode-database $ assoc raw :game $ {} (:template-id |t) (:unexpected |must-reject)
                  , false
                fn (error) true
            :tags $ #{} :migration :unit
        'decode-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-op (raw)
            if (enum? raw)
              match raw
                (:session/connect) (Op :session/connect)
                (:session/disconnect) (Op :session/disconnect)
                (:session/remove-message payload)
                  Op :session/remove-message $ if (string? payload) payload $ decode-map-as
                    .unwrap $ get (data-map payload) :id
                    , 'String
                (:user/log-in payload)
                  Op :user/log-in $ decode-credentials payload
                (:user/sign-up payload)
                  Op :user/sign-up $ decode-credentials payload
                (:user/log-out) (Op :user/log-out)
                (:router/change payload)
                  Op :router/change $ decode-router payload
                (:message/create payload)
                  Op :message/create $ decode-map-as payload 'String
                (:message/clear) (Op :message/clear)
                (:message/blot-out payload)
                  Op :message/blot-out $ decode-map-as payload 'String
                (:message/show-result) (Op :message/show-result)
                (:template/create payload)
                  Op :template/create $ decode-map-as payload 'String
                (:template/remove payload)
                  Op :template/remove $ decode-map-as payload 'String
                (:template/choose payload)
                  Op :template/choose $ decode-map-as payload 'String
                (:template/add-card payload)
                  Op :template/add-card $ decode-map-as (data-map payload) 'app.schema/AddCard
                (:template/remove-card payload)
                  Op :template/remove-card $ decode-map-as (data-map payload) 'app.schema/RemoveCard
                (:states cursor state)
                  Op :states
                    decode-map-as cursor $ :: 'List 'Dynamic
                    , state
                (:effect/connect) (Op :effect/connect)
                (:reel/reset) (Op :reel/reset)
                (:reel/merge) (Op :reel/merge)
                (:effect/persist) (Op :effect/persist)
                _ $ raise "|Unsupported operation"
              raise "|Expected operation enum"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Op)
            :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |nominal-operation-wire-roundtrip)
            :code $ quote $ do
              assert=
                Op :template/add-card $ AddCard :template-id |t :slot-id |t-0 :text "|小猫 🌸"
                decode-op $ parse-cirru-edn $ format-cirru-edn
                  encode-op $ Op :template/add-card $ AddCard :template-id |t :slot-id |t-0 :text "|小猫 🌸"
              assert=
                Op :template/remove-card $ RemoveCard :template-id |t :slot-id |t-0 :card-id |card
                decode-op $ parse-cirru-edn $ format-cirru-edn
                  encode-op $ Op :template/remove-card $ RemoveCard :template-id |t :slot-id |t-0 :card-id |card
              assert=
                Op :router/change $ assoc router :name :templates
                decode-op $ parse-cirru-edn $ format-cirru-edn
                  encode-op $ Op :router/change $ assoc router :name :templates
              assert= (Op :user/log-out)
                decode-op $ parse-cirru-edn $ format-cirru-edn
                  encode-op $ Op :user/log-out
              assert= (Op :message/clear)
                decode-op $ parse-cirru-edn $ format-cirru-edn
                  encode-op $ Op :message/clear
              assert= (Op :message/show-result)
                decode-op $ parse-cirru-edn $ format-cirru-edn
                  encode-op $ Op :message/show-result
            :tags $ #{} :migration :unit
        'decode-optional-route-view $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-optional-route-view (raw)
            if (enum? raw)
              match raw
                (:none) (Option :none)
                (:some payload)
                  Option :some $ decode-route-view payload
                _ $ raise "|Invalid route view option"
              raise "|Expected route view option"
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Option 'app.schema/RouteView
        'decode-optional-string $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-optional-string (raw)
            if (nil? raw) (Option :none)
              if (enum? raw)
                match raw
                  (:none) (Option :none)
                  (:some value)
                    Option :some $ decode-map-as value 'String
                  _ $ raise |Invalid-optional-string
                Option :some $ decode-map-as raw 'String
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Option 'String
        'decode-route-view $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-route-view (raw)
            if (enum? raw)
              match raw
                (:home) (RouteView :home)
                (:templates) (RouteView :templates)
                (:profile payload)
                  RouteView :profile $ filter-map-kv
                    decode-map-as payload $ :: 'Map 'Number 'Dynamic
                    fn (id name)
                      MapEntryDecision :keep id $ decode-optional-string name
                (:unknown payload)
                  RouteView :unknown $ decode-router payload
                _ $ raise "|Invalid route view variant"
              raise "|Expected route view enum"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/RouteView)
            :args $ [] 'Dynamic
        'decode-router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-router (raw)
            decode-map-as (normalize-router raw) 'app.schema/Router
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Router)
            :args $ [] 'Dynamic
        'decode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-store (raw)
            let
                data $ data-map raw
                normalized $ -> data
                  assoc :session $ normalize-session $ .unwrap (get data :session)
                  assoc :user $ normalize-optional-user-view $ .unwrap (get data :user)
                  assoc :messages $ normalize-items
                    .unwrap $ get data :messages
                    , normalize-message-view
                  assoc :templates $ normalize-items
                    .unwrap $ get data :templates
                    , normalize-template
                  assoc :game $ normalize-game $ .unwrap (get data :game)
                envelope $ decode-map-as normalized 'app.schema/StoreWire
                user $ .map (:user envelope)
                  fn (payload) (decode-map-as payload 'app.schema/UserView)
                route $ decode-optional-route-view $ :router envelope
              Store :logged-in? (:logged-in? envelope) :session (:session envelope) :reel-length (:reel-length envelope) :user user :router route :count (:count envelope) :color (:color envelope) :messages (:messages envelope) :templates (:templates envelope) :game $ :game envelope
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry
            :name |nominal-routes-message-authors-and-incremental-patch
            :code $ quote $ let
                public-user $ UserView :id |u :name |Ada :nickname (Option :some |Ada) :avatar $ Option :none
                current $ -> session (assoc :id 7)
                  assoc :user-id $ Option :some |u
                card $ Card :id |card :text "|小猫 🌸" :time 10 :author-id $ Option :some |u
                slot $ Slot :id |t-0 :order 0 :text "|{谁}" :cards $ {} (|card card)
                template $ Template :id |t :text "|{谁}。" :pieces ([] | "|。") :slots $ {} (|t-0 slot)
                message $ MessageView :id |m :text "|hello 🌸" :time 11 :type :message :author-id (Option :some |u) :blotted? false :user $ Option :some public-user
                initial $ Store :logged-in? true :session current :reel-length 1 :user (Option :some public-user) :router
                  Option :some $ RouteView :home
                  , :count 1 :color |#abcdef :messages
                    {} $ |m message
                    , :templates
                      {} $ |t template
                      , :game $ Game :template-id (Option :some |t)
                wire $ parse-cirru-edn $ format-cirru-edn initial
                changed $ -> initial
                  assoc :router $ Option :some $ RouteView :profile
                    {}
                      7 $ Option :some |Ada
                      8 $ Option :none
                  assoc :messages $ {} $ |m (assoc message :text |edited)
                  assoc :templates $ {} $ |t
                    assoc template :slots $ {} $ |t-0
                      assoc slot :cards $ {}
                changes $ diff-twig initial changed $ {} (:key :id)
                patched $ try-patch-twig wire $ decode-changes
                  parse-cirru-edn $ format-cirru-edn changes
                guest $ -> initial (assoc :logged-in? false)
                  assoc :session $ assoc current :user-id $ Option :none
                  assoc :user $ Option :none
                  assoc :router $ Option :none
                  assoc :messages $ {}
                  assoc :templates $ {}
                  assoc :game $ Game :template-id $ Option :none
                  assoc :color |
              assert= initial $ decode-store wire
              .fold
                [] (RouteView :home) (RouteView :templates)
                  RouteView :profile $ {}
                    7 $ Option :some |Ada
                    8 $ Option :none
                  RouteView :unknown $ assoc router :name :other
                , &unit $ fn (acc route)
                  let
                      expected $ assoc initial :router $ Option :some route
                    assert= expected $ decode-store $ parse-cirru-edn (format-cirru-edn expected)
              match patched
                (:ok value)
                  assert= changed $ decode-store value
                (:err error)
                  raise $ patch-error-message error
              assert= guest $ decode-store $ parse-cirru-edn (format-cirru-edn guest)
            :tags $ #{} :migration :unit
        'encode-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn encode-op (op)
            match op
              (:session/connect) (:: :session/connect)
              (:session/disconnect) (:: :session/disconnect)
              (:session/remove-message id)
                :: :session/remove-message $ {} $ :id id
              (:user/log-in payload) (:: :user/log-in payload)
              (:user/sign-up payload) (:: :user/sign-up payload)
              (:user/log-out) (:: :user/log-out)
              (:router/change route)
                let
                    data $ {}
                      :name $ :name route
                      :data $ :data route
                      :router $ :router route
                  :: :router/change $ .fold (:title route)
                    fn () data
                    fn (title) (assoc data :title title)
              (:message/create payload) (:: :message/create payload)
              (:message/clear) (:: :message/clear)
              (:message/blot-out payload) (:: :message/blot-out payload)
              (:message/show-result) (:: :message/show-result)
              (:template/create payload) (:: :template/create payload)
              (:template/remove payload) (:: :template/remove payload)
              (:template/choose payload) (:: :template/choose payload)
              (:template/add-card payload)
                :: :template/add-card $ {}
                  :template-id $ :template-id payload
                  :slot-id $ :slot-id payload
                  :text $ :text payload
              (:template/remove-card payload)
                :: :template/remove-card $ {}
                  :template-id $ :template-id payload
                  :slot-id $ :slot-id payload
                  :card-id $ :card-id payload
              (:states cursor state) (:: :states cursor state)
              (:effect/connect) (:: :effect/connect)
              (:reel/reset) (:: :reel/reset)
              (:reel/merge) (:: :reel/merge)
              (:effect/persist) (:: :effect/persist)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Enum)
            :args $ [] 'app.schema/Op
        'normalize-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-card (raw)
            without-legacy-nil (data-map raw) :author-id
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'normalize-game $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-game (raw)
            without-legacy-nil (data-map raw) :template-id
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'normalize-items $ %{} 'CodeEntry
          :doc "|Normalize a String-keyed wire collection. Each untrusted value crosses the supplied decoder exactly once; preserve its concrete result type instead of erasing it to another open map."
          :code $ quote $ defn normalize-items (raw f)
            filter-map-kv
              decode-map-as raw $ :: 'Map 'String 'Dynamic
              fn (id item)
                MapEntryDecision :keep id $ f item
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic $ :: 'Fn
              {} (:return 'T)
                :args $ [] 'Dynamic
            :generics $ [] 'T
            :return $ :: 'Map 'String 'T
          :tests $ [] $ %{} 'TestEntry (:name |preserves-normalizer-result-type)
            :code $ quote $ assert=
              {} (|a 5) (|b 8)
              normalize-items
                {} (|a 4) (|b 7)
                fn (raw)
                  inc $ decode-map-as raw 'Number
            :tags $ #{} :migration :unit
        'normalize-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-message (raw)
            let
                data $ without-legacy-nil (data-map raw) :author-id
              assoc data :blotted? $ .unwrap-or (get data :blotted?) false
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'normalize-message-view $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-message-view (raw)
            let
                data $ normalize-message raw
              assoc data :user $ normalize-optional-user-view $ .unwrap (get data :user)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'normalize-optional-user-view $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-optional-user-view (raw)
            if (enum? raw)
              match raw
                (:none) (Option :none)
                (:some payload)
                  let
                      normalized $ -> (data-map payload) (without-legacy-nil :nickname) (without-legacy-nil :avatar)
                    Option :some normalized
                _ $ raise "|Invalid user view option"
              raise "|Expected user view option"
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Option $ :: 'Map 'Tag 'Dynamic
        'normalize-router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-router (raw)
            without-legacy-nil
              merge
                {} (:name :home) (:data nil) (:router nil)
                data-map raw
              , :title
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'normalize-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-session (raw)
            let
                data $ data-map raw
              -> data (without-legacy-nil :user-id) (without-legacy-nil :nickname)
                assoc :router $ normalize-router $ .unwrap-or (get data :router)
                  {} $ :name :home
                assoc :messages $ normalize-items
                  .unwrap-or (get data :messages) ({})
                  , data-map
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'normalize-slot $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-slot (raw)
            let
                data $ data-map raw
              assoc data :cards $ normalize-items
                .unwrap-or (get data :cards) ({})
                , normalize-card
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'normalize-template $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-template (raw)
            let
                data $ data-map raw
              assoc data :slots $ normalize-items
                .unwrap-or (get data :slots) ({})
                , normalize-slot
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'normalize-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-user (raw)
            -> (data-map raw) (without-legacy-nil :nickname) (without-legacy-nil :avatar)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            Router :name :home :title (Option :none) :data nil :router nil
          :examples $ []
          :schema $ :: 'app.schema/Router
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            Session :id 0 :user-id (Option :none) :nickname (Option :none) :router router :messages $ {}
          :examples $ []
          :schema $ :: 'app.schema/Session
        'without-legacy-nil $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn without-legacy-nil (data key)
            match
              .and-then (get data key) decode-optional-string
              (:none) (dissoc data key)
              (:some value) (assoc data key value)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Tag
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require
            recollect.diff :refer $ diff-twig
            recollect.patch :refer $ try-patch-twig patch-error-message
            recollect.schema :refer $ decode-changes
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *client-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Number 'app.schema/Store
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *initial-db
            if (path-exists? storage-file)
              match
                .read-text $ FsPath :value storage-file
                (:ok content) (parse-database content)
                (:err message) (raise message)
              , schema/database
          :examples $ []
          :schema $ :: 'Ref 'app.schema/Db
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'app.schema/Db
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            ReelState :base @*initial-db :db @*initial-db :records ([]) :merged? false
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'app.schema/Db
        '*sync-pending? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *sync-pending? false
          :examples $ []
          :schema $ :: 'Ref 'Bool
        '*tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *tasks ([])
          :examples $ []
          :schema $ :: 'Ref $ :: 'List 'FfiTask
        'changes-for $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn changes-for (old next)
            match old
              (:none)
                diff-twig nil next $ {} $ :key :id
              (:some previous)
                diff-twig previous next $ {} $ :key :id
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Option 'app.schema/Store) 'app.schema/Store
            :return $ :: 'List 'recollect.schema/change-op
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op sid)
            match op
              (:effect/persist)
                when config/dev? $ persist-db!
              _ $ when
                or config/dev? $ match op
                  (:reel/reset) false
                  (:reel/merge) false
                  _ true
                let
                    previous @*reel
                    op-id $ generate-id!
                    op-time $ get-timestamp $ get-time!
                    next $ reel-reducer previous updater op sid op-id op-time config/dev?
                  when config/dev? $ println |Dispatch! sid
                  reset! *reel $ match op
                    (:reel/reset)
                      assoc next :db $ assoc (:db next) :sessions $ :sessions (:db previous)
                    _ next
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.schema/Op 'Number
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-backup-path! ()
            let
                now $ calcit.std.date/extract-time $ get-time!
              join-path calcit-dirname |backups
                str $ .unwrap $ get now :month
                str
                  .unwrap $ get now :day
                  , |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            identity @*reader-reel
            let
                port $ .fold (get-env |port)
                  fn () $ :port config/site
                  fn (raw)
                    .unwrap-or (parse-float raw) (:port config/site)
                server $ run-server! port
                render-timer $ set-interval! 200 $ fn () (render-loop!)
                persist-timer $ set-interval! 600000 $ fn () (persist-db!)
              reset! *tasks $ [] server render-timer persist-timer
              println "|Server started on port:" port
            on-control-c on-exit!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! ()
            .fold @*tasks &unit $ fn (acc task)
              hint-fn $ {}
                :args $ [] 'Unit 'calcit.core/FfiTask
                :return 'Unit
              .cancel! task
            reset! *tasks $ []
            persist-db!
            quit! 0
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'parse-database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-database (content)
            schema/decode-database $ parse-cirru-edn content
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'String
        'parse-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-op (content)
            schema/decode-op $ parse-cirru-edn content
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Op)
            :args $ [] 'String
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                content $ format-cirru-edn $ assoc (:db @*reel) :sessions ({})
              check-write-file! storage-file content
              check-write-file! (get-backup-path!) content
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            when (not config/dev?) (raise |Reloading-only-happens-in-dev-mode)
            clear-twig-caches!
            reset! *reader-reel @*reel
            sync-clients! @*reader-reel
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            when
              or @*sync-pending? $ not $ identical? @*reader-reel @*reel
              reset! *sync-pending? false
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            wss-serve!
              {} $ :port port
              fn (data)
                match data
                  (:connect sid)
                    dispatch! (schema/Op :session/connect) sid
                  (:message sid content)
                    try
                      dispatch! (parse-op content) sid
                      fn (_error) (eprintln |Rejected-client-operation sid) &unit
                  (:disconnect sid)
                    do (swap! *client-caches dissoc sid)
                      dispatch! (schema/Op :session/disconnect) sid
                  (:blob sid payload) (eprintln |Unsupported-binary-message sid)
                , &unit
              .unwrap-or (get-env |PATLEPAT_BIND_ADDRESS) |0.0.0.0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'FfiTask)
            :args $ [] 'Number
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            if (empty? calcit-dirname) (:storage-file config/site)
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ :: 'String
        'sync-client! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-client! (sid reel)
            when (identical? reel @*reader-reel)
              match
                get
                  :sessions $ :db reel
                  , sid
                (:none) (swap! *client-caches dissoc sid)
                (:some session)
                  let
                      next $ twig-container (:db reel) session $ .len (:records reel)
                      changes $ changes-for (get @*client-caches sid) next
                    when
                      not $ empty? changes
                      match
                        wss-send! sid $ format-cirru-edn $ :: :patch changes
                        (:accepted) (swap! *client-caches assoc sid next)
                        (:backpressured) (reset! *sync-pending? true)
                        (:closed) (swap! *client-caches dissoc sid)
                        (:too-large) (eprintln |Patch-exceeds-WebSocket-message-limit sid)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number $ :: 'cumulo-reel.core/ReelState 'app.schema/Db
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel)
            wss-each! $ fn (sid) (sync-client! sid reel)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'cumulo-reel.core/ReelState 'app.schema/Db
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.server
          :require (app.schema :as schema)
            app.updater :refer $ updater
            cumulo-reel.core :refer $ ReelState reel-reducer
            app.config :as config
            app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            recollect.twig :refer $ clear-twig-caches!
            app.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
            calcit.std.time :refer $ set-interval!
            calcit.std.date :refer $ get-time! get-timestamp extract-time
            calcit.std.path :refer $ join-path
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db session record-count)
            let
                maybe-user $ .and-then (:user-id session)
                  fn (id)
                    get (:users db) id
                logged-in? $ .some? maybe-user
              schema/Store :logged-in? logged-in? :session session :reel-length record-count :user (.map maybe-user twig-user) :router
                .map maybe-user $ fn (user)
                  match
                    :name $ :router session
                    :home $ schema/RouteView :home
                    :templates $ schema/RouteView :templates
                    :profile $ schema/RouteView :profile $ twig-members (:sessions db) (:users db)
                    _ $ schema/RouteView :unknown $ :router session
                , :count
                  .len $ :sessions db
                  , :color
                    if logged-in? (rand-hex-color!) |
                    , :messages
                      if logged-in?
                        filter-map-kv (:messages db)
                          fn (id message)
                            MapEntryDecision :keep id $ twig-message message $ :users db
                        {}
                      , :templates
                        if logged-in? (:templates db) ({})
                        , :game $ if logged-in? (:game db)
                          schema/Game :template-id $ Option :none
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Db 'app.schema/Session 'Number
          :tests $ [] $ %{} 'TestEntry
            :name |typed-public-users-message-authors-and-guest-view
            :code $ quote $ let
                user $ schema/User :id |u :name |Ada :nickname (Option :some |Ada) :avatar (Option :none) :password |private-hash
                current $ -> schema/session (assoc :id 7)
                  assoc :user-id $ Option :some |u
                guest $ assoc schema/session :id 8
                db $ -> schema/database
                  assoc :users $ {} $ |u user
                  assoc :sessions $ {} (7 current) (8 guest)
                  assoc :messages $ {}
                    |auth $ schema/Message :id |m :text |hello :time 1 :type :message :author-id (Option :some |u) :blotted? false
                    |guest $ schema/Message :id |m :text |hello :time 1 :type :message :author-id (Option :none) :blotted? false
                view $ twig-container db current 4
                public-user $ .unwrap $ :user view
                guest-view $ twig-container db guest 4
                profile $ twig-container db
                  assoc current :router $ assoc schema/router :name :profile
                  , 4
              assert= (Option :none)
                get (&struct:to-map public-user) :password
              assert= |Ada $ :name public-user
              assert= 4 $ :reel-length view
              assert= (Option :some public-user)
                :user $ .unwrap $ get (:messages view) |auth
              assert= (Option :none)
                :user $ .unwrap $ get (:messages view) |guest
              assert= false $ :logged-in? guest-view
              assert= 0 $ .len $ :messages guest-view
              assert= 0 $ .len $ :templates guest-view
              match
                .unwrap $ :router profile
                (:profile members)
                  assert=
                    {}
                      7 $ Option :some |Ada
                      8 $ Option :none
                    , members
                _ $ raise "|Expected profile view"
            :tags $ #{} :migration :unit
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            filter-map-kv sessions $ fn (id session)
              let
                  name $ match (:user-id session)
                    (:none) (Option :none)
                    (:some user-id)
                      .map (get users user-id)
                        fn (user) (:name user)
                MapEntryDecision :keep id name
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Number 'app.schema/Session) (:: 'Map 'String 'app.schema/User)
            :return $ :: 'Map 'Number $ :: 'Option 'String
        'twig-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-message (message users)
            schema/MessageView :id (:id message) :text (:text message) :time (:time message) :type (:type message) :author-id (:author-id message) :blotted? (:blotted? message) :user $ .map
              .and-then (:author-id message)
                fn (id) (get users id)
              , twig-user
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/MessageView)
            :args $ [] 'app.schema/Message $ :: 'Map 'String 'app.schema/User
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require
            app.twig.user :refer $ twig-user
            calcit.std.rand :refer $ rand-hex-color!
            app.schema :as schema
    'app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user)
            schema/UserView :id (:id user) :name (:name user) :nickname (:nickname user) :avatar $ :avatar user
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/UserView)
            :args $ [] 'app.schema/User
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.user
          :require $ app.schema :as schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
            match op
              (:session/connect) (session/connect db sid op-id op-time)
              (:session/disconnect) (session/disconnect db sid op-id op-time)
              (:session/remove-message payload) (session/remove-message db payload sid op-id op-time)
              (:user/log-in payload) (user/log-in db payload sid op-id op-time)
              (:user/sign-up payload) (user/sign-up db payload sid op-id op-time)
              (:user/log-out) (user/log-out db sid op-id op-time)
              (:router/change payload) (router/change db payload sid op-id op-time)
              (:message/create payload) (message/create-message db payload sid op-id op-time)
              (:message/clear) (message/clear db sid op-id op-time)
              (:message/blot-out payload) (message/blot-out db payload sid op-id op-time)
              (:message/show-result) (message/show-result db sid op-id op-time)
              (:template/create payload) (template/create-template db payload sid op-id op-time)
              (:template/remove payload) (template/remove-template db payload sid op-id op-time)
              (:template/choose payload) (template/choose db payload sid op-id op-time)
              (:template/add-card payload) (template/add-card db payload sid op-id op-time)
              (:template/remove-card payload) (template/remove-card db payload sid op-id op-time)
              (:states cursor state) db
              (:effect/connect) db
              (:reel/reset) db
              (:reel/merge) db
              (:effect/persist) db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'app.schema/Op 'Number 'String 'Number
          :tests $ []
            %{} 'TestEntry (:name |account-login-notifications-and-logout)
              :code $ quote $ let
                  connected $ updater schema/database (schema/Op :session/connect) 7 |connect 1
                  registered $ updater connected
                    schema/Op :user/sign-up $ [] |Ada |secret
                    , 7 |u 2
                  logged-out $ updater registered (schema/Op :user/log-out) 7 |logout 3
                  wrong $ updater logged-out
                    schema/Op :user/log-in $ [] |Ada |wrong
                    , 7 |wrong 4
                  logged-in $ updater wrong
                    schema/Op :user/log-in $ [] |Ada |secret
                    , 7 |login 5
                assert= (Option :some |u)
                  :user-id $ .unwrap $ get (:sessions registered) 7
                assert= (Option :none)
                  :user-id $ .unwrap $ get (:sessions logged-out) 7
                assert= (Option :none)
                  :user-id $ .unwrap $ get (:sessions wrong) 7
                assert= 1 $ .len $ :messages
                  .unwrap $ get (:sessions wrong) 7
                assert= (Option :some |u)
                  :user-id $ .unwrap $ get (:sessions logged-in) 7
              :tags $ #{} :migration :unit
            %{} 'TestEntry
              :name |typed-game-result-consumes-map-first-cards-and-keeps-suffix
              :code $ quote $ let
                  connected $ updater schema/database (schema/Op :session/connect) 7 |connect 1
                  registered $ updater connected
                    schema/Op :user/sign-up $ [] |Ada |secret
                    , 7 |u 2
                  created $ updater registered (schema/Op :template/create "|{谁}在{哪里}。") 7 |t 3
                  chosen $ updater created (schema/Op :template/choose |t) 7 |choose 4
                  not-ready $ updater chosen (schema/Op :message/show-result) 7 |blocked 5
                  a1 $ updater chosen
                    schema/Op :template/add-card $ schema/AddCard :template-id |t :slot-id |t-0 :text "|小猫 🌸"
                    , 7 |a1 6
                  a2 $ updater a1
                    schema/Op :template/add-card $ schema/AddCard :template-id |t :slot-id |t-0 :text "|小狗"
                    , 7 |a2 7
                  b1 $ updater a2
                    schema/Op :template/add-card $ schema/AddCard :template-id |t :slot-id |t-1 :text "|公园"
                    , 7 |b1 8
                  ready $ updater b1
                    schema/Op :template/add-card $ schema/AddCard :template-id |t :slot-id |t-1 :text "|家里"
                    , 7 |b2 9
                  template $ .unwrap $ get (:templates ready) |t
                  slot0 $ .unwrap $ get (:slots template) |t-0
                  slot1 $ .unwrap $ get (:slots template) |t-1
                  key0 $ .unwrap $ message/first-card-key slot0
                  key1 $ .unwrap $ message/first-card-key slot1
                  expected $ str
                    :text $ .unwrap $ get (:cards slot0) key0
                    , "|在"
                      :text $ .unwrap $ get (:cards slot1) key1
                      , "|。"
                  shown $ updater ready (schema/Op :message/show-result) 7 |result 10
                  result-message $ .unwrap $ get (:messages shown) |result
                  after0 $ .unwrap $ get
                    :slots $ .unwrap $ get (:templates shown) |t
                    , |t-0
                  after1 $ .unwrap $ get
                    :slots $ .unwrap $ get (:templates shown) |t
                    , |t-1
                  shown2 $ updater shown (schema/Op :message/show-result) 7 |result2 11
                  blocked2 $ updater shown2 (schema/Op :message/show-result) 7 |blocked2 12
                assert= chosen not-ready
                assert= expected $ :text result-message
                assert= :quote $ :type result-message
                assert= (Option :none) (:author-id result-message)
                assert= 1 $ .len $ :cards after0
                assert= 1 $ .len $ :cards after1
                assert= (Option :none)
                  get (:cards after0) key0
                assert= (Option :none)
                  get (:cards after1) key1
                assert= 0 $ .len $ :cards
                  .unwrap $ get
                    :slots $ .unwrap $ get (:templates shown2) |t
                    , |t-0
                assert= shown2 blocked2
              :tags $ #{} :migration :unit
            %{} 'TestEntry (:name |chat-clear-keeps-five-recent-and-blot-state)
              :code $ quote $ let
                  filled $ .fold (range 1 8) schema/database $ fn (db n)
                    hint-fn $ {}
                      :args $ [] 'app.schema/Db 'Number
                      :return 'app.schema/Db
                    updater db
                      schema/Op :message/create $ str |text- n
                      , 7 (str |m n) n
                  blotted $ updater filled (schema/Op :message/blot-out |m4) 7 |blot 8
                  cleared $ updater blotted (schema/Op :message/clear) 7 |clear 100
                  messages $ :messages cleared
                assert= 6 $ .len messages
                assert= (Option :none) (get messages |m1)
                assert= (Option :none) (get messages |m2)
                assert= true $ .some? $ get messages |m3
                assert= true $ .some? $ get messages |m7
                assert= true $ :blotted? $ .unwrap (get messages |m4)
                assert= "|清除了消息" $ :text $ .unwrap (get messages |clear)
                assert= (Option :none)
                  :author-id $ .unwrap $ get messages |clear
              :tags $ #{} :migration :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require (app.updater.session :as session) (app.updater.user :as user) (app.updater.router :as router) (app.updater.message :as message) (app.updater.template :as template) (app.schema :as schema)
    'app.updater.message $ %{} 'FileEntry
      :defs $ {}
        'blot-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn blot-out (db message-id sid op-id op-time)
            match
              get (:messages db) message-id
              (:none) db
              (:some message)
                assoc db :messages $ assoc (:messages db) message-id $ assoc message :blotted? true
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'String 'Number 'String 'Number
        'clear $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn clear (db sid op-id op-time)
            let
                messages $ :messages db
                ordered $ sort
                  map-list-kv messages $ fn (id message) id
                  fn (a b)
                    &compare
                      :time $ .unwrap $ get messages b
                      :time $ .unwrap $ get messages a
                retained $ .fold (take ordered 5) ({})
                  fn (acc id)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'String 'app.schema/Message) 'String
                      :return $ :: 'Map 'String 'app.schema/Message
                    assoc acc id $ .unwrap $ get messages id
              record-operation (assoc db :messages retained) sid op-id op-time "|清除了消息"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Number 'String 'Number
        'compose-result $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn compose-result (template insertions)
            join-string
              map-indexed (:pieces template)
                fn (idx piece)
                  str piece $ .unwrap-or (nth insertions idx) |
              , |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'app.schema/Template $ :: 'List 'String
          :tests $ [] $ %{} 'TestEntry (:name |trailing-piece-and-no-slot-template)
            :code $ quote $ do
              assert= "|小猫在公园。" $ compose-result
                schema/Template :id |t :text "|{谁}在{哪里}。" :pieces ([] | "|在" "|。") :slots $ {}
                  |t-0 $ schema/Slot :id |t-0 :order 0 :text "|{谁}" :cards $ {}
                  |t-1 $ schema/Slot :id |t-1 :order 1 :text "|{哪里}" :cards $ {}
                [] "|小猫" "|公园"
              assert= "|没有填空。" $ compose-result
                schema/Template :id |plain :text "|没有填空。" :pieces ([] "|没有填空。") :slots $ {}
                []
            :tags $ #{} :migration :unit
        'create-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-message (db text sid op-id op-time)
            assoc db :messages $ assoc (:messages db) op-id $ schema/Message :id op-id :text text :time op-time :type :message :author-id (session/user-id db sid) :blotted? false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'String 'Number 'String 'Number
        'first-card-key $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn first-card-key (slot)
            first $ map-list-kv (:cards slot)
              fn (id card) id
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Slot
            :return $ :: 'Option 'String
        'ordered-slots $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ordered-slots (template)
            sort
              map-list-kv (:slots template)
                fn (id slot) slot
              fn (a b)
                &compare (:order a) (:order b)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Template
            :return $ :: 'List 'app.schema/Slot
        'record-operation $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn record-operation (db sid op-id op-time text)
            assoc db :messages $ assoc (:messages db) op-id $ schema/Message :id op-id :text text :time op-time :type :operation :author-id (session/user-id db sid) :blotted? false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Number 'String 'Number 'String
        'show-result $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn show-result (db sid op-id op-time)
            match
              .and-then
                :template-id $ :game db
                fn (id)
                  get (:templates db) id
              (:none) db
              (:some template)
                let
                    slots $ ordered-slots template
                  if
                    every? slots $ fn (slot)
                      not $ empty? $ :cards slot
                    let
                        insertions $ map slots $ fn (slot)
                          let
                              key $ .unwrap $ first-card-key slot
                              card $ .unwrap $ get (:cards slot) key
                            :text card
                        content $ compose-result template insertions
                      -> db
                        assoc :templates $ assoc (:templates db) (:id template)
                          assoc template :slots $ filter-map-kv (:slots template)
                            fn (id slot)
                              MapEntryDecision :keep id $ .fold (first-card-key slot)
                                fn () slot
                                fn (key)
                                  assoc slot :cards $ dissoc (:cards slot) key
                        assoc :messages $ assoc (:messages db) op-id $ schema/Message :id op-id :text content :time op-time :type :quote :author-id (Option :none) :blotted? false
                    , db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.message
          :require (app.schema :as schema) (app.updater.session :as session)
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db route sid op-id op-time)
            session/update-session db sid $ fn (current) (assoc current :router route)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'app.schema/Router 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
          :require $ app.updater.session :as session
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'add-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-message (db sid id text)
            update-session db sid $ fn (session)
              assoc session :messages $ assoc (:messages session) id $ schema/Notification :id id :text text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Number 'String 'String
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db sid op-id op-time)
            assoc db :sessions $ assoc (:sessions db) sid $ assoc schema/session :id sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Number 'String 'Number
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db sid op-id op-time)
            assoc db :sessions $ dissoc (:sessions db) sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Number 'String 'Number
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db message-id sid op-id op-time)
            update-session db sid $ fn (session)
              assoc session :messages $ dissoc (:messages session) message-id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'String 'Number 'String 'Number
        'update-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-session (db sid f)
            match
              get (:sessions db) sid
              (:some session)
                assoc db :sessions $ assoc (:sessions db) sid $ f session
              (:none) db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Number $ :: 'Fn
              {} (:return 'app.schema/Session)
                :args $ [] 'app.schema/Session
        'user-id $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn user-id (db sid)
            .and-then
              get (:sessions db) sid
              fn (session) (:user-id session)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Db 'Number
            :return $ :: 'Option 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ app.schema :as schema
    'app.updater.template $ %{} 'FileEntry
      :defs $ {}
        'add-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-card (db payload sid op-id op-time)
            update-slot db (:template-id payload) (:slot-id payload)
              fn (slot)
                assoc slot :cards $ assoc (:cards slot) op-id $ schema/Card :id op-id :text (:text payload) :author-id (session/user-id db sid) :time op-time
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'app.schema/AddCard 'Number 'String 'Number
        'choose $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn choose (db template-id sid op-id op-time)
            let
                text $ .fold
                  get (:templates db) template-id
                  fn () |
                  fn (template) (:text template)
              message/record-operation
                assoc db :game $ schema/Game :template-id $ Option :some template-id
                , sid op-id op-time $ str "|切换了模板: " text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'String 'Number 'String 'Number
        'create-template $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-template (db text sid op-id op-time)
            message/record-operation
              assoc db :templates $ assoc (:templates db) op-id $ parse-template text op-id
              , sid op-id op-time $ str "|创建了模板: " text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'String 'Number 'String 'Number
          :tests $ [] $ %{} 'TestEntry (:name |typed-template-card-lifecycle-and-author)
            :code $ quote $ let
                db $ assoc schema/database :sessions $ {}
                  7 $ -> schema/session (assoc :id 7)
                    assoc :user-id $ Option :some |u
                created $ create-template db "|{谁}在{哪里}。" 7 |t 10
                chosen $ choose created |t 7 |choose 11
                with-card $ add-card chosen (schema/AddCard :template-id |t :slot-id |t-0 :text "|小猫 🐈") 7 |card 12
                template $ .unwrap $ get (:templates with-card) |t
                slot $ .unwrap $ get (:slots template) |t-0
                card $ .unwrap $ get (:cards slot) |card
                removed-card $ remove-card with-card (schema/RemoveCard :template-id |t :slot-id |t-0 :card-id |card) 7 |remove-card 13
                removed-template $ remove-template removed-card |t 7 |remove-template 14
                creation-message $ .unwrap $ get (:messages created) |t
              assert= (Option :some |t)
                :template-id $ :game chosen
              assert= "|小猫 🐈" $ :text card
              assert= (Option :some |u) (:author-id card)
              assert= 12 $ :time card
              assert= 0 $ .len $ :cards
                .unwrap $ get
                  :slots $ .unwrap $ get (:templates removed-card) |t
                  , |t-0
              assert= 0 $ .len $ :templates removed-template
              assert= (Option :some |t)
                :template-id $ :game removed-template
              assert= 3 $ .len $ :messages removed-template
              assert= "|创建了模板: {谁}在{哪里}。" $ :text creation-message
              assert= (Option :some |u) (:author-id creation-message)
              assert= (Option :none) (session/user-id schema/database 99)
              assert= with-card $ add-card with-card (schema/AddCard :template-id |missing :slot-id |no-slot :text "|not inserted") 7 |unused 15
            :tags $ #{} :migration :unit
        'parse-template $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-template (text op-id)
            let
                slots $ map-indexed (re-find-all text slot-pattern)
                  fn (idx text)
                    schema/Slot :id (str op-id |- idx) :order idx :text text :cards $ {}
              schema/Template :id op-id :text text :pieces (re-split text slot-pattern) :slots $ .fold slots ({})
                fn (acc slot)
                  hint-fn $ {}
                    :args $ [] (:: 'Map 'String 'app.schema/Slot) 'app.schema/Slot
                    :return $ :: 'Map 'String 'app.schema/Slot
                  assoc acc (:id slot) slot
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Template)
            :args $ [] 'String 'String
          :tests $ [] $ %{} 'TestEntry (:name |unicode-and-repeated-slots-preserve-order)
            :code $ quote $ let
                template $ parse-template "|{谁}在{哪里}，{谁}笑。" |template
                slots $ :slots template
              assert= ([] | "|在" "|，" "|笑。") (:pieces template)
              assert= 3 $ .len slots
              assert= "|{谁}" $ :text $ .unwrap (get slots |template-0)
              assert= "|{哪里}" $ :text $ .unwrap (get slots |template-1)
              assert= "|{谁}" $ :text $ .unwrap (get slots |template-2)
              assert= 2 $ :order $ .unwrap (get slots |template-2)
              assert= ({})
                :cards $ .unwrap $ get slots |template-0
            :tags $ #{} :migration :unit
        'remove-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-card (db payload sid op-id op-time)
            update-slot db (:template-id payload) (:slot-id payload)
              fn (slot)
                assoc slot :cards $ dissoc (:cards slot) (:card-id payload)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'app.schema/RemoveCard 'Number 'String 'Number
        'remove-template $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-template (db template-id sid op-id op-time)
            let
                text $ .fold
                  get (:templates db) template-id
                  fn () |
                  fn (template) (:text template)
              message/record-operation
                assoc db :templates $ dissoc (:templates db) template-id
                , sid op-id op-time $ str "|删除了模板: " text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'String 'Number 'String 'Number
        'update-slot $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-slot (db template-id slot-id f)
            match
              get (:templates db) template-id
              (:none) db
              (:some template)
                match
                  get (:slots template) slot-id
                  (:none) db
                  (:some slot)
                    assoc db :templates $ assoc (:templates db) template-id $ assoc template :slots
                      assoc (:slots template) slot-id $ f slot
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'String 'String $ :: 'Fn
              {} (:return 'app.schema/Slot)
                :args $ [] 'app.schema/Slot
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.template
          :require
            app.config :refer $ slot-pattern
            regex.core :refer $ re-find-all re-split
            app.schema :as schema
            app.updater.session :as session
            app.updater.message :as message
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'find-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn find-user (db username)
            find
              map-list-kv (:users db)
                fn (id user) user
              fn (user)
                = username $ :name user
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Db 'String
            :return $ :: 'Option 'app.schema/User
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db credentials sid op-id op-time)
            let
                username $ .unwrap $ nth credentials 0
                password $ .unwrap $ nth credentials 1
              match (find-user db username)
                (:some user)
                  if
                    = (md5 password) (:password user)
                    session/update-session db sid $ fn (current)
                      assoc current :user-id $ Option :some $ :id user
                    session/add-message db sid op-id $ str "|Wrong password for " username
                (:none)
                  session/add-message db sid op-id $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db (:: 'List 'String) 'Number 'String 'Number
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db sid op-id op-time)
            session/update-session db sid $ fn (current)
              assoc current :user-id $ Option :none
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Number 'String 'Number
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db credentials sid op-id op-time)
            let
                username $ .unwrap $ nth credentials 0
                password $ .unwrap $ nth credentials 1
              match (find-user db username)
                (:some user)
                  session/add-message db sid op-id $ str "|Name is taken: " username
                (:none)
                  let
                      new-user $ schema/User :id op-id :name username :nickname (Option :some username) :avatar (Option :none) :password $ md5 password
                      next-db $ assoc db :users $ assoc (:users db) op-id new-user
                    session/update-session next-db sid $ fn (current)
                      assoc current :user-id $ Option :some op-id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db (:: 'List 'String) 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require (app.schema :as schema) (app.updater.session :as session)
            calcit.std.hash :refer $ md5
