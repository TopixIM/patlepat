
(ns app.comp.chatroom
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp <> list-> span div textarea button a]]
            [app.config :as config]
            [clojure.string :as string]
            [app.comp :refer [comp-placeholder]]
            ["dayjs" :as dayjs]
            [feather.core :refer [comp-icon comp-i]]))

(defcomp
 comp-message
 (message merged?)
 (case (:type message)
   :message
     (div
      {:style (merge ui/row {:margin "4px 0"})}
      (span
       {:inner-text (str (or (:name (:user message)) "GUEST")),
        :style (merge
                {:padding "0px 8px", :background-color (hsl 0 0 94), :border-radius "12px"}
                (if merged? {:opacity 0}))})
      (=< 8 nil)
      (div
       {:style ui/expand}
       (if (:blotted? message)
         (<> (:id message) {:color (hsl 0 0 80), :text-decoration :line-through})
         (<> (:text message)))
       (=< 8 nil)
       (<>
        (-> message :time dayjs (.format "HH:mm:ss"))
        {:color (hsl 0 0 80), :font-size 12, :font-family ui/font-fancy})
       (if-not (:blotted? message)
         (span
          {:class-name "invisible-link",
           :on-click (fn [e d!] (d! :message/blot-out (:id message)))}
          (comp-i :x 10 (hsl 0 80 80))))))
   :quote
     (div
      {:style (merge ui/row {:align-items :flex-start, :margin "4px 0"})}
      (<> "生成了" {:color (hsl 0 0 80)})
      (=< 8 nil)
      (div
       {:style ui/expand}
       (div
        {:style {:background-color (hsl 200 80 50),
                 :color :white,
                 :padding "2px 8px",
                 :border-radius "6px",
                 :font-size 20,
                 :line-height "30px"}}
        (<> (:text message)))))
   :operation
     (div
      {:style (merge ui/center {:margin "8px 0"})}
      (<>
       (str (get-in message [:user :name]) " " (:text message))
       {:color (hsl 0 0 100),
        :background-color (hsl 0 0 88),
        :padding "0 16px",
        :font-size 12,
        :line-height "20px",
        :border-radius "4px"}))
   (<> (str "Unknown message type: " (:type message)))))

(defcomp
 comp-chatroom
 (states messages styles)
 (let [cursor (:cursor states)
       state (or (:data states) {:draft ""})
       send-message (fn [d!]
                      (d! cursor (assoc state :draft ""))
                      (when (not (string/blank? (:draft state)))
                        (d! :message/create (string/trim (state :draft)))))]
   (div
    {:style (merge ui/expand ui/column {:padding 8, :position :relative} styles)}
    (if (> (count messages) 20)
      (a
       {:style (merge ui/link {:position :absolute, :top 8, :right 12}),
        :inner-text "清空",
        :on-click (fn [e d!] (d! :message/clear nil))}))
    (if (empty? messages) (comp-placeholder "没有消息"))
    (list->
     {:style (merge ui/expand {:padding-bottom 400})}
     (loop [pairs (->> messages (sort-by (fn [[k message]] (:time message))))
            last-user-id nil
            acc []]
       (if (empty? pairs)
         acc
         (let [message (last (first pairs))]
           (recur
            (rest pairs)
            (:author-id message)
            (conj
             acc
             [(:time message) (comp-message message (= last-user-id (:author-id message)))]))))))
    (div
     {:style (merge ui/row {:align-items :flex-start})}
     (textarea
      {:style (merge ui/expand ui/textarea),
       :placeholder "text message...",
       :value (state :draft),
       :on-input (fn [e d!] (d! cursor (assoc state :draft (:value e)))),
       :on-keydown (fn [e d!]
         (when (= 13 (:key-code e)) (send-message d!) (.preventDefault (:event e))))})
     (=< 8 nil)
     (a {:style ui/link, :inner-text "发送", :on-click (fn [e d!] (send-message d!))})))))
