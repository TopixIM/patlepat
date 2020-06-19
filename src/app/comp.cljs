
(ns app.comp
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp list-> >> <> span div]]
            [app.config :as config]))

(defcomp
 comp-placeholder
 (text)
 (div
  {:style (merge
           ui/center
           {:padding 16,
            :font-family ui/font-fancy,
            :color (hsl 0 0 80),
            :font-size 12,
            :font-style :italic})}
  (<> text)))

(defcomp
 comp-tabs
 (selected tabs)
 (list->
  {:style (merge ui/row {:padding "8px 16px"})}
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
                      :font-size 16,
                      :color (hsl 0 0 70),
                      :line-height "32px"}
                     (if (= selected (:name info)) {:font-weight 500, :color (hsl 0 0 30)})),
             :on-click (fn [e d!] (d! :router/change {:name (:name info)}))}
            (<> (:title info)))])))))
