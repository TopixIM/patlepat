
(ns app.comp.templates
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp list-> >> <> span div a]]
            [app.config :as config]
            [respo-alerts.core :refer [use-prompt]]))

(defcomp
 comp-templates
 (states templates)
 (let [template-editor (use-prompt (>> states :editor) {:text "Edit a template"})]
   (div
    {:style (merge ui/expand ui/column)}
    (div
     {:style ui/row-parted}
     (span nil)
     (a
      {:inner-text "Add",
       :style ui/link,
       :on-click (fn [e d!]
         ((:show template-editor) d! (fn [text] (d! :template/create text))))}))
    (list->
     {}
     (->> templates
          (map
           (fn [[k template]]
             [k
              (div
               {:style (merge
                        ui/row-parted
                        {:padding "4px 8px", :border-bottom (str "1px solid " (hsl 0 0 94))})}
               (div
                {}
                (list->
                 {}
                 (->> (interleave
                       (:pieces template)
                       (->> (:slots template) (map (fn [[j slot]] (:text slot)))))
                      (map-indexed
                       (fn [idx item]
                         [idx
                          (if (re-matches config/slot-matcher item)
                            (<>
                             item
                             {:color (hsl 200 80 70),
                              :font-size 24,
                              :margin "0 4px",
                              :vertical-align :bottom})
                            (<> item {:color (hsl 0 0 50)}))]))))
                (div {} (<> (:text template) {:color (hsl 0 0 70), :font-size 10})))
               (div
                {}
                (a {:style ui/link, :inner-text "Choose"})
                (=< 8 nil)
                (a {:style ui/link, :inner-text "Edit"})
                (=< 8 nil)
                (a {:style ui/link, :inner-text "Remove"})))]))))
    (:ui template-editor))))
