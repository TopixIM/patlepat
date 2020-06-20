
(ns app.updater.template
  (:require [app.config :refer [slot-matcher]]
            [clojure.string :as string]
            [medley.core :refer [dissoc-in]]))

(defn add-card [db op-data sid op-id op-time session user]
  (assoc-in
   db
   [:templates (:template-id op-data) :slots (:slot-id op-data) :cards op-id]
   {:id op-id, :text (:text op-data), :time op-time, :author-id (:user-id session)}))

(defn choose [db op-data sid op-id op-time session user]
  (-> db
      (assoc-in [:game :template-id] op-data)
      (assoc-in
       [:messages op-id]
       {:type :operation,
        :id op-id,
        :time op-time,
        :author-id (:user-id session),
        :text (str "切换了模板: " (get-in db [:templates op-data :text]))})))

(defn create-template [db op-data sid op-id op-time session user]
  (let [pieces (string/split op-data slot-matcher)
        slots (re-seq slot-matcher op-data)
        data {:id op-id,
              :text op-data,
              :pieces (vec pieces),
              :slots (->> slots
                          (map-indexed
                           (fn [idx slot]
                             [(str op-id "-" idx)
                              {:id (str op-id "-" idx), :order idx, :text slot, :cards {}}]))
                          (into {}))}]
    (-> db
        (assoc-in [:templates op-id] data)
        (assoc-in
         [:messages op-id]
         {:type :operation,
          :id op-id,
          :time op-time,
          :author-id (:user-id session),
          :text (str "创建了模板: " op-data)}))))

(defn remove-card [db op-data sid op-id op-time session user]
  (dissoc-in
   db
   [:templates (:template-id op-data) :slots (:slot-id op-data) :cards (:card-id op-data)]))

(defn remove-template [db op-data sid op-id op-time session user]
  (-> db
      (dissoc-in [:templates op-data])
      (assoc-in
       [:messages op-id]
       {:type :operation,
        :id op-id,
        :time op-time,
        :author-id (:user-id session),
        :text (str "删除了模板: " (get-in db [:templates op-data :text]))})))
