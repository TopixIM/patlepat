
(ns app.comp.templates
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp list-> >> <> span div a]]
            [app.config :as config]
            [respo-alerts.core :refer [use-prompt use-confirm]]
            [app.comp :refer [comp-placeholder]]))

(defcomp
 comp-template-preview
 (template)
 (list->
  {}
  (->> (interleave
        (concat (:pieces template) (repeat 10 ""))
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
             (<> item {:color (hsl 0 0 50)}))])))))

(defcomp
 comp-templates
 (states templates selected)
 (let [template-editor (use-prompt (>> states :editor) {:text "编辑模板, 用 {什么} 来插入填空位置"})
       remove-plugin (use-confirm (>> states :remove) {:text "确认真的要删除模板吗"})]
   (div
    {:style (merge ui/expand ui/column)}
    (div
     {:style ui/row-parted}
     (span nil)
     (a
      {:inner-text "添加模板",
       :style ui/link,
       :on-click (fn [e d!]
         ((:show template-editor) d! (fn [text] (d! :template/create text))))}))
    (list->
     {:style {:padding "0px 4px"}}
     (->> templates
          (map
           (fn [[k template]]
             [k
              (div
               {:style (merge
                        ui/row-parted
                        {:padding "4px 8px", :border-bottom (str "1px solid " (hsl 0 0 94))}
                        (if (= selected (:id template)) {:background-color (hsl 0 0 97)}))}
               (div
                {}
                (comp-template-preview template)
                (div {} (<> (:text template) {:color (hsl 0 0 70), :font-size 10})))
               (if-not (= selected (:id template))
                 (div
                  {}
                  (a
                   {:style ui/link,
                    :inner-text "使用该模板",
                    :on-click (fn [e d!] (d! :template/choose (:id template)))})
                  (=< 8 nil)
                  (a
                   {:style ui/link,
                    :inner-text "删除",
                    :on-click (fn [e d!]
                      ((:show remove-plugin) d! (fn [] (d! :template/remove (:id template)))))}))))]))))
    (if (empty? templates) (comp-placeholder "No tempaltes"))
    (:ui template-editor)
    (:ui remove-plugin))))
