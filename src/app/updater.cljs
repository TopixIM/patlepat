
(ns app.updater
  (:require [app.updater.session :as session]
            [app.updater.user :as user]
            [app.updater.router :as router]
            [app.schema :as schema]
            [respo-message.updater :refer [update-messages]]
            [app.updater.message :as message]
            [app.updater.template :as template]))

(defn updater [db op op-data sid op-id op-time]
  (let [session (get-in db [:sessions sid])
        user-id (:user-id session)
        user (if (some? user-id) (get-in db [:users user-id]) nil)
        f (case op
            :session/connect session/connect
            :session/disconnect session/disconnect
            :session/remove-message session/remove-message
            :user/log-in user/log-in
            :user/sign-up user/sign-up
            :user/log-out user/log-out
            :router/change router/change
            :message/create message/create-message
            :message/clear message/clear
            :message/blot-out message/blot-out
            :template/create template/create-template
            :template/remove template/remove-template
            :template/choose template/choose
            :template/add-card template/add-card
            :template/remove-card template/remove-card
            (do (println "Unknown op:" op) identity))]
    (f db op-data sid op-id op-time session user)))
