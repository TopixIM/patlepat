
(ns app.comp.profile
  (:require [hsl.core :refer [hsl]]
            [app.schema :as schema]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp list-> <> span div button a]]
            [respo.comp.space :refer [=<]]
            [app.config :as config]))

(defcomp
 comp-profile
 (user members)
 (div
  {:style (merge ui/flex {:padding 16})}
  (div
   {:style {:font-family ui/font-fancy, :font-size 32, :font-weight 100}}
   (<> (str "Hello! " (:name user))))
  (=< nil 16)
  (div
   {:style ui/row}
   (<> "Members:")
   (=< 8 nil)
   (list->
    {:style ui/row}
    (->> members
         (map
          (fn [[k username]]
            [k
             (div
              {:style {:padding "0 8px",
                       :border (str "1px solid " (hsl 0 0 80)),
                       :border-radius "16px",
                       :margin "0 4px"}}
              (<> username))])))))
  (=< nil 48)
  (div
   {}
   (button
    {:style (merge ui/button),
     :on-click (fn [e d!]
       (js/location.replace (str js/location.origin "?time=" (.now js/Date))))}
    (<> "Refresh"))
   (=< 8 nil)
   (button
    {:style (merge ui/button {:color :red, :border-color :red}),
     :on-click (fn [e dispatch!]
       (dispatch! :user/log-out nil)
       (.removeItem js/localStorage (:storage-key config/site)))}
    (<> "Log out")))
  (=< nil 48)
  (a
   {:href "https://github.com/TopixIM/patlepat",
    :inner-text "GitHub Address",
    :target "_blank"})))
