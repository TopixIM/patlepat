
(ns app.schema )

(def card {:id nil, :text "", :author-id nil, :time nil})

(def message {:id nil, :author-id nil, :text "", :type :message, :time nil, :blotted? nil})

(def router {:name nil, :title nil, :data {}, :router nil})

(def session
  {:user-id nil,
   :id nil,
   :nickname nil,
   :router (do router {:name :home, :data nil, :router nil}),
   :messages {}})

(def slot {:id nil, :order 0, :text "", :cards (do card {})})

(def template {:id nil, :text "", :pieces [], :slots (do slot {})})

(def user {:name nil, :id nil, :nickname nil, :avatar nil, :password nil})

(def database
  {:sessions (do session {}),
   :users (do user {}),
   :messages (do message {}),
   :templates (do template {}),
   :game {:template-id nil}})
