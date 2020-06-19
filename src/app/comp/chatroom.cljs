
(ns app.comp.chatroom
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp <> list-> span div textarea button a]]
            [app.config :as config]
            [clojure.string :as string]
            [app.comp :refer [comp-placeholder]]))

(defcomp
 comp-message
 (message)
 (case (:type message)
   :message
     (div
      {:style {:margin "4px 0"}}
      (<> (str (or (:name (:user message)) "GUEST") ":"))
      (=< 8 nil)
      (<> (:text message)))
   :quote
     (div
      {:style (merge ui/row {:align-items :flex-start, :margin "4px 0"})}
      (<> "gen" {:color (hsl 0 0 80)})
      (=< 8 nil)
      (div
       {:style {:background-color (hsl 200 80 50),
                :color :white,
                :padding "2px 8px",
                :border-radius "6px",
                :font-size 20,
                :line-height "30px"}}
       (<> (:text message))))
   :operation
     (div
      {:style {:margin "4px 0"}}
      (<> (str (or (:name (:user message)) "Unkown")))
      (=< 8 nil)
      (<> (:text message) {:color (hsl 0 0 80)}))
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
    {:style (merge ui/expand ui/column {:padding 8} styles)}
    (div
     {:style ui/row-parted}
     (span nil)
     (a
      {:style ui/link, :inner-text "Clear", :on-click (fn [e d!] (d! :message/clear nil))}))
    (if (empty? messages) (comp-placeholder "No messages"))
    (list->
     {:style (merge ui/expand {:padding-bottom 400})}
     (->> messages
          (sort-by (fn [[k message]] (:time message)))
          (map (fn [[k message]] [(:time message) (comp-message message)]))))
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
