
(ns app.updater.message )

(defn clear [db op-data sid op-id op-time session user] (assoc db :messages {}))

(defn create-message [db op-data sid op-id op-time session user]
  (assoc-in
   db
   [:messages op-id]
   {:id op-id, :text op-data, :author-id (:user-id session), :time op-time, :type :message}))
