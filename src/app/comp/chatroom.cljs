
(ns app.comp.chatroom
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp <> list-> span div textarea button a]]
            [app.config :as config]
            [clojure.string :as string]))

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
    {:style (merge ui/expand ui/column {:padding 8} styles)}
    (div
     {:style ui/row-parted}
     (span nil)
     (a
      {:style ui/link, :inner-text "Clear", :on-click (fn [e d!] (d! :message/clear nil))}))
    (if (empty? messages)
      (div
       {:style (merge
                ui/center
                {:padding 16, :font-family ui/font-fancy, :color (hsl 0 0 70)})}
       (<> "No messages")))
    (list->
     {:style ui/expand}
     (->> messages
          (sort-by (fn [[k message]] (:time message)))
          (map
           (fn [[k message]]
             [(:time message)
              (div
               {}
               (<> (str (or (:name (:user message)) "GUEST") ":"))
               (=< 8 nil)
               (<> (:text message)))]))))
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
     (button
      {:style ui/button, :inner-text "Send", :on-click (fn [e d!] (send-message d!))})))))
