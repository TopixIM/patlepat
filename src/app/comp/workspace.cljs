
(ns app.comp.workspace
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp list-> <> span div]]
            [app.config :as config]))

(defcomp
 comp-tabs
 (selected tabs)
 (list->
  {:style ui/row}
  (->> tabs
       (map
        (fn [info]
          [(:name info)
           (div
            {:style (merge
                     {:padding "0 8px",
                      :font-family ui/font-fancy,
                      :font-weight 300,
                      :cursor :pointer,
                      :font-size 20,
                      :color (hsl 0 0 60)}
                     (if (= selected (:name info)) {:font-weight 700, :color (hsl 0 0 30)})),
             :on-click (fn [e d!] (d! :router/change {:name (:name info)}))}
            (<> (:title info)))])))))

(defcomp
 comp-workspace
 (router)
 (div
  {:style (merge ui/expand ui/column)}
  (comp-tabs
   (:name router)
   [{:title "Workspace", :name :home} {:title "Templates", :name :templates}])
  (if (= :templates (:name router)) (<> "TEMPLATES") (<> "WORKSPACE"))))
