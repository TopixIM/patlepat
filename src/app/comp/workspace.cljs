
(ns app.comp.workspace
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp >> list-> <> span div a button]]
            [app.config :as config]
            [app.comp.templates :refer [comp-templates comp-template-preview]]
            [respo-alerts.core :refer [use-prompt]]
            [clojure.string :as string]
            [app.comp :refer [comp-tabs comp-placeholder]]
            [feather.core :refer [comp-icon]]))

(defcomp
 comp-card
 (card mine? on-remove)
 (div
  {:style {:display :inline-block,
           :padding "8px 16px",
           :border (str "1px solid " (hsl 0 0 90)),
           :margin "4px"}}
  (if mine?
    (span
     {}
     (<> (:text card))
     (<>
      "(我的)"
      {:font-size 12, :color (hsl 0 0 80), :line-height "28px", :vertical-align :middle})
     (=< 8 nil)
     (comp-icon
      :x
      {:color (hsl 0 80 60), :cursor :pointer, :font-size 12}
      (fn [e d!] (on-remove d!))))
    (<>
     (string/replace (:text card) #"." "*")
     {:font-size 24,
      :line-height "28px",
      :font-family ui/font-code,
      :vertical-align :middle}))))

(defcomp
 comp-slot
 (states slot template-id user-id)
 (let [create-plugin (use-prompt
                      (>> states :create)
                      {:text "Add card", :button-text "Add it"})]
   (div
    {:style (merge
             ui/expand
             ui/column
             {:border-left (str "1px solid " (hsl 0 0 90)), :padding 8})}
    (div
     {}
     (<> (:text slot) {:color (hsl 280 80 70)})
     (=< 8 nil)
     (a
      {:style ui/link,
       :inner-text "增加卡片",
       :on-click (fn [e d!]
         ((:show create-plugin)
          d!
          (fn [text]
            (when-not (string/blank? text)
              (d!
               :template/add-card
               {:template-id template-id, :text text, :slot-id (:id slot)})))))}))
    (list->
     {}
     (->> slot
          :cards
          (map
           (fn [[k card]]
             [k
              (comp-card
               card
               (= user-id (:author-id card))
               (fn [d!]
                 (d!
                  :template/remove-card
                  {:template-id template-id, :slot-id (:id slot), :card-id (:id card)})))]))))
    (if (empty? (:cards slot)) (comp-placeholder "没有卡片"))
    (:ui create-plugin))))

(defcomp
 comp-workspace
 (states router templates game user)
 (div
  {:style (merge ui/expand ui/column {:flex 1.5})}
  (comp-tabs (:name router) [{:title "主页", :name :home} {:title "模板", :name :templates}])
  (if (= :templates (:name router))
    (comp-templates (>> states :templates) templates (:template-id game))
    (let [template (get templates (:template-id game))
          has-next? (->> template
                         :slots
                         vals
                         (map :cards)
                         (every? (fn [xs] (pos? (count xs)))))]
      (if (some? template)
        (div
         {:style (merge ui/expand ui/column {:padding 16})}
         (div
          {:style ui/row-middle}
          (comp-template-preview template)
          (=< 16 nil)
          (if has-next?
            (button
             {:style (merge ui/button {:color :white, :background-color (hsl 200 90 60)}),
              :inner-text "拼接句子",
              :on-click (fn [e d!] (d! :message/show-result nil))})
            (<> "卡片种类不足" {:color (hsl 10 80 76)})))
         (=< nil 20)
         (list->
          {:style ui/row}
          (->> template
               :slots
               (sort-by :order)
               (map
                (fn [[k slot]] [k (comp-slot (>> states k) slot (:id template) (:id user))])))))
        (div
         {:style {:padding 16, :font-family ui/font-fancy, :font-weight 300}}
         (<> "没有选择模板, 或者模板已不存在")))))))
