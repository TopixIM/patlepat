
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
  (assoc-in db [:game :template-id] op-data))

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
    (assoc-in db [:templates op-id] data)))

(defn remove-card [db op-data sid op-id op-time session user]
  (dissoc-in
   db
   [:templates (:template-id op-data) :slots (:slot-id op-data) :cards (:card-id op-data)]))

(defn remove-template [db op-data sid op-id op-time session user]
  (dissoc-in db [:templates op-data]))
