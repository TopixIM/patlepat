
(ns app.updater.template
  (:require [app.config :refer [slot-matcher]] [clojure.string :as string]))

(defn create-template [db op-data sid op-id op-time session user]
  (let [pieces (string/split op-data slot-matcher)
        slots (re-seq slot-matcher op-data)
        data {:id op-id,
              :text op-data,
              :pieces (vec pieces),
              :slots (->> slots
                          (map-indexed
                           (fn [idx slot]
                             [idx
                              {:id (str op-id "-" idx), :order idx, :text slot, :cards {}}]))
                          (into {}))}]
    (assoc-in db [:templates op-id] data)))
