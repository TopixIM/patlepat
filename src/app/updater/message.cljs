
(ns app.updater.message (:require [clojure.string :as string]))

(defn blot-out [db op-data sid op-id op-time session user]
  (assoc-in db [:messages op-data :blotted?] true))

(defn clear [db op-data sid op-id op-time session user]
  (update
   db
   :messages
   (fn [messages]
     (assoc
      (->> messages
           (sort-by (fn [[k message]] (unchecked-negate (:time message))))
           (take 5)
           (into {}))
      op-id
      {:id op-id,
       :text "清除了消息",
       :time op-time,
       :type :operation,
       :author-id (:user-id session)}))))

(defn create-message [db op-data sid op-id op-time session user]
  (assoc-in
   db
   [:messages op-id]
   {:id op-id, :text op-data, :author-id (:user-id session), :time op-time, :type :message}))

(defn show-result [db op-data sid op-id op-time session user]
  (let [template-id (get-in db [:game :template-id])
        template (get-in db [:templates template-id])
        insertions (->> template
                        :slots
                        (map (fn [[k slot]] (:text (last (first (:cards slot)))))))
        content (string/join
                 ""
                 (interleave (concat (:pieces template) (repeat 10 "")) insertions))]
    (-> db
        (assoc-in [:messages op-id] {:id op-id, :time op-time, :text content, :type :quote})
        (update-in
         [:templates template-id :slots]
         (fn [slots]
           (->> slots
                (map
                 (fn [[k slot]]
                   [k (update slot :cards (fn [cards] (->> cards rest (into {}))))]))
                (into {})))))))
