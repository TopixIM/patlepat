
{}
  :configs $ {} (:init-fn |app.client/main!) (:port 6001) (:reload-fn |app.client/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |alerts.calcit/ |respo-feather.calcit/
  :entries $ {}
    :server $ {} (:init-fn |app.server/main!) (:port 6001) (:reload-fn |app.server/reload!) (:storage-key |calcit.cirru)
      :modules $ [] |lilac/ |recollect/ |memof/ |ws-edn.calcit/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit-wss/ |calcit.std/ |calcit-regex/
  :ir $ {} (:package |app)
    :files $ {}
      |app.client $ {}
        :defs $ {}
          |*states $ {} (:at 1500541010211) (:by nil) (:id |HyttQ9UlgCSW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637150743753) (:by |B1y7Rc-Zz) (:id |BJqtmc8gx0BZ) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |BJjtXqUxg0SZ) (:text |*states) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |HkRKmc8leABb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |HyJ975UexAHW) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1584880530097) (:by |B1y7Rc-Zz) (:id |1Yuq22AQ1) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1584880530868) (:by |B1y7Rc-Zz) (:id |1GDjFomnM-) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1584880531270) (:by |B1y7Rc-Zz) (:id |zRWFjSytJ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584880532120) (:by |B1y7Rc-Zz) (:id |Bn7orHMVAa) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1584880533921) (:by |B1y7Rc-Zz) (:id |RkFtRwVgVp) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584880536346) (:by |B1y7Rc-Zz) (:id |ZZ5bgHrI0) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1584880536607) (:by |B1y7Rc-Zz) (:id |VrKjvp-zAs) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584880536837) (:by |B1y7Rc-Zz) (:id |vLzhsv8-1P) (:text |[]) (:type :leaf)
          |*store $ {} (:at 1500541010211) (:by nil) (:id |H1dE79UxlCHZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637150712644) (:by |B1y7Rc-Zz) (:id |HyFVQqIgxAH-) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |BJ9NQcLgx0rW) (:text |*store) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by |root) (:id |ry6EXcUleRBb) (:text |nil) (:type :leaf)
          |connect! $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
              |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                          |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |url-parse) (:type :leaf)
                              |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |js/location.href) (:type :leaf)
                              |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |true) (:type :leaf)
                      |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |host) (:type :leaf)
                          |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                              |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                                  |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |.-query) (:type :leaf)
                                  |v $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |.-host) (:type :leaf)
                              |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |js/location.hostname) (:type :leaf)
                      |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                          |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                              |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                                  |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |.-query) (:type :leaf)
                                  |v $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |.-port) (:type :leaf)
                              |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                                  |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |ws-connect!) (:type :leaf)
                      |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text "|\"ws://") (:type :leaf)
                          |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |host) (:type :leaf)
                          |v $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text "|\":") (:type :leaf)
                          |x $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                      |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |:on-open) (:type :leaf)
                              |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |event) (:type :leaf)
                                  |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |simulate-login!) (:type :leaf)
                          |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |:on-close) (:type :leaf)
                              |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |event) (:type :leaf)
                                  |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                                      |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                                      |r $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                  |v $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |js/console.error) (:type :leaf)
                                      |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text "|\"Lost connection!") (:type :leaf)
                          |v $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |:on-data) (:type :leaf)
                              |j $ {} (:at 1637150502252) (:by |B1y7Rc-Zz) (:text |on-server-data) (:type :leaf)
          |dispatch! $ {} (:at 1500541010211) (:by nil) (:id |ryUMQcUxeRrZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |SJwzX98xlCSb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |HkdGQqIlxCrW) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |BktMQc8xlRBb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |Sy5Gm5IllCS-) (:text |op) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |BJiMmqLxl0rW) (:text |op-data) (:type :leaf)
              |v $ {} (:at 1545107418516) (:by |root) (:id |Gql69ugEAF) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545107418516) (:by |root) (:id |51Rpmi_umT) (:text |when) (:type :leaf)
                  |j $ {} (:at 1545107418516) (:by |root) (:id |CxRa9Blecm) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545107418516) (:by |root) (:id |YbSYRTsLbB) (:text |and) (:type :leaf)
                      |j $ {} (:at 1545107418516) (:by |root) (:id |MGIzDtiW3m) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1545107418516) (:by |root) (:id |sv-l-rjfZO) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545107418516) (:by |root) (:id |QjIRMR4wIQ) (:text |not=) (:type :leaf)
                          |j $ {} (:at 1545107418516) (:by |root) (:id |A-yHxy0PyA) (:text |op) (:type :leaf)
                          |r $ {} (:at 1545107418516) (:by |root) (:id |nf3zYpFhDx) (:text |:states) (:type :leaf)
                  |r $ {} (:at 1545107418516) (:by |root) (:id |U-Yysz6Hq) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545107418516) (:by |root) (:id |N5evPZK3ey) (:text |println) (:type :leaf)
                      |j $ {} (:at 1545107418516) (:by |root) (:id |YCNzAjDdar) (:text "|\"Dispatch") (:type :leaf)
                      |r $ {} (:at 1545107418516) (:by |root) (:id |4Mv7h8CBBT) (:text |op) (:type :leaf)
                      |v $ {} (:at 1545107418516) (:by |root) (:id |gefK1DUUBg) (:text |op-data) (:type :leaf)
              |x $ {} (:at 1512319531669) (:by |B1y7Rc-Zz) (:id |HyVVcoZ-z) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1637152803240) (:by |B1y7Rc-Zz) (:id |H1xV4qoZbG) (:text |case-default) (:type :leaf)
                  |L $ {} (:at 1512319536359) (:by |B1y7Rc-Zz) (:id |Hk_Eqo-bM) (:text |op) (:type :leaf)
                  |P $ {} (:at 1637152800693) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637152800693) (:by |B1y7Rc-Zz) (:text |ws-send!) (:type :leaf)
                      |j $ {} (:at 1637152800693) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637152800693) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1637152800693) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637152800693) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                              |j $ {} (:at 1637152800693) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                          |r $ {} (:at 1637152800693) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637152800693) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                              |j $ {} (:at 1637152800693) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |v $ {} (:at 1637152800693) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637152800693) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1637152800693) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |T $ {} (:at 1500541010211) (:by nil) (:id |BkLQm9Uxe0BW) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1500541010211) (:by |root) (:id |r1oQQ5Ugx0BW) (:text |:states) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |r1hX79UelArb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |BJaXX9LxgRBW) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |Hy0m7cUxlCrZ) (:text |*states) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |H1y4Xc8xxArW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584877147216) (:by |B1y7Rc-Zz) (:id |r1-E75IllABW) (:text |update-states) (:type :leaf)
                              |j $ {} (:at 1584874358841) (:by |B1y7Rc-Zz) (:id |68V6anWICP) (:text |@*states) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |HyGV7cUxgAr-) (:text |op-data) (:type :leaf)
                  |j $ {} (:at 1512319547838) (:by |B1y7Rc-Zz) (:id |ByEH9sZ-G) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1512319553572) (:by |B1y7Rc-Zz) (:id |ByEH9sZ-Gleaf) (:text |:effect/connect) (:type :leaf)
                      |j $ {} (:at 1512319556120) (:by |B1y7Rc-Zz) (:id |SJhScsbbf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1512319559727) (:by |B1y7Rc-Zz) (:id |B1jBci-WG) (:text |connect!) (:type :leaf)
          |main! $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |main!) (:type :leaf)
              |r $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
              |x $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |y $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
              |yT $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                  |r $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                          |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |yj $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                  |r $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                          |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |yr $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |on-page-touch) (:type :leaf)
                  |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |r $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                          |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |nil?) (:type :leaf)
                              |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |@*store) (:type :leaf)
                          |r $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
              |yv $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1637150658397) (:by |B1y7Rc-Zz) (:text "|\"App started!") (:type :leaf)
          |mount-target $ {} (:at 1500541010211) (:by nil) (:id |BkpTXqIleASW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |HJAa7qIllRrW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |BykCX9IlxCrZ) (:text |mount-target) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |rJl0mcUxeRS-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |rJbRmqLgeCHW) (:text |.querySelector) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |Byz0Q58leRrb) (:text |js/document) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by |root) (:id |BkmCm9LggCrW) (:text "|\".app") (:type :leaf)
          |on-server-data $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |on-server-data) (:type :leaf)
              |r $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
              |v $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                      |j $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                  |r $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |j $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text "|\"unknown server data kind:") (:type :leaf)
                      |r $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                  |v $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |:patch) (:type :leaf)
                      |j $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                          |j $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |j $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                      |j $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                          |r $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                              |j $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                              |r $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |js/console.log) (:type :leaf)
                                  |j $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text "|\"Changes") (:type :leaf)
                                  |r $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |to-js-data) (:type :leaf)
                                      |j $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                          |v $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                              |j $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                              |r $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |patch-twig) (:type :leaf)
                                  |j $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |@*store) (:type :leaf)
                                  |r $ {} (:at 1637150515681) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
          |reload! $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                      |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |client-errors) (:type :leaf)
                  |r $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |hud!) (:type :leaf)
                      |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text "|\"error") (:type :leaf)
                      |r $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |client-errors) (:type :leaf)
                  |v $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |hud!) (:type :leaf)
                          |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text "|\"inactive") (:type :leaf)
                          |r $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                          |r $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                      |v $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                          |r $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                      |x $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |clear-cache!) (:type :leaf)
                      |y $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                      |yT $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                          |r $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                          |v $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                                  |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                              |r $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                      |yj $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                          |r $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                          |v $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                                  |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                              |r $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                      |yr $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1637150561135) (:by |B1y7Rc-Zz) (:text "|\"Code updated.") (:type :leaf)
          |render-app! $ {} (:at 1500541010211) (:by nil) (:id |B1Eh7cIxeCrZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |SJS3QqLglABb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |SyI3Q58elRrW) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |Byv2X98ggArZ) (:type :expr)
                :data $ {}
              |v $ {} (:at 1500541010211) (:by nil) (:id |SJK375UlxCHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150677101) (:by |B1y7Rc-Zz) (:id |rkq3QqIglCHZ) (:text |render!) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |Bysn79Igl0H-) (:text |mount-target) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |By2n7qLeeAS-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |Sy6nmc8el0rW) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1584880509935) (:by |B1y7Rc-Zz) (:id |dg4hzeLvDw) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1584880511636) (:by |B1y7Rc-Zz) (:id |75AuqOvLz) (:text |:states) (:type :leaf)
                          |T $ {} (:at 1500541010211) (:by |root) (:id |BJR2Q5UlxCBW) (:text |@*states) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by |root) (:id |Sy1p7c8ex0rZ) (:text |@*store) (:type :leaf)
                  |v $ {} (:at 1512318370491) (:by |B1y7Rc-Zz) (:id |r1gcsBi-ZG) (:text |dispatch!) (:type :leaf)
          |simulate-login! $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |simulate-login!) (:type :leaf)
              |r $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                          |j $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |.!getItem) (:type :leaf)
                              |j $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |js/localStorage) (:type :leaf)
                              |r $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |:storage-key) (:type :leaf)
                                  |j $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                      |r $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                          |j $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                              |j $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text "|\"Found storage.") (:type :leaf)
                          |r $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                              |j $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |:user/log-in) (:type :leaf)
                              |r $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                                  |j $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                      |v $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                          |j $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                              |j $ {} (:at 1637150547625) (:by |B1y7Rc-Zz) (:text "|\"Found no storage.") (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |S1uAGcLllRr-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |H1KCzq8geASW) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |BycAGqLleAH-) (:text |app.client) (:type :leaf)
            |r $ {} (:at 1500541010211) (:by nil) (:id |BysRMcUleArZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |B130M9IxgASW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |rypCzcUgeAHW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |S10CGq8exABb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |HyJ1m9Ueg0S-) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SylJXqLgxRrW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Hkb17q8lg0H-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |BkzkmqIge0rW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BkmJX5LelABb) (:text |render!) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |SkEkQ9IgxArW) (:text |clear-cache!) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SJBkX9Ugl0S-) (:text |realize-ssr!) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |ryIJ7cIglCrZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |SkPyQqLlgCBb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |H1Ok75IxgRSW) (:text |respo.cursor) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SyFyQqIxlCrW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SJ9J798ggAHZ) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HJoJXqLgeRHW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1584874339542) (:by |B1y7Rc-Zz) (:id |S1ny7cUlx0Bb) (:text |update-states) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |r1pJXcIgx0SW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HJ0J7cLeeCS-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |BJJe75Igx0Sb) (:text |app.comp.container) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rklgX5UxxCHW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyWx7qIex0BW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkMx75Ixl0rW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |rJmxQqIelAS-) (:text |comp-container) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |SyVxmc8geRSb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1Blm5LelRr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |BJUlmc8eeRSZ) (:text |cljs.reader) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rJDxQ5LexAHb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1OxX98exRBW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |SyKeX98egArb) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |r1cg7qUlgABb) (:text |read-string) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |HJXbm58xeRrW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |B14bQq8eg0rW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |HyrZm9IegRSZ) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BJ8b75LgeCS-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |Byw-mqIgl0HZ) (:text |schema) (:type :leaf)
                |yj $ {} (:at 1527788760671) (:by |root) (:id |rJWJr3TyQ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1527788761874) (:by |root) (:id |rJWJr3TyQleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1527788764341) (:by |root) (:id |SJZzyHh6J7) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1527788766627) (:by |root) (:id |HJI4JHhakX) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788767318) (:by |root) (:id |BJ-DJH3a17) (:text |config) (:type :leaf)
                |yr $ {} (:at 1544638775980) (:by |B1y7Rc-Zz) (:id |lMCAY6KwD) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1544638776805) (:by |B1y7Rc-Zz) (:id |lMCAY6KwDleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1544638780714) (:by |B1y7Rc-Zz) (:id |zEN00LwW1E) (:text |ws-edn.client) (:type :leaf)
                    |r $ {} (:at 1544638782705) (:by |B1y7Rc-Zz) (:id |m3-1FVuogh) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1544638782913) (:by |B1y7Rc-Zz) (:id |wG2B6CmLNG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1544638783120) (:by |B1y7Rc-Zz) (:id |I2hXPBL2YJ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1544638785998) (:by |B1y7Rc-Zz) (:id |JiK-h2n4iN) (:text |ws-connect!) (:type :leaf)
                        |r $ {} (:at 1544638787583) (:by |B1y7Rc-Zz) (:id |h15_zxZNZf) (:text |ws-send!) (:type :leaf)
                |yv $ {} (:at 1544639047460) (:by |B1y7Rc-Zz) (:id |rkLsBPMduC) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1544639047763) (:by |B1y7Rc-Zz) (:id |N6w_dOM0yc) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1544639048479) (:by |B1y7Rc-Zz) (:id |KvS5_SXv0S) (:text |recollect.patch) (:type :leaf)
                    |r $ {} (:at 1544639049759) (:by |B1y7Rc-Zz) (:id |8FxYaO5JP) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1544639049952) (:by |B1y7Rc-Zz) (:id |07xWSkTUjV) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1544639050115) (:by |B1y7Rc-Zz) (:id |D49-t_AC7B) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1544639057259) (:by |B1y7Rc-Zz) (:id |y2z8vLZvwg) (:text |patch-twig) (:type :leaf)
                |yx $ {} (:at 1545239397101) (:by |B1y7Rc-Zz) (:id |9yRRVSPy_o) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1545239397493) (:by |B1y7Rc-Zz) (:id |9yRRVSPy_oleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1545239402091) (:by |B1y7Rc-Zz) (:id |pVpV5eueG) (:text |cumulo-util.core) (:type :leaf)
                    |r $ {} (:at 1545239402776) (:by |B1y7Rc-Zz) (:id |KGMk6pkEm_) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1545239402983) (:by |B1y7Rc-Zz) (:id |39TJMdIhRL) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1545239403156) (:by |B1y7Rc-Zz) (:id |CzqRUswnLt) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1545239519506) (:by |B1y7Rc-Zz) (:id |9b8ZYaPnbu) (:text |on-page-touch) (:type :leaf)
                |yy $ {} (:at 1553788385335) (:by |B1y7Rc-Zz) (:id |Ol6pRFB9Pq) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1553788385624) (:by |B1y7Rc-Zz) (:id |Ol6pRFB9Pqleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1553788387912) (:by |B1y7Rc-Zz) (:id |PjY-5vhezr) (:text "|\"url-parse") (:type :leaf)
                    |r $ {} (:at 1637150756475) (:by |B1y7Rc-Zz) (:id |xuQXGFRA-i) (:text |:default) (:type :leaf)
                    |v $ {} (:at 1553788391454) (:by |B1y7Rc-Zz) (:id |BlhK80C3x7) (:text |url-parse) (:type :leaf)
                |yyT $ {} (:at 1637150581257) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637150581257) (:by |B1y7Rc-Zz) (:text "|\"bottom-tip") (:type :leaf)
                    |j $ {} (:at 1637150581257) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1637150581257) (:by |B1y7Rc-Zz) (:text |hud!) (:type :leaf)
                |yyj $ {} (:at 1637150581257) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637150581257) (:by |B1y7Rc-Zz) (:text "|\"./calcit.build-errors") (:type :leaf)
                    |j $ {} (:at 1637150581257) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1637150581257) (:by |B1y7Rc-Zz) (:text |client-errors) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |S1dWm9UggRBZ) (:type :expr)
          :data $ {}
      |app.comp $ {}
        :defs $ {}
          |comp-placeholder $ {} (:at 1592583303641) (:by |B1y7Rc-Zz) (:id |344EoL_gay) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592583338674) (:by |B1y7Rc-Zz) (:id |9Zw8aBgPkQ) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1592583303641) (:by |B1y7Rc-Zz) (:id |Vf2_iVuHwT) (:text |comp-placeholder) (:type :leaf)
              |n $ {} (:at 1592583336347) (:by |B1y7Rc-Zz) (:id |TXpoMkW9lt) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592583340726) (:by |B1y7Rc-Zz) (:id |O5BZWmLdPy) (:text |text) (:type :leaf)
              |r $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |Xu7u-Ye7IK) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |PDQnFIPav4) (:text |div) (:type :leaf)
                  |j $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |Kchn4QrOBD) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |_5rHhLrJBY) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |1haUCU_jSu) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |KlC_sCGsH6) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |geVfK9ovOX) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |vRef0k9-Ec) (:text |merge) (:type :leaf)
                              |j $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |4MX8qukiR2) (:text |ui/center) (:type :leaf)
                              |r $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |NNBn1DatR7) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |EdikYmVTOM) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |LUev9pHP_r) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |39DzbTehF8) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |GkfoDA4JA4) (:text |16) (:type :leaf)
                                  |r $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |hGhLLOMOZd) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |-uoSajLpSf0) (:text |:font-family) (:type :leaf)
                                      |j $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |9uYqpzta-GP) (:text |ui/font-fancy) (:type :leaf)
                                  |v $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |-H6ISiB2_sW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |lZllR4s-ecC) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |QV7Q7Cfpa0a) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |L44h25qEGGO) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |rU1wxYTonCk) (:text |0) (:type :leaf)
                                          |r $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |eQpwmNyCFJf) (:text |0) (:type :leaf)
                                          |v $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |GqhmrPjPrAR) (:text |80) (:type :leaf)
                                  |x $ {} (:at 1592583891392) (:by |B1y7Rc-Zz) (:id |SSWgKB81_m) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592583894166) (:by |B1y7Rc-Zz) (:id |SSWgKB81_mleaf) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1592583895207) (:by |B1y7Rc-Zz) (:id |QmZ5PqdG5r) (:text |12) (:type :leaf)
                                  |y $ {} (:at 1592583898008) (:by |B1y7Rc-Zz) (:id |JagXFsdYGZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592583918431) (:by |B1y7Rc-Zz) (:id |JagXFsdYGZleaf) (:text |:font-style) (:type :leaf)
                                      |j $ {} (:at 1592583903082) (:by |B1y7Rc-Zz) (:id |tHcY13-VIA) (:text |:italic) (:type :leaf)
                  |r $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |1S5R3SpSgcr) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592583335457) (:by |B1y7Rc-Zz) (:id |O_UasJK6lYC) (:text |<>) (:type :leaf)
                      |j $ {} (:at 1592583346101) (:by |B1y7Rc-Zz) (:id |j68M3a7xvRC) (:text |text) (:type :leaf)
          |comp-tabs $ {} (:at 1592495083369) (:by |B1y7Rc-Zz) (:id |zZENO63CL5) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592495085760) (:by |B1y7Rc-Zz) (:id |GiZ3Xv1gc0) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1592495083369) (:by |B1y7Rc-Zz) (:id |t_23g7vYDc) (:text |comp-tabs) (:type :leaf)
              |r $ {} (:at 1592495083369) (:by |B1y7Rc-Zz) (:id |nFbuqNlltf) (:type :expr)
                :data $ {}
                  |L $ {} (:at 1592495095365) (:by |B1y7Rc-Zz) (:id |fywHqRhMo) (:text |selected) (:type :leaf)
                  |f $ {} (:at 1592495093137) (:by |B1y7Rc-Zz) (:id |PslfMUQDdh) (:text |tabs) (:type :leaf)
              |v $ {} (:at 1592495095780) (:by |B1y7Rc-Zz) (:id |kUawnhbkIJ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592495100932) (:by |B1y7Rc-Zz) (:id |kUawnhbkIJleaf) (:text |list->) (:type :leaf)
                  |j $ {} (:at 1592495101215) (:by |B1y7Rc-Zz) (:id |lPK2UjiTD) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592495102246) (:by |B1y7Rc-Zz) (:id |V-AjWD8qfw) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1592495141656) (:by |B1y7Rc-Zz) (:id |JdR0BnkrHw) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592495143344) (:by |B1y7Rc-Zz) (:id |5wGGytetRd) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1592584006052) (:by |B1y7Rc-Zz) (:id |NKnCdMQBTD) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1592584007058) (:by |B1y7Rc-Zz) (:id |samM0nRRY) (:text |merge) (:type :leaf)
                              |T $ {} (:at 1592495144607) (:by |B1y7Rc-Zz) (:id |TCY0PFjxxf) (:text |ui/row) (:type :leaf)
                              |j $ {} (:at 1592584008118) (:by |B1y7Rc-Zz) (:id |pKISUesl5) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584008444) (:by |B1y7Rc-Zz) (:id |9qgUErgWQU) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592584009793) (:by |B1y7Rc-Zz) (:id |_FrNPr45aQ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592584010906) (:by |B1y7Rc-Zz) (:id |gq0MS1V_at) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1592584023261) (:by |B1y7Rc-Zz) (:id |BKGcQbk94P) (:text "|\"8px 16px") (:type :leaf)
                  |r $ {} (:at 1592495104392) (:by |B1y7Rc-Zz) (:id |Yg6b-QwZFW) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1637149563287) (:by |B1y7Rc-Zz) (:id |xqiVfRaWk) (:text |->) (:type :leaf)
                      |T $ {} (:at 1592495109779) (:by |B1y7Rc-Zz) (:id |Yg6b-QwZFWleaf) (:text |tabs) (:type :leaf)
                      |j $ {} (:at 1592495111858) (:by |B1y7Rc-Zz) (:id |vNSinMORgy) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592495114393) (:by |B1y7Rc-Zz) (:id |G1JtcfsJRL) (:text |map) (:type :leaf)
                          |j $ {} (:at 1592495115014) (:by |B1y7Rc-Zz) (:id |gxvKmCovfw) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592495115278) (:by |B1y7Rc-Zz) (:id |jYaH1IcPAT) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1592495115581) (:by |B1y7Rc-Zz) (:id |Mc-y6J8WJC) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592495118761) (:by |B1y7Rc-Zz) (:id |JMKAbnTCJb) (:text |info) (:type :leaf)
                              |r $ {} (:at 1592495119276) (:by |B1y7Rc-Zz) (:id |npxY-leVpR) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592495121196) (:by |B1y7Rc-Zz) (:id |npxY-leVpRleaf) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1592495121714) (:by |B1y7Rc-Zz) (:id |J8MHVj5hW9) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592495122448) (:by |B1y7Rc-Zz) (:id |RvyUj72ylN) (:text |:name) (:type :leaf)
                                      |j $ {} (:at 1592495123687) (:by |B1y7Rc-Zz) (:id |8tfIW-xQiP) (:text |info) (:type :leaf)
                                  |r $ {} (:at 1592495124323) (:by |B1y7Rc-Zz) (:id |XXnOewE4J) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592495125687) (:by |B1y7Rc-Zz) (:id |XXnOewE4Jleaf) (:text |div) (:type :leaf)
                                      |j $ {} (:at 1592495125909) (:by |B1y7Rc-Zz) (:id |NUEuLWhCoL) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592495126237) (:by |B1y7Rc-Zz) (:id |A4X0yiKpT3) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1592495148257) (:by |B1y7Rc-Zz) (:id |EqEwICE6cQ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592495149008) (:by |B1y7Rc-Zz) (:id |AsMHC_9LB) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1592495164099) (:by |B1y7Rc-Zz) (:id |zWRpjuXYt) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1592495164964) (:by |B1y7Rc-Zz) (:id |M7HKeXr4Z1) (:text |merge) (:type :leaf)
                                                  |T $ {} (:at 1592495149246) (:by |B1y7Rc-Zz) (:id |Qejffpr041) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592495149715) (:by |B1y7Rc-Zz) (:id |r97JmeKiU) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1592495149965) (:by |B1y7Rc-Zz) (:id |5lq0pTFmBR) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592495152526) (:by |B1y7Rc-Zz) (:id |ziDDA4LmAR) (:text |:padding) (:type :leaf)
                                                          |j $ {} (:at 1592495159898) (:by |B1y7Rc-Zz) (:id |mWp-_SQ3f) (:text "|\"0 8px") (:type :leaf)
                                                      |r $ {} (:at 1592495187473) (:by |B1y7Rc-Zz) (:id |tLOkdtjhBR) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592495190926) (:by |B1y7Rc-Zz) (:id |tLOkdtjhBRleaf) (:text |:font-family) (:type :leaf)
                                                          |j $ {} (:at 1592495193750) (:by |B1y7Rc-Zz) (:id |UTYcgEl6x) (:text |ui/font-fancy) (:type :leaf)
                                                      |v $ {} (:at 1592495194826) (:by |B1y7Rc-Zz) (:id |KNfVmBDHdx) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592495196482) (:by |B1y7Rc-Zz) (:id |KNfVmBDHdxleaf) (:text |:font-weight) (:type :leaf)
                                                          |j $ {} (:at 1592495199265) (:by |B1y7Rc-Zz) (:id |82XWZOoe8) (:text |300) (:type :leaf)
                                                      |x $ {} (:at 1592495206808) (:by |B1y7Rc-Zz) (:id |ai5FmaxOhX) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592495208838) (:by |B1y7Rc-Zz) (:id |ai5FmaxOhXleaf) (:text |:cursor) (:type :leaf)
                                                          |j $ {} (:at 1592495209881) (:by |B1y7Rc-Zz) (:id |3wlTqU4sGG) (:text |:pointer) (:type :leaf)
                                                      |y $ {} (:at 1592495210250) (:by |B1y7Rc-Zz) (:id |h9LrxgjhOF) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592495212761) (:by |B1y7Rc-Zz) (:id |h9LrxgjhOFleaf) (:text |:font-size) (:type :leaf)
                                                          |j $ {} (:at 1592583981146) (:by |B1y7Rc-Zz) (:id |DQnnfM2a9W) (:text |16) (:type :leaf)
                                                      |yT $ {} (:at 1592495221464) (:by |B1y7Rc-Zz) (:id |viQSqkAoA) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592495223408) (:by |B1y7Rc-Zz) (:id |viQSqkAoAleaf) (:text |:color) (:type :leaf)
                                                          |j $ {} (:at 1592495223759) (:by |B1y7Rc-Zz) (:id |M6G5vS8d00) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592495224558) (:by |B1y7Rc-Zz) (:id |HiK4x7Wib3) (:text |hsl) (:type :leaf)
                                                              |j $ {} (:at 1592495224832) (:by |B1y7Rc-Zz) (:id |3oNFSHmX-H) (:text |0) (:type :leaf)
                                                              |r $ {} (:at 1592495225027) (:by |B1y7Rc-Zz) (:id |RKGT1lMZdm) (:text |0) (:type :leaf)
                                                              |v $ {} (:at 1592583966756) (:by |B1y7Rc-Zz) (:id |On3L5VCtk) (:text |70) (:type :leaf)
                                                      |yj $ {} (:at 1592583985728) (:by |B1y7Rc-Zz) (:id |s9ZYQUHEME) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592583991079) (:by |B1y7Rc-Zz) (:id |s9ZYQUHEMEleaf) (:text |:line-height) (:type :leaf)
                                                          |j $ {} (:at 1592583993538) (:by |B1y7Rc-Zz) (:id |59FglmLoPh) (:text "|\"32px") (:type :leaf)
                                                  |j $ {} (:at 1592495165347) (:by |B1y7Rc-Zz) (:id |Opo48iJ1SE) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592495165737) (:by |B1y7Rc-Zz) (:id |Opo48iJ1SEleaf) (:text |if) (:type :leaf)
                                                      |j $ {} (:at 1592495166218) (:by |B1y7Rc-Zz) (:id |hbAX3plSJ) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592495166902) (:by |B1y7Rc-Zz) (:id |B_GdrIf9X2) (:text |=) (:type :leaf)
                                                          |j $ {} (:at 1592495168609) (:by |B1y7Rc-Zz) (:id |jg00rgaLI) (:text |selected) (:type :leaf)
                                                          |r $ {} (:at 1592495169630) (:by |B1y7Rc-Zz) (:id |6tNyAbIxnj) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592495170265) (:by |B1y7Rc-Zz) (:id |GzoX5cNa9) (:text |:name) (:type :leaf)
                                                              |j $ {} (:at 1592495172160) (:by |B1y7Rc-Zz) (:id |KfhDZkHKM_) (:text |info) (:type :leaf)
                                                      |r $ {} (:at 1592495173676) (:by |B1y7Rc-Zz) (:id |Bl4N97qGWP) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592495174146) (:by |B1y7Rc-Zz) (:id |Bl4N97qGWPleaf) (:text |{}) (:type :leaf)
                                                          |j $ {} (:at 1592495174421) (:by |B1y7Rc-Zz) (:id |jNujHD0lzw) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592495179378) (:by |B1y7Rc-Zz) (:id |txQmT7AUYp) (:text |:font-weight) (:type :leaf)
                                                              |j $ {} (:at 1592583961226) (:by |B1y7Rc-Zz) (:id |EHQLAfJpKI) (:text |500) (:type :leaf)
                                                          |r $ {} (:at 1592495232350) (:by |B1y7Rc-Zz) (:id |2ZdklOFit) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592495233361) (:by |B1y7Rc-Zz) (:id |2ZdklOFitleaf) (:text |:color) (:type :leaf)
                                                              |j $ {} (:at 1592495233567) (:by |B1y7Rc-Zz) (:id |IQPixsrJnm) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592495233894) (:by |B1y7Rc-Zz) (:id |gbqkPaXOs3) (:text |hsl) (:type :leaf)
                                                                  |j $ {} (:at 1592495235105) (:by |B1y7Rc-Zz) (:id |HLTIIiQ_P) (:text |0) (:type :leaf)
                                                                  |r $ {} (:at 1592495235490) (:by |B1y7Rc-Zz) (:id |IgZZGsvodt) (:text |0) (:type :leaf)
                                                                  |v $ {} (:at 1592495237119) (:by |B1y7Rc-Zz) (:id |6hB7OUsBYW) (:text |30) (:type :leaf)
                                          |r $ {} (:at 1592495260278) (:by |B1y7Rc-Zz) (:id |k6aFedHme) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592495261557) (:by |B1y7Rc-Zz) (:id |k6aFedHmeleaf) (:text |:on-click) (:type :leaf)
                                              |j $ {} (:at 1592495261948) (:by |B1y7Rc-Zz) (:id |lAvPojbmqn) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592495262202) (:by |B1y7Rc-Zz) (:id |KWaN6idlQ9) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1592495262439) (:by |B1y7Rc-Zz) (:id |5Nj3bVsHLK) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592495262665) (:by |B1y7Rc-Zz) (:id |4UXJQTzSZM) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1592495263278) (:by |B1y7Rc-Zz) (:id |TV009V55vZ) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1592495263721) (:by |B1y7Rc-Zz) (:id |OR2De7nv2q) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592495264187) (:by |B1y7Rc-Zz) (:id |OR2De7nv2qleaf) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1592495271684) (:by |B1y7Rc-Zz) (:id |lDSau4HDHC) (:text |:router/change) (:type :leaf)
                                                      |r $ {} (:at 1592495271877) (:by |B1y7Rc-Zz) (:id |9r-5mi9apO) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592495272241) (:by |B1y7Rc-Zz) (:id |_kyimZW8m-) (:text |{}) (:type :leaf)
                                                          |j $ {} (:at 1592495272457) (:by |B1y7Rc-Zz) (:id |3RXOPSIi2J) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592495274049) (:by |B1y7Rc-Zz) (:id |W6Lry5W7zI) (:text |:name) (:type :leaf)
                                                              |j $ {} (:at 1592495275954) (:by |B1y7Rc-Zz) (:id |Qjul-eJjZz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592495276431) (:by |B1y7Rc-Zz) (:id |2657iM3lG) (:text |:name) (:type :leaf)
                                                                  |j $ {} (:at 1592495276908) (:by |B1y7Rc-Zz) (:id |rEj9lzH-FH) (:text |info) (:type :leaf)
                                      |r $ {} (:at 1592495126761) (:by |B1y7Rc-Zz) (:id |9w1YYEvBvY) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592495127143) (:by |B1y7Rc-Zz) (:id |9w1YYEvBvYleaf) (:text |<>) (:type :leaf)
                                          |j $ {} (:at 1592495128459) (:by |B1y7Rc-Zz) (:id |jIgoOET0kN) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592495129660) (:by |B1y7Rc-Zz) (:id |m6QGGvPiTj) (:text |:title) (:type :leaf)
                                              |j $ {} (:at 1592495130603) (:by |B1y7Rc-Zz) (:id |8jCQTX981L) (:text |info) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |BkUXGcUegABW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |S1DXG98elCSb) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |HkO7fcLel0SZ) (:text |app.comp) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |S1HVf5UxlRHZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HJLNzq8glABb) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |BywNMcUleAHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk_4zqLggASb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1637150122077) (:by |B1y7Rc-Zz) (:id |HkY4z5IllCHb) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkcEM9IgxCSZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJsNzqLleASW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |ry3NM5IegRSW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkTNfcLeeRBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |HkCNz98el0Bb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HJySMq8xgRSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547394445) (:by |root) (:id |HkeBG5Lgl0SW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkWrzqIxx0B-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |S1GrG5LegAHZ) (:text |ui) (:type :leaf)
                |w $ {} (:at 1523120376505) (:by |root) (:id |BkxlWtdUjM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1523120376949) (:by |root) (:id |BkxlWtdUjMleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120379036) (:by |root) (:id |Sk--WFuIoG) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1523120382218) (:by |root) (:id |By4XbFu8oG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1523120382545) (:by |root) (:id |r1DWtdUjM) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1523120382719) (:by |root) (:id |SJEUbFOLjG) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120383255) (:by |root) (:id |BkGPZKu8oM) (:text |=<) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |SkVQg5h1z) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk2XMq8lgCHZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540962179719) (:by |root) (:id |HJp7zc8xxArZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1AmGcLexRH-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyJNG5IexArb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rkxNGqLxg0rZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BkbEz9LegRr-) (:text |defcomp) (:type :leaf)
                        |l $ {} (:at 1592583286362) (:by |B1y7Rc-Zz) (:id |Esc7sOlJFk) (:text |list->) (:type :leaf)
                        |n $ {} (:at 1592583284191) (:by |B1y7Rc-Zz) (:id |ccG-irRuCg) (:text |>>) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |BJM4fcLlxCrb) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SyQ4McIex0HZ) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HkNEM9Lee0HZ) (:text |div) (:type :leaf)
                |y $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |3JW2PGwjK4) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |3Q4lXqy0N7) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |Y_HhVDj3zn) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1536561758845) (:by |B1y7Rc-Zz) (:id |D0d_mzNKRn) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1536561761903) (:by |B1y7Rc-Zz) (:id |sJXt922sWs) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |SJ1Uz9LeeAB-) (:type :expr)
          :data $ {}
      |app.comp.chatroom $ {}
        :defs $ {}
          |comp-chatroom $ {} (:at 1500541010211) (:by nil) (:id |Bk2vfqUxl0BZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy6DG9UglCrb) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |rJRPfqLgxArb) (:text |comp-chatroom) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |H11df58le0Bb) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1592495635233) (:by |B1y7Rc-Zz) (:id |_c0hX3YLE) (:text |states) (:type :leaf)
                  |T $ {} (:at 1592494762390) (:by |B1y7Rc-Zz) (:id |rJxuzcLle0S-) (:text |messages) (:type :leaf)
                  |j $ {} (:at 1592496656924) (:by |B1y7Rc-Zz) (:id |lPK3vrKNU) (:text |styles) (:type :leaf)
              |v $ {} (:at 1592495637215) (:by |B1y7Rc-Zz) (:id |9NffB1Fu6F) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1592495637770) (:by |B1y7Rc-Zz) (:id |oXtMq7Udtl) (:text |let) (:type :leaf)
                  |L $ {} (:at 1592495637964) (:by |B1y7Rc-Zz) (:id |cwt4VeSEAv) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1592495648077) (:by |B1y7Rc-Zz) (:id |JOgLJwLny) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592495649043) (:by |B1y7Rc-Zz) (:id |JOgLJwLnyleaf) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1592495649229) (:by |B1y7Rc-Zz) (:id |S3YnnzrwfQ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592495650193) (:by |B1y7Rc-Zz) (:id |eomKe8Ps4) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1592495651979) (:by |B1y7Rc-Zz) (:id |-RyJUXqyTU) (:text |states) (:type :leaf)
                      |T $ {} (:at 1592495638095) (:by |B1y7Rc-Zz) (:id |upTOU2qhg) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592495639586) (:by |B1y7Rc-Zz) (:id |Z17-RXBCi9) (:text |state) (:type :leaf)
                          |j $ {} (:at 1592495639854) (:by |B1y7Rc-Zz) (:id |0xJDtpoxBa) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592495641615) (:by |B1y7Rc-Zz) (:id |kMcwyQQU9U) (:text |or) (:type :leaf)
                              |j $ {} (:at 1592495641810) (:by |B1y7Rc-Zz) (:id |UvuC31tr-6) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592495642404) (:by |B1y7Rc-Zz) (:id |Q6cARW949V) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1592495643125) (:by |B1y7Rc-Zz) (:id |MoRZGhNDYm) (:text |states) (:type :leaf)
                              |r $ {} (:at 1592495643648) (:by |B1y7Rc-Zz) (:id |NmK1nOsMs9) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592495643995) (:by |B1y7Rc-Zz) (:id |4NaFdIBAvt) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592495644264) (:by |B1y7Rc-Zz) (:id |R8E_Pa2F1w) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592495645931) (:by |B1y7Rc-Zz) (:id |9UWdLl1f9) (:text |:draft) (:type :leaf)
                                      |j $ {} (:at 1592495646544) (:by |B1y7Rc-Zz) (:id |sSrPBP4Ia) (:text "|\"") (:type :leaf)
                      |j $ {} (:at 1592497097505) (:by |B1y7Rc-Zz) (:id |KwIt1Gl7C9) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592497100642) (:by |B1y7Rc-Zz) (:id |KwIt1Gl7C9leaf) (:text |send-message) (:type :leaf)
                          |j $ {} (:at 1592497101016) (:by |B1y7Rc-Zz) (:id |vaCIksuAU0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592497101348) (:by |B1y7Rc-Zz) (:id |CvaoXlgdjl) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1592497101591) (:by |B1y7Rc-Zz) (:id |CVXbcxenx8) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592497102669) (:by |B1y7Rc-Zz) (:id |A72qc7mAYV) (:text |d!) (:type :leaf)
                              |r $ {} (:at 1592497104395) (:by |B1y7Rc-Zz) (:id |yoAs2q0IvH) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592497104395) (:by |B1y7Rc-Zz) (:id |gu0nfwEjBh) (:text |d!) (:type :leaf)
                                  |j $ {} (:at 1592497104395) (:by |B1y7Rc-Zz) (:id |V6b1eX2PoK) (:text |cursor) (:type :leaf)
                                  |r $ {} (:at 1592497104395) (:by |B1y7Rc-Zz) (:id |0IkkSMgJxB) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592497104395) (:by |B1y7Rc-Zz) (:id |Z6lhI6aZmI) (:text |assoc) (:type :leaf)
                                      |j $ {} (:at 1592497104395) (:by |B1y7Rc-Zz) (:id |hm3SRjdU_I) (:text |state) (:type :leaf)
                                      |r $ {} (:at 1592497104395) (:by |B1y7Rc-Zz) (:id |4fw_A5VRUc) (:text |:draft) (:type :leaf)
                                      |v $ {} (:at 1592497104395) (:by |B1y7Rc-Zz) (:id |dZmfiBhn69) (:text "|\"") (:type :leaf)
                              |v $ {} (:at 1592497120722) (:by |B1y7Rc-Zz) (:id |zm9KHN8l_h) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1592497121651) (:by |B1y7Rc-Zz) (:id |6yBGTrfHzg) (:text |when) (:type :leaf)
                                  |L $ {} (:at 1592497122347) (:by |B1y7Rc-Zz) (:id |7Efmdh39u) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592497123085) (:by |B1y7Rc-Zz) (:id |4drixWNg3Y) (:text |not) (:type :leaf)
                                      |j $ {} (:at 1592497125183) (:by |B1y7Rc-Zz) (:id |vK3ZwLxpr) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637150410652) (:by |B1y7Rc-Zz) (:id |6iTikHjRl) (:text |blank?) (:type :leaf)
                                          |j $ {} (:at 1592497130471) (:by |B1y7Rc-Zz) (:id |GeMn8o8jmX) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592497131770) (:by |B1y7Rc-Zz) (:id |KzcUwU-A7_) (:text |:draft) (:type :leaf)
                                              |j $ {} (:at 1592497132321) (:by |B1y7Rc-Zz) (:id |RFuCn_9hM9) (:text |state) (:type :leaf)
                                  |T $ {} (:at 1592497104395) (:by |B1y7Rc-Zz) (:id |Q9Y4529XTO) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592497104395) (:by |B1y7Rc-Zz) (:id |3bce6Jh0lh) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1592497104395) (:by |B1y7Rc-Zz) (:id |TV6RSALBWLO) (:text |:message/create) (:type :leaf)
                                      |r $ {} (:at 1592497134263) (:by |B1y7Rc-Zz) (:id |ziiJopqgkc) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1637150412662) (:by |B1y7Rc-Zz) (:id |I1wb5JIIsl) (:text |trim) (:type :leaf)
                                          |T $ {} (:at 1592497104395) (:by |B1y7Rc-Zz) (:id |mzoIk075Sx7) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1637152893672) (:by |B1y7Rc-Zz) (:text |:draft) (:type :leaf)
                                              |T $ {} (:at 1592497104395) (:by |B1y7Rc-Zz) (:id |n_HQd8ZQyjg) (:text |state) (:type :leaf)
                  |T $ {} (:at 1500541010211) (:by nil) (:id |rkW_zqUxlCrZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592494751499) (:by |B1y7Rc-Zz) (:id |HJM_fc8elAHW) (:text |div) (:type :leaf)
                      |j $ {} (:at 1592494752034) (:by |B1y7Rc-Zz) (:id |eksaV8zVu6) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592494752397) (:by |B1y7Rc-Zz) (:id |PGwvpxkRoV) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1592494989904) (:by |B1y7Rc-Zz) (:id |QEr-_S76ij) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592494992184) (:by |B1y7Rc-Zz) (:id |DnaRDuuoiB) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1592494995093) (:by |B1y7Rc-Zz) (:id |OIKljXILa) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1592494995968) (:by |B1y7Rc-Zz) (:id |4e0GDDc59F) (:text |merge) (:type :leaf)
                                  |T $ {} (:at 1592494994915) (:by |B1y7Rc-Zz) (:id |9OnG0kNu3r) (:text |ui/expand) (:type :leaf)
                                  |j $ {} (:at 1592494999352) (:by |B1y7Rc-Zz) (:id |a3WnYZ6gWy) (:text |ui/column) (:type :leaf)
                                  |n $ {} (:at 1592496685353) (:by |B1y7Rc-Zz) (:id |9rRl2wEsYS) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592496684567) (:by |B1y7Rc-Zz) (:id |KF5D-TDKq) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1592496686061) (:by |B1y7Rc-Zz) (:id |l0qEdqurgz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592496688167) (:by |B1y7Rc-Zz) (:id |pcVpWDgMin) (:text |:padding) (:type :leaf)
                                          |j $ {} (:at 1592496689200) (:by |B1y7Rc-Zz) (:id |IuImyqeJNY) (:text |8) (:type :leaf)
                                      |r $ {} (:at 1592629940397) (:by |B1y7Rc-Zz) (:id |NIXB9nnHTa) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592629942215) (:by |B1y7Rc-Zz) (:id |NIXB9nnHTaleaf) (:text |:position) (:type :leaf)
                                          |j $ {} (:at 1592629943839) (:by |B1y7Rc-Zz) (:id |VGRBKuHWk6) (:text |:relative) (:type :leaf)
                                  |r $ {} (:at 1592496660105) (:by |B1y7Rc-Zz) (:id |FQTCP-0AmT) (:text |styles) (:type :leaf)
                      |k $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |RU5AcSIblT) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |jaUqWNu2wg) (:text |if) (:type :leaf)
                          |j $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |Xfe0ZSn_Vu) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |0ITcFwVCQg) (:text |>) (:type :leaf)
                              |j $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |cddDtnVXB3) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |kljASr2RHp) (:text |count) (:type :leaf)
                                  |j $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |I0gBqaejMN) (:text |messages) (:type :leaf)
                              |r $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |_hPCl9SjHw) (:text |20) (:type :leaf)
                          |r $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |LwJccZdpWp) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |Y1GspvOexG) (:text |a) (:type :leaf)
                              |j $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |QshSKyiEzj) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |3QKtBepnHY) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |7ia-ZWHocY) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |W10hu0fp2x) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1592629954164) (:by |B1y7Rc-Zz) (:id |m85_xdQFH) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1592629955110) (:by |B1y7Rc-Zz) (:id |90001apbfQ) (:text |merge) (:type :leaf)
                                          |T $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |0RdLc_h3tnK) (:text |ui/link) (:type :leaf)
                                          |j $ {} (:at 1592629956022) (:by |B1y7Rc-Zz) (:id |py0AkB8bXr) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592629956362) (:by |B1y7Rc-Zz) (:id |Zw4Ip4jGDK) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1592629956598) (:by |B1y7Rc-Zz) (:id |YhqSfn1VJq) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592629958346) (:by |B1y7Rc-Zz) (:id |9bVuQIs-lA) (:text |:position) (:type :leaf)
                                                  |j $ {} (:at 1592629962395) (:by |B1y7Rc-Zz) (:id |pPDuP2N15D) (:text |:absolute) (:type :leaf)
                                              |r $ {} (:at 1592629962865) (:by |B1y7Rc-Zz) (:id |iIbR88Q-OH) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592629963452) (:by |B1y7Rc-Zz) (:id |iIbR88Q-OHleaf) (:text |:top) (:type :leaf)
                                                  |j $ {} (:at 1592629968701) (:by |B1y7Rc-Zz) (:id |krWj9-Pfi) (:text |8) (:type :leaf)
                                              |v $ {} (:at 1592629970070) (:by |B1y7Rc-Zz) (:id |damhpgTZr) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592629971247) (:by |B1y7Rc-Zz) (:id |damhpgTZrleaf) (:text |:right) (:type :leaf)
                                                  |j $ {} (:at 1592629981999) (:by |B1y7Rc-Zz) (:id |E0xjf4Esse) (:text |12) (:type :leaf)
                                  |r $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |XPovIFhK8ct) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |cVoqk-ZEp_c) (:text |:inner-text) (:type :leaf)
                                      |j $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |bAMV4Vp3hzx) (:text "|\"清空") (:type :leaf)
                                  |v $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |KEZoZAXIKT-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |-M0PoPFiWjn) (:text |:on-click) (:type :leaf)
                                      |j $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |V3e7pT-wnfi) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |J_r_a2dqo-N) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |Wc8N0MkTNi-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |8T1t_Dlmg0t) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |SU7a49_kxGZ) (:text |d!) (:type :leaf)
                                          |r $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |D438zgnjb8N) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |43kwIGLEeXL) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |Waan_5SEGmB) (:text |:message/clear) (:type :leaf)
                                              |r $ {} (:at 1592629951723) (:by |B1y7Rc-Zz) (:id |ea-VAfM30Kz) (:text |nil) (:type :leaf)
                      |m $ {} (:at 1592496951358) (:by |B1y7Rc-Zz) (:id |BPz5IKqvH) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592496951792) (:by |B1y7Rc-Zz) (:id |BPz5IKqvHleaf) (:text |if) (:type :leaf)
                          |j $ {} (:at 1592496952055) (:by |B1y7Rc-Zz) (:id |InrOXCIKdS) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592496953812) (:by |B1y7Rc-Zz) (:id |xuFkhXtFpt) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1592496954879) (:by |B1y7Rc-Zz) (:id |Q0dD2kj_TA) (:text |messages) (:type :leaf)
                          |n $ {} (:at 1592583474725) (:by |B1y7Rc-Zz) (:id |TadrqdPqNb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592583474982) (:by |B1y7Rc-Zz) (:id |qUFha8qQee) (:text |comp-placeholder) (:type :leaf)
                              |j $ {} (:at 1592583884922) (:by |B1y7Rc-Zz) (:id |bW6ay-vfzf) (:text "|\"没有消息") (:type :leaf)
                      |n $ {} (:at 1592495013188) (:by |B1y7Rc-Zz) (:id |j3PLS6PN7) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592496716940) (:by |B1y7Rc-Zz) (:id |j3PLS6PN7leaf) (:text |list->) (:type :leaf)
                          |j $ {} (:at 1592496723163) (:by |B1y7Rc-Zz) (:id |IDkh6DkCJ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592496723516) (:by |B1y7Rc-Zz) (:id |RVEItZfQO) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592496834739) (:by |B1y7Rc-Zz) (:id |uxFo8oIAgx) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592496835501) (:by |B1y7Rc-Zz) (:id |2oXP99YHo4) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1592582792469) (:by |B1y7Rc-Zz) (:id |vc_P4Boxa) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1592582794986) (:by |B1y7Rc-Zz) (:id |ECgUxtxpS) (:text |merge) (:type :leaf)
                                      |T $ {} (:at 1592496839431) (:by |B1y7Rc-Zz) (:id |N0CIJ7LdCB) (:text |ui/expand) (:type :leaf)
                                      |j $ {} (:at 1592582795502) (:by |B1y7Rc-Zz) (:id |mEuU2A2o_h) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592582795884) (:by |B1y7Rc-Zz) (:id |U7TX1NIHBo) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1592582796116) (:by |B1y7Rc-Zz) (:id |eht68Slz4) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592582800715) (:by |B1y7Rc-Zz) (:id |Y66OKx4hRi) (:text |:padding-bottom) (:type :leaf)
                                              |j $ {} (:at 1592582801737) (:by |B1y7Rc-Zz) (:id |U36CaEIeqN) (:text |400) (:type :leaf)
                          |r $ {} (:at 1592630157773) (:by |B1y7Rc-Zz) (:id |fZAK2QTna) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1592630159083) (:by |B1y7Rc-Zz) (:id |JRSAX5qRC) (:text |loop) (:type :leaf)
                              |T $ {} (:at 1592630159987) (:by |B1y7Rc-Zz) (:id |VbE6QUwq9T) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592630160130) (:by |B1y7Rc-Zz) (:id |gNs4cegFH) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1592630173777) (:by |B1y7Rc-Zz) (:id |I67dLeKtP7) (:text |pairs) (:type :leaf)
                                      |T $ {} (:at 1592496724512) (:by |B1y7Rc-Zz) (:id |f0nvhuiadS) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637002049294) (:by |B1y7Rc-Zz) (:id |f0nvhuiadSleaf) (:text |->) (:type :leaf)
                                          |j $ {} (:at 1592496727694) (:by |B1y7Rc-Zz) (:id |lJjsYsUqnG) (:text |messages) (:type :leaf)
                                          |l $ {} (:at 1637002050571) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637002051918) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                          |n $ {} (:at 1592496763178) (:by |B1y7Rc-Zz) (:id |Qz6PfhYsl) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637150786773) (:by |B1y7Rc-Zz) (:id |Qz6PfhYslleaf) (:text |.sort-by) (:type :leaf)
                                              |j $ {} (:at 1592496768144) (:by |B1y7Rc-Zz) (:id |Qzq6zAV4n) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592496771040) (:by |B1y7Rc-Zz) (:id |maVev20HT3) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1592496771399) (:by |B1y7Rc-Zz) (:id |g5ujxGx9Yq) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1637002062099) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                                  |r $ {} (:at 1592496774408) (:by |B1y7Rc-Zz) (:id |pSV4rDWWwG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592496775219) (:by |B1y7Rc-Zz) (:id |pSV4rDWWwGleaf) (:text |:time) (:type :leaf)
                                                      |j $ {} (:at 1637002055979) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1637002057720) (:by |B1y7Rc-Zz) (:id |sAhACbrrLc) (:text |last) (:type :leaf)
                                                          |j $ {} (:at 1637002058367) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                  |j $ {} (:at 1592630176862) (:by |B1y7Rc-Zz) (:id |UExIuUmUP) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592630189769) (:by |B1y7Rc-Zz) (:id |UExIuUmUPleaf) (:text |last-user-id) (:type :leaf)
                                      |j $ {} (:at 1592630187301) (:by |B1y7Rc-Zz) (:id |zmfS-gBmdQ) (:text |nil) (:type :leaf)
                                  |r $ {} (:at 1592630192369) (:by |B1y7Rc-Zz) (:id |a2KATmmH7U) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592630192916) (:by |B1y7Rc-Zz) (:id |a2KATmmH7Uleaf) (:text |acc) (:type :leaf)
                                      |j $ {} (:at 1592630193487) (:by |B1y7Rc-Zz) (:id |EmPCB62tYY) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592630195287) (:by |B1y7Rc-Zz) (:id |2e32P9RvL) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1592630197437) (:by |B1y7Rc-Zz) (:id |tkc1f5CFf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592630206577) (:by |B1y7Rc-Zz) (:id |tkc1f5CFfleaf) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1592630206770) (:by |B1y7Rc-Zz) (:id |504xonlq3C) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592630208594) (:by |B1y7Rc-Zz) (:id |ISV4JkO_xT) (:text |empty?) (:type :leaf)
                                      |j $ {} (:at 1592630210955) (:by |B1y7Rc-Zz) (:id |mcEy6uNNW3) (:text |pairs) (:type :leaf)
                                  |r $ {} (:at 1592630214915) (:by |B1y7Rc-Zz) (:id |0uNwmx7Uff) (:text |acc) (:type :leaf)
                                  |v $ {} (:at 1592630284159) (:by |B1y7Rc-Zz) (:id |ZAshVUYYb) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1592630284858) (:by |B1y7Rc-Zz) (:id |Dmdojk7AiQ) (:text |let) (:type :leaf)
                                      |L $ {} (:at 1592630285112) (:by |B1y7Rc-Zz) (:id |6yH-0hYxL) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592630285461) (:by |B1y7Rc-Zz) (:id |guVIKxp60b) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592630286441) (:by |B1y7Rc-Zz) (:id |cbLGKkDGGs) (:text |message) (:type :leaf)
                                              |j $ {} (:at 1592630289218) (:by |B1y7Rc-Zz) (:id |gaGXy_K9in) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592630289218) (:by |B1y7Rc-Zz) (:id |I1E5ix96Rb) (:text |last) (:type :leaf)
                                                  |j $ {} (:at 1592630289218) (:by |B1y7Rc-Zz) (:id |cSRLYwoemz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592630289218) (:by |B1y7Rc-Zz) (:id |Umq_QNZDYP) (:text |first) (:type :leaf)
                                                      |j $ {} (:at 1592630380426) (:by |B1y7Rc-Zz) (:id |PL8xz7fWPg) (:text |pairs) (:type :leaf)
                                      |T $ {} (:at 1592630215483) (:by |B1y7Rc-Zz) (:id |x7MH3EPn0I) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592630219084) (:by |B1y7Rc-Zz) (:id |Ib6-COkSz) (:text |recur) (:type :leaf)
                                          |j $ {} (:at 1592630230194) (:by |B1y7Rc-Zz) (:id |0Wnv1ZtIN) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592630232223) (:by |B1y7Rc-Zz) (:id |DmGAvlHyX) (:text |rest) (:type :leaf)
                                              |j $ {} (:at 1592630234195) (:by |B1y7Rc-Zz) (:id |30CjuzS-_C) (:text |pairs) (:type :leaf)
                                          |r $ {} (:at 1592630237966) (:by |B1y7Rc-Zz) (:id |oWlfOTNymZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592630242120) (:by |B1y7Rc-Zz) (:id |ue9j7IJuo) (:text |:author-id) (:type :leaf)
                                              |j $ {} (:at 1592630291219) (:by |B1y7Rc-Zz) (:id |TgCoNDPUch) (:text |message) (:type :leaf)
                                          |v $ {} (:at 1592630252468) (:by |B1y7Rc-Zz) (:id |Las5cDGSD) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592630259302) (:by |B1y7Rc-Zz) (:id |Las5cDGSDleaf) (:text |conj) (:type :leaf)
                                              |j $ {} (:at 1592630261445) (:by |B1y7Rc-Zz) (:id |hxQ6PRF5Pm) (:text |acc) (:type :leaf)
                                              |r $ {} (:at 1592630276915) (:by |B1y7Rc-Zz) (:id |zdh1rNemkQ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592630276915) (:by |B1y7Rc-Zz) (:id |HOHRst-nnI) (:text |[]) (:type :leaf)
                                                  |j $ {} (:at 1592630276915) (:by |B1y7Rc-Zz) (:id |x00_X7LvcB) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592630276915) (:by |B1y7Rc-Zz) (:id |zrohr6zoe5) (:text |:time) (:type :leaf)
                                                      |j $ {} (:at 1592630276915) (:by |B1y7Rc-Zz) (:id |GDH0ek-0De) (:text |message) (:type :leaf)
                                                  |r $ {} (:at 1592630276915) (:by |B1y7Rc-Zz) (:id |M74XfNRgyl) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592630276915) (:by |B1y7Rc-Zz) (:id |i0_-IVPIx6) (:text |comp-message) (:type :leaf)
                                                      |j $ {} (:at 1592630276915) (:by |B1y7Rc-Zz) (:id |TV7bgg-RMb) (:text |message) (:type :leaf)
                                                      |r $ {} (:at 1592630399220) (:by |B1y7Rc-Zz) (:id |7fGc_U9PY) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592630399696) (:by |B1y7Rc-Zz) (:id |DB-FzWyeyh) (:text |=) (:type :leaf)
                                                          |j $ {} (:at 1592630400479) (:by |B1y7Rc-Zz) (:id |TFCm_LObO) (:text |last-user-id) (:type :leaf)
                                                          |r $ {} (:at 1592630401468) (:by |B1y7Rc-Zz) (:id |WJdQ1nJeP) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592630403667) (:by |B1y7Rc-Zz) (:id |2HrZ8rz-Ne) (:text |:author-id) (:type :leaf)
                                                              |j $ {} (:at 1592630405722) (:by |B1y7Rc-Zz) (:id |JDngzjhpUx) (:text |message) (:type :leaf)
                      |r $ {} (:at 1592494766676) (:by |B1y7Rc-Zz) (:id |NrbtJUu4ZT) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592495609006) (:by |B1y7Rc-Zz) (:id |NrbtJUu4ZTleaf) (:text |div) (:type :leaf)
                          |j $ {} (:at 1592495609248) (:by |B1y7Rc-Zz) (:id |--m8A4e-kN) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592495609586) (:by |B1y7Rc-Zz) (:id |2WcI2IPCp) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592495748844) (:by |B1y7Rc-Zz) (:id |tG-KgPy8Ar) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592495750946) (:by |B1y7Rc-Zz) (:id |_0TwH7yGdC) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1592495755335) (:by |B1y7Rc-Zz) (:id |P9zJbo7je) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1592495756914) (:by |B1y7Rc-Zz) (:id |O97QYNK__Q) (:text |merge) (:type :leaf)
                                      |T $ {} (:at 1592495753137) (:by |B1y7Rc-Zz) (:id |bO7RXH5Yn) (:text |ui/row) (:type :leaf)
                                      |j $ {} (:at 1592495757340) (:by |B1y7Rc-Zz) (:id |Mbu7t_K7cM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592495757693) (:by |B1y7Rc-Zz) (:id |yKcdX2Bdo) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1592495758053) (:by |B1y7Rc-Zz) (:id |6LufwojEQu) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592495760287) (:by |B1y7Rc-Zz) (:id |dohQpKr35J) (:text |:align-items) (:type :leaf)
                                              |j $ {} (:at 1592495765973) (:by |B1y7Rc-Zz) (:id |7dyPbK2V4C) (:text |:flex-start) (:type :leaf)
                          |r $ {} (:at 1592495610079) (:by |B1y7Rc-Zz) (:id |9TugMtqU_) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592495611478) (:by |B1y7Rc-Zz) (:id |9TugMtqU_leaf) (:text |textarea) (:type :leaf)
                              |j $ {} (:at 1592495612029) (:by |B1y7Rc-Zz) (:id |2Y0sKti4Wy) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592495612317) (:by |B1y7Rc-Zz) (:id |eHq2koAZDt) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592495616524) (:by |B1y7Rc-Zz) (:id |swyah1j9yN) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592495617253) (:by |B1y7Rc-Zz) (:id |ocTlo5lJM) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1592495772574) (:by |B1y7Rc-Zz) (:id |hxihf6jcwG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1592495774006) (:by |B1y7Rc-Zz) (:id |vSu_kiI3s) (:text |merge) (:type :leaf)
                                          |L $ {} (:at 1592495783143) (:by |B1y7Rc-Zz) (:id |PVVmrwAG3) (:text |ui/expand) (:type :leaf)
                                          |T $ {} (:at 1592495620111) (:by |B1y7Rc-Zz) (:id |CzSAQx5VQy) (:text |ui/textarea) (:type :leaf)
                                  |n $ {} (:at 1592497052808) (:by |B1y7Rc-Zz) (:id |dCojwOb2mX) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592497057563) (:by |B1y7Rc-Zz) (:id |dCojwOb2mXleaf) (:text |:placeholder) (:type :leaf)
                                      |j $ {} (:at 1592497065231) (:by |B1y7Rc-Zz) (:id |G6-mTwoN6A) (:text "|\"text message...") (:type :leaf)
                                  |r $ {} (:at 1592495682692) (:by |B1y7Rc-Zz) (:id |IQ_MLa5Y3) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592495685150) (:by |B1y7Rc-Zz) (:id |IQ_MLa5Y3leaf) (:text |:value) (:type :leaf)
                                      |j $ {} (:at 1592495685579) (:by |B1y7Rc-Zz) (:id |pgRVZrUBB7) (:type :expr)
                                        :data $ {}
                                          |5 $ {} (:at 1637152900321) (:by |B1y7Rc-Zz) (:text |:draft) (:type :leaf)
                                          |D $ {} (:at 1592495692920) (:by |B1y7Rc-Zz) (:id |8oY-8t1-D-) (:text |state) (:type :leaf)
                                  |v $ {} (:at 1592495693860) (:by |B1y7Rc-Zz) (:id |1kW0VWkwHB) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592495696997) (:by |B1y7Rc-Zz) (:id |1kW0VWkwHBleaf) (:text |:on-input) (:type :leaf)
                                      |j $ {} (:at 1592495697248) (:by |B1y7Rc-Zz) (:id |CIClRyS0wx) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592495698557) (:by |B1y7Rc-Zz) (:id |CFDNvDsnB) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1592495698820) (:by |B1y7Rc-Zz) (:id |4GdSJvt4B3) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592495699047) (:by |B1y7Rc-Zz) (:id |_p6iNvcP_N) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1592495699765) (:by |B1y7Rc-Zz) (:id |N8w4okWjy) (:text |d!) (:type :leaf)
                                          |r $ {} (:at 1592495700277) (:by |B1y7Rc-Zz) (:id |6234XMZvm-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592495701899) (:by |B1y7Rc-Zz) (:id |6234XMZvm-leaf) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1592495702828) (:by |B1y7Rc-Zz) (:id |OIv7aM-Dv0) (:text |cursor) (:type :leaf)
                                              |r $ {} (:at 1592495703049) (:by |B1y7Rc-Zz) (:id |KjSDaLmHnz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592495704626) (:by |B1y7Rc-Zz) (:id |G35EDtnnHX) (:text |assoc) (:type :leaf)
                                                  |j $ {} (:at 1592495705219) (:by |B1y7Rc-Zz) (:id |rGMTlD-uHm) (:text |state) (:type :leaf)
                                                  |r $ {} (:at 1592495706288) (:by |B1y7Rc-Zz) (:id |nyHMgLergL) (:text |:draft) (:type :leaf)
                                                  |v $ {} (:at 1592495706730) (:by |B1y7Rc-Zz) (:id |nAx_YjTy0w) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592495707768) (:by |B1y7Rc-Zz) (:id |WdkDCIje7G) (:text |:value) (:type :leaf)
                                                      |j $ {} (:at 1592495708081) (:by |B1y7Rc-Zz) (:id |qJPE4VH4DX) (:text |e) (:type :leaf)
                                  |x $ {} (:at 1592497016315) (:by |B1y7Rc-Zz) (:id |DZi9r4TTQs) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592497018917) (:by |B1y7Rc-Zz) (:id |DZi9r4TTQsleaf) (:text |:on-keydown) (:type :leaf)
                                      |j $ {} (:at 1592497019204) (:by |B1y7Rc-Zz) (:id |BOZklJrmKL) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592497019492) (:by |B1y7Rc-Zz) (:id |igNFIMa3a) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1592497020089) (:by |B1y7Rc-Zz) (:id |6BafGAsQ4) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592497020267) (:by |B1y7Rc-Zz) (:id |ow0A0sx156) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1592497021128) (:by |B1y7Rc-Zz) (:id |9m-DO8cUr-) (:text |d!) (:type :leaf)
                                          |r $ {} (:at 1592497021599) (:by |B1y7Rc-Zz) (:id |y4iW4-KNwd) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592497040309) (:by |B1y7Rc-Zz) (:id |y4iW4-KNwdleaf) (:text |when) (:type :leaf)
                                              |j $ {} (:at 1592497023528) (:by |B1y7Rc-Zz) (:id |NTP4CrAfE) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592497024419) (:by |B1y7Rc-Zz) (:id |n3S8nGrvT) (:text |=) (:type :leaf)
                                                  |j $ {} (:at 1592497024994) (:by |B1y7Rc-Zz) (:id |S1Eo9-1Aw8) (:text |13) (:type :leaf)
                                                  |r $ {} (:at 1592497030713) (:by |B1y7Rc-Zz) (:id |IxiSBgA8rN) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592497029373) (:by |B1y7Rc-Zz) (:id |z9dV6RHxm) (:text |:key-code) (:type :leaf)
                                                      |j $ {} (:at 1592497029658) (:by |B1y7Rc-Zz) (:id |6pTiDMTfJp) (:text |e) (:type :leaf)
                                              |r $ {} (:at 1592497149475) (:by |B1y7Rc-Zz) (:id |2XHDbzc2nt) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592497149475) (:by |B1y7Rc-Zz) (:id |9hq1N-hjIz) (:text |send-message) (:type :leaf)
                                                  |j $ {} (:at 1592497149475) (:by |B1y7Rc-Zz) (:id |JCgrOq-xov) (:text |d!) (:type :leaf)
                                              |v $ {} (:at 1592497161490) (:by |B1y7Rc-Zz) (:id |8Nh11aBlG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592497166139) (:by |B1y7Rc-Zz) (:id |8Nh11aBlGleaf) (:text |.preventDefault) (:type :leaf)
                                                  |j $ {} (:at 1592497169945) (:by |B1y7Rc-Zz) (:id |zmjCIDUyYh) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592497172435) (:by |B1y7Rc-Zz) (:id |7G_8QQg0z) (:text |:event) (:type :leaf)
                                                      |j $ {} (:at 1592497172848) (:by |B1y7Rc-Zz) (:id |LyLNSky2LH) (:text |e) (:type :leaf)
                          |t $ {} (:at 1592495745172) (:by |B1y7Rc-Zz) (:id |239LLf-ja) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592495746168) (:by |B1y7Rc-Zz) (:id |239LLf-jaleaf) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1592495746686) (:by |B1y7Rc-Zz) (:id |Dy1Nr2Ybx-) (:text |8) (:type :leaf)
                              |r $ {} (:at 1592495747303) (:by |B1y7Rc-Zz) (:id |A9x4P255ew) (:text |nil) (:type :leaf)
                          |v $ {} (:at 1592495654245) (:by |B1y7Rc-Zz) (:id |wivpf2K94) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592583865906) (:by |B1y7Rc-Zz) (:id |wivpf2K94leaf) (:text |a) (:type :leaf)
                              |j $ {} (:at 1592495655600) (:by |B1y7Rc-Zz) (:id |yxCd03bYPw) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592495656010) (:by |B1y7Rc-Zz) (:id |gcClI3ghLO) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592495659923) (:by |B1y7Rc-Zz) (:id |8WG5pQotyE) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592495660846) (:by |B1y7Rc-Zz) (:id |cRylYV58p) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1592583867801) (:by |B1y7Rc-Zz) (:id |WsLLdaVdIA) (:text |ui/link) (:type :leaf)
                                  |r $ {} (:at 1592495666216) (:by |B1y7Rc-Zz) (:id |_ggTwANn5) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592495669738) (:by |B1y7Rc-Zz) (:id |_ggTwANn5leaf) (:text |:inner-text) (:type :leaf)
                                      |j $ {} (:at 1592583863218) (:by |B1y7Rc-Zz) (:id |8FXM1Udp_D) (:text "|\"发送") (:type :leaf)
                                  |v $ {} (:at 1592495672727) (:by |B1y7Rc-Zz) (:id |gdjpWCFVq) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592495673960) (:by |B1y7Rc-Zz) (:id |gdjpWCFVqleaf) (:text |:on-click) (:type :leaf)
                                      |j $ {} (:at 1592495674316) (:by |B1y7Rc-Zz) (:id |DsUUiIkE8) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592495674590) (:by |B1y7Rc-Zz) (:id |3hA_24MWrN) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1592495674855) (:by |B1y7Rc-Zz) (:id |cP4s5ywByz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592495675027) (:by |B1y7Rc-Zz) (:id |s34tQgv4LP) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1592495675463) (:by |B1y7Rc-Zz) (:id |ytl0Y217x) (:text |d!) (:type :leaf)
                                          |r $ {} (:at 1592497146489) (:by |B1y7Rc-Zz) (:id |S5SsZOVZQJ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592497146212) (:by |B1y7Rc-Zz) (:id |vYIotnflc4) (:text |send-message) (:type :leaf)
                                              |j $ {} (:at 1592497147357) (:by |B1y7Rc-Zz) (:id |FEsKUuxsEg) (:text |d!) (:type :leaf)
          |comp-message $ {} (:at 1592582386682) (:by |B1y7Rc-Zz) (:id |qNebV4vMgb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592582389218) (:by |B1y7Rc-Zz) (:id |01A1OxDP__) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1592582386682) (:by |B1y7Rc-Zz) (:id |VDkGoEpYJB) (:text |comp-message) (:type :leaf)
              |r $ {} (:at 1592582386682) (:by |B1y7Rc-Zz) (:id |PH5bOGzUx3) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592582386682) (:by |B1y7Rc-Zz) (:id |_Gye1zD0xx) (:text |message) (:type :leaf)
                  |j $ {} (:at 1592630428905) (:by |B1y7Rc-Zz) (:id |Tg4VZSXvlT) (:text |merged?) (:type :leaf)
              |v $ {} (:at 1592582391484) (:by |B1y7Rc-Zz) (:id |QEUfLrt9m) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1592582392748) (:by |B1y7Rc-Zz) (:id |3i10FNC1X) (:text |case) (:type :leaf)
                  |L $ {} (:at 1592582394301) (:by |B1y7Rc-Zz) (:id |1fqFezkxMb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592582397097) (:by |B1y7Rc-Zz) (:id |CQtE_DcPup) (:text |:type) (:type :leaf)
                      |j $ {} (:at 1592582398821) (:by |B1y7Rc-Zz) (:id |uq43JM7K4_) (:text |message) (:type :leaf)
                  |T $ {} (:at 1592582401063) (:by |B1y7Rc-Zz) (:id |XbcwlX-LE) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1592582405597) (:by |B1y7Rc-Zz) (:id |b6BgsenEi1) (:text |:message) (:type :leaf)
                      |T $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |XDmA8GlTZv) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |OVTb35YJY8) (:text |div) (:type :leaf)
                          |j $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |2W3vnR-app) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |y9xsagiYV5) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592582543464) (:by |B1y7Rc-Zz) (:id |UOCoOQuFDb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592582544224) (:by |B1y7Rc-Zz) (:id |y4QebDk4K) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1592584519368) (:by |B1y7Rc-Zz) (:id |8qsyEpXcPY) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1592584520247) (:by |B1y7Rc-Zz) (:id |I4DP5hrOqM) (:text |merge) (:type :leaf)
                                      |L $ {} (:at 1592584521459) (:by |B1y7Rc-Zz) (:id |z9d7tUXe9C) (:text |ui/row) (:type :leaf)
                                      |T $ {} (:at 1592582544463) (:by |B1y7Rc-Zz) (:id |mUQxQwKmok) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592582544789) (:by |B1y7Rc-Zz) (:id |bg-Lk-mT6c) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1592582545082) (:by |B1y7Rc-Zz) (:id |rgDbxwAUB) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592582546444) (:by |B1y7Rc-Zz) (:id |8xxSlhgcKM) (:text |:margin) (:type :leaf)
                                              |j $ {} (:at 1592582549334) (:by |B1y7Rc-Zz) (:id |V486MAStjv) (:text "|\"4px 0") (:type :leaf)
                          |r $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |2e6VagzhsE) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592630013923) (:by |B1y7Rc-Zz) (:id |a31lY0SVfH) (:text |span) (:type :leaf)
                              |j $ {} (:at 1592630014794) (:by |B1y7Rc-Zz) (:id |IBeqXwS7hY) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1592630015299) (:by |B1y7Rc-Zz) (:id |DurXQq5VVJ) (:text |{}) (:type :leaf)
                                  |T $ {} (:at 1592630015789) (:by |B1y7Rc-Zz) (:id |0TwVXfD_mL) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1592630017726) (:by |B1y7Rc-Zz) (:id |_NdObCst5O) (:text |:inner-text) (:type :leaf)
                                      |T $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |H9o5p7US-q) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |8KcniegCJs) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |qPtShj7Nzl) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |_6VZwDAw2w) (:text |or) (:type :leaf)
                                              |j $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |5DN1svyX9L) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |iuvZtH36SD) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |kheSxS_zQi) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |N81dj5humr) (:text |:user) (:type :leaf)
                                                      |j $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |fF-vWJkHplf) (:text |message) (:type :leaf)
                                              |r $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |04SO-SG828P) (:text "|\"GUEST") (:type :leaf)
                                  |j $ {} (:at 1592630020918) (:by |B1y7Rc-Zz) (:id |UZYmy0YP4) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592630021743) (:by |B1y7Rc-Zz) (:id |UZYmy0YP4leaf) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1592630446321) (:by |B1y7Rc-Zz) (:id |nLrQo-zuJd) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1592630447262) (:by |B1y7Rc-Zz) (:id |V1LESKsabz) (:text |merge) (:type :leaf)
                                          |T $ {} (:at 1592630021977) (:by |B1y7Rc-Zz) (:id |_X29Ybu-Xb) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592630022338) (:by |B1y7Rc-Zz) (:id |gB0vHYv3TN) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1592630022554) (:by |B1y7Rc-Zz) (:id |rPbkjLozJc) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592630023625) (:by |B1y7Rc-Zz) (:id |vl6OlKaUmj) (:text |:padding) (:type :leaf)
                                                  |j $ {} (:at 1592630074645) (:by |B1y7Rc-Zz) (:id |_UIQj_WpMx) (:text "|\"0px 8px") (:type :leaf)
                                              |r $ {} (:at 1592630035279) (:by |B1y7Rc-Zz) (:id |sCvD-XWlru) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592630038534) (:by |B1y7Rc-Zz) (:id |sCvD-XWlruleaf) (:text |:background-color) (:type :leaf)
                                                  |j $ {} (:at 1592630038731) (:by |B1y7Rc-Zz) (:id |JXTTFpFFFq) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592630039064) (:by |B1y7Rc-Zz) (:id |zwhIm84g9_) (:text |hsl) (:type :leaf)
                                                      |j $ {} (:at 1592630039653) (:by |B1y7Rc-Zz) (:id |dzsXnU_M_G) (:text |0) (:type :leaf)
                                                      |r $ {} (:at 1592630039973) (:by |B1y7Rc-Zz) (:id |Puz9nfOnTQ) (:text |0) (:type :leaf)
                                                      |v $ {} (:at 1592630082171) (:by |B1y7Rc-Zz) (:id |6KUUAwrad) (:text |94) (:type :leaf)
                                              |v $ {} (:at 1592630046554) (:by |B1y7Rc-Zz) (:id |34QxLVQWef) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592630048750) (:by |B1y7Rc-Zz) (:id |34QxLVQWefleaf) (:text |:border-radius) (:type :leaf)
                                                  |j $ {} (:at 1592630059012) (:by |B1y7Rc-Zz) (:id |_cJC6963nU) (:text "|\"12px") (:type :leaf)
                                          |j $ {} (:at 1592630447581) (:by |B1y7Rc-Zz) (:id |artp0tlHyo) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592630448023) (:by |B1y7Rc-Zz) (:id |artp0tlHyoleaf) (:text |if) (:type :leaf)
                                              |j $ {} (:at 1592630449586) (:by |B1y7Rc-Zz) (:id |RV_EJUOb6) (:text |merged?) (:type :leaf)
                                              |r $ {} (:at 1592630449945) (:by |B1y7Rc-Zz) (:id |-Exoh2U6Tm) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592630452212) (:by |B1y7Rc-Zz) (:id |VfMn2rMRWb) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1592630452468) (:by |B1y7Rc-Zz) (:id |dsDcEUNlkw) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592630454195) (:by |B1y7Rc-Zz) (:id |YgKKpdJlf-) (:text |:opacity) (:type :leaf)
                                                      |j $ {} (:at 1592630470826) (:by |B1y7Rc-Zz) (:id |jYWyAxvepM) (:text |0) (:type :leaf)
                          |v $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |AS197PsieTG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |sH0He8U5MdA) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |wmshUfzs8Ns) (:text |8) (:type :leaf)
                              |r $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |vNtsDtzg0lj) (:text |nil) (:type :leaf)
                          |x $ {} (:at 1592584509498) (:by |B1y7Rc-Zz) (:id |VEmFCMSJV_) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1592584510156) (:by |B1y7Rc-Zz) (:id |Ywz7yr_PDK) (:text |div) (:type :leaf)
                              |L $ {} (:at 1592584513485) (:by |B1y7Rc-Zz) (:id |tBLvotNB8k) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584513485) (:by |B1y7Rc-Zz) (:id |CuPkLY_AkZ) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592584513485) (:by |B1y7Rc-Zz) (:id |1W2afLAZYt) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592584513485) (:by |B1y7Rc-Zz) (:id |wT6107xpAt) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1592584513485) (:by |B1y7Rc-Zz) (:id |FIWWwA6Nhp) (:text |ui/expand) (:type :leaf)
                              |T $ {} (:at 1592630910960) (:by |B1y7Rc-Zz) (:id |kCTj8FVT_o) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1592630911497) (:by |B1y7Rc-Zz) (:id |rdSXGCd4U) (:text |if) (:type :leaf)
                                  |L $ {} (:at 1592630912024) (:by |B1y7Rc-Zz) (:id |2IAmwKzLXk) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592630915994) (:by |B1y7Rc-Zz) (:id |juzLM-BLkI) (:text |:blotted?) (:type :leaf)
                                      |j $ {} (:at 1592630916983) (:by |B1y7Rc-Zz) (:id |aJR7RV-3Z) (:text |message) (:type :leaf)
                                  |P $ {} (:at 1592630918003) (:by |B1y7Rc-Zz) (:id |HCcOXsvBof) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592630920059) (:by |B1y7Rc-Zz) (:id |So-CceYIsX) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1592631107560) (:by |B1y7Rc-Zz) (:id |l40Tb5S94a) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592631109487) (:by |B1y7Rc-Zz) (:id |_pk6l9EPQY) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1592631112174) (:by |B1y7Rc-Zz) (:id |vB_qbE7Alm) (:text |message) (:type :leaf)
                                      |r $ {} (:at 1592630927109) (:by |B1y7Rc-Zz) (:id |TMvsYECVO) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592630927470) (:by |B1y7Rc-Zz) (:id |qaZAhRTID9) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1592630927721) (:by |B1y7Rc-Zz) (:id |Jzz2jaf0Ch) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592630928468) (:by |B1y7Rc-Zz) (:id |3dmF5rt33M) (:text |:color) (:type :leaf)
                                              |j $ {} (:at 1592630928691) (:by |B1y7Rc-Zz) (:id |VP7nrM4z2J) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592630929062) (:by |B1y7Rc-Zz) (:id |Bjn7l92mIo) (:text |hsl) (:type :leaf)
                                                  |j $ {} (:at 1592630929662) (:by |B1y7Rc-Zz) (:id |xZ6PBaHHc5) (:text |0) (:type :leaf)
                                                  |r $ {} (:at 1592630929984) (:by |B1y7Rc-Zz) (:id |fhMrtiSXIS) (:text |0) (:type :leaf)
                                                  |v $ {} (:at 1592630930470) (:by |B1y7Rc-Zz) (:id |K3yDGKE0-) (:text |80) (:type :leaf)
                                          |r $ {} (:at 1592631073209) (:by |B1y7Rc-Zz) (:id |9zOhzQbOQ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592631077698) (:by |B1y7Rc-Zz) (:id |9zOhzQbOQleaf) (:text |:text-decoration) (:type :leaf)
                                              |j $ {} (:at 1592631083673) (:by |B1y7Rc-Zz) (:id |RfOYEPQ6RX) (:text |:line-through) (:type :leaf)
                                  |T $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |wSSXJpO92XL) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |ehv0tHtG2Cn) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |XAjHKpBp-XS) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |HBcT1v-JaRK) (:text |:text) (:type :leaf)
                                          |j $ {} (:at 1592582390522) (:by |B1y7Rc-Zz) (:id |fy9_fhfZwhZ) (:text |message) (:type :leaf)
                              |b $ {} (:at 1592630588679) (:by |B1y7Rc-Zz) (:id |vjQb40h6Cc) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592630589261) (:by |B1y7Rc-Zz) (:id |vjQb40h6Ccleaf) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1592630590089) (:by |B1y7Rc-Zz) (:id |iEKHZ9eyd6) (:text |8) (:type :leaf)
                                  |r $ {} (:at 1592630590828) (:by |B1y7Rc-Zz) (:id |7CSRKVehWT) (:text |nil) (:type :leaf)
                              |j $ {} (:at 1592630554240) (:by |B1y7Rc-Zz) (:id |dCYsMkH0b) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592630555585) (:by |B1y7Rc-Zz) (:id |dCYsMkH0bleaf) (:text |<>) (:type :leaf)
                                  |j $ {} (:at 1592630555972) (:by |B1y7Rc-Zz) (:id |ypkc1dbVlW) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1592630566483) (:by |B1y7Rc-Zz) (:id |-8IEhkDJU) (:text |->) (:type :leaf)
                                      |L $ {} (:at 1592630567652) (:by |B1y7Rc-Zz) (:id |T9xM0HQ42I) (:text |message) (:type :leaf)
                                      |P $ {} (:at 1592630569467) (:by |B1y7Rc-Zz) (:id |vCrBEfIdJi) (:text |:time) (:type :leaf)
                                      |T $ {} (:at 1592630557626) (:by |B1y7Rc-Zz) (:id |n2jSBItUF9) (:text |dayjs) (:type :leaf)
                                      |j $ {} (:at 1592630570166) (:by |B1y7Rc-Zz) (:id |RJp2_KcKb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592630571675) (:by |B1y7Rc-Zz) (:id |5V80ZMYmi0) (:text |.format) (:type :leaf)
                                          |j $ {} (:at 1592630584597) (:by |B1y7Rc-Zz) (:id |DkVpGcUXNq) (:text "|\"HH:mm:ss") (:type :leaf)
                                  |r $ {} (:at 1592630594823) (:by |B1y7Rc-Zz) (:id |3ptz4-YNAT) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592630595328) (:by |B1y7Rc-Zz) (:id |3ptz4-YNATleaf) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1592630595619) (:by |B1y7Rc-Zz) (:id |j2-ApvEMNX) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592630597315) (:by |B1y7Rc-Zz) (:id |Rt4bAXZmqH) (:text |:color) (:type :leaf)
                                          |j $ {} (:at 1592630597531) (:by |B1y7Rc-Zz) (:id |rhvn9FrQCj) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592630601901) (:by |B1y7Rc-Zz) (:id |JXGCpmkvT2) (:text |hsl) (:type :leaf)
                                              |j $ {} (:at 1592630598223) (:by |B1y7Rc-Zz) (:id |Eeo_9uFJZe) (:text |0) (:type :leaf)
                                              |r $ {} (:at 1592630598437) (:by |B1y7Rc-Zz) (:id |dDuzJge51Y) (:text |0) (:type :leaf)
                                              |v $ {} (:at 1592630598802) (:by |B1y7Rc-Zz) (:id |vFHm0se1Vz) (:text |80) (:type :leaf)
                                      |r $ {} (:at 1592630602934) (:by |B1y7Rc-Zz) (:id |wJA2AZWNFP) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592630606772) (:by |B1y7Rc-Zz) (:id |wJA2AZWNFPleaf) (:text |:font-size) (:type :leaf)
                                          |j $ {} (:at 1592630630136) (:by |B1y7Rc-Zz) (:id |6a7iaJYUmQ) (:text |12) (:type :leaf)
                                      |v $ {} (:at 1592630607679) (:by |B1y7Rc-Zz) (:id |OAE0riCgdp) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592630612330) (:by |B1y7Rc-Zz) (:id |OAE0riCgdpleaf) (:text |:font-family) (:type :leaf)
                                          |j $ {} (:at 1592630615817) (:by |B1y7Rc-Zz) (:id |MufVc5nbaM) (:text |ui/font-fancy) (:type :leaf)
                              |r $ {} (:at 1592630988163) (:by |B1y7Rc-Zz) (:id |b-PGoUuT2X) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1592630992493) (:by |B1y7Rc-Zz) (:id |7Fh7FSm0Td) (:text |if-not) (:type :leaf)
                                  |L $ {} (:at 1592630990296) (:by |B1y7Rc-Zz) (:id |jdpiSA1xUJ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592630990296) (:by |B1y7Rc-Zz) (:id |ISBiOIBqen) (:text |:blotted?) (:type :leaf)
                                      |j $ {} (:at 1592630990296) (:by |B1y7Rc-Zz) (:id |UvPqneXUiO) (:text |message) (:type :leaf)
                                  |T $ {} (:at 1592630713859) (:by |B1y7Rc-Zz) (:id |mWkNssYBzS) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1592630716327) (:by |B1y7Rc-Zz) (:id |0xOjxH5TX) (:text |span) (:type :leaf)
                                      |L $ {} (:at 1592630729021) (:by |B1y7Rc-Zz) (:id |oHgbNbdP74) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592630729366) (:by |B1y7Rc-Zz) (:id |qopjlDK2pf) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1592630754813) (:by |B1y7Rc-Zz) (:id |dXQa9fvZKa) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592630757712) (:by |B1y7Rc-Zz) (:id |tgV7AA38L1) (:text |:class-name) (:type :leaf)
                                              |j $ {} (:at 1592630769446) (:by |B1y7Rc-Zz) (:id |BeGHqVEDKa) (:text "|\"invisible-link") (:type :leaf)
                                          |r $ {} (:at 1592630790256) (:by |B1y7Rc-Zz) (:id |WzKdfqOuh) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592630792347) (:by |B1y7Rc-Zz) (:id |WzKdfqOuhleaf) (:text |:on-click) (:type :leaf)
                                              |j $ {} (:at 1592630818484) (:by |B1y7Rc-Zz) (:id |g-lMiEWJNF) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592630819481) (:by |B1y7Rc-Zz) (:id |-HNk-EuC_) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1592630819721) (:by |B1y7Rc-Zz) (:id |1id6RgZt4S) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592630819913) (:by |B1y7Rc-Zz) (:id |_PsOcxXGkc) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1592630820540) (:by |B1y7Rc-Zz) (:id |Wwa-G_n0ow) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1592630820933) (:by |B1y7Rc-Zz) (:id |aeeMqB5hwa) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592630821819) (:by |B1y7Rc-Zz) (:id |aeeMqB5hwaleaf) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1592630969234) (:by |B1y7Rc-Zz) (:id |nzbp-teEJC) (:text |:message/blot-out) (:type :leaf)
                                                      |r $ {} (:at 1592630827180) (:by |B1y7Rc-Zz) (:id |ZUv4gllFP) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592630829973) (:by |B1y7Rc-Zz) (:id |-VPAp1WwVk) (:text |:id) (:type :leaf)
                                                          |j $ {} (:at 1592630831132) (:by |B1y7Rc-Zz) (:id |I1Man92a7) (:text |message) (:type :leaf)
                                      |T $ {} (:at 1592630711046) (:by |B1y7Rc-Zz) (:id |lElb8Mlq4) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592630712873) (:by |B1y7Rc-Zz) (:id |lElb8Mlq4leaf) (:text |comp-i) (:type :leaf)
                                          |j $ {} (:at 1592630720054) (:by |B1y7Rc-Zz) (:id |xWMP9l8Ld) (:text |:x) (:type :leaf)
                                          |r $ {} (:at 1592630722887) (:by |B1y7Rc-Zz) (:id |VY_gTSTTY) (:text |10) (:type :leaf)
                                          |v $ {} (:at 1592630723520) (:by |B1y7Rc-Zz) (:id |-BRT12uu65) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592630723885) (:by |B1y7Rc-Zz) (:id |riXocjvw4) (:text |hsl) (:type :leaf)
                                              |j $ {} (:at 1592630724462) (:by |B1y7Rc-Zz) (:id |lmwGe4_Vp) (:text |0) (:type :leaf)
                                              |r $ {} (:at 1592630726016) (:by |B1y7Rc-Zz) (:id |rjKl5OcYFn) (:text |80) (:type :leaf)
                                              |v $ {} (:at 1592630726615) (:by |B1y7Rc-Zz) (:id |BkVYAFmEb) (:text |80) (:type :leaf)
                  |j $ {} (:at 1592582406484) (:by |B1y7Rc-Zz) (:id |V2m8f1V-U) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592582407300) (:by |B1y7Rc-Zz) (:id |V2m8f1V-Uleaf) (:text |:quote) (:type :leaf)
                      |j $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |kLZfpG67Vq) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |wkO27M5ewT) (:text |div) (:type :leaf)
                          |j $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |4-frKh3MMK) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |dtvWpmrw_T) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592582468932) (:by |B1y7Rc-Zz) (:id |GqPXhfkGqA) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592582471018) (:by |B1y7Rc-Zz) (:id |tia1banwp) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1592582472761) (:by |B1y7Rc-Zz) (:id |A-Yo4h3QC2) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1592582478436) (:by |B1y7Rc-Zz) (:id |8oIBWmBTF) (:text |merge) (:type :leaf)
                                      |T $ {} (:at 1592582475102) (:by |B1y7Rc-Zz) (:id |CP1IiHGKqq) (:text |ui/row) (:type :leaf)
                                      |j $ {} (:at 1592582479455) (:by |B1y7Rc-Zz) (:id |7Xox32RQ_7) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592582480044) (:by |B1y7Rc-Zz) (:id |ryAkfveHN) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1592582481134) (:by |B1y7Rc-Zz) (:id |S0AORZamT) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592582484154) (:by |B1y7Rc-Zz) (:id |5KXDtpB8v) (:text |:align-items) (:type :leaf)
                                              |j $ {} (:at 1592582488423) (:by |B1y7Rc-Zz) (:id |GjXPE518vq) (:text |:flex-start) (:type :leaf)
                                          |r $ {} (:at 1592582555700) (:by |B1y7Rc-Zz) (:id |wDfVtf2RVS) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592582564519) (:by |B1y7Rc-Zz) (:id |wDfVtf2RVSleaf) (:text |:margin) (:type :leaf)
                                              |j $ {} (:at 1592582561036) (:by |B1y7Rc-Zz) (:id |ZvPR6OnhI) (:text "|\"4px 0") (:type :leaf)
                          |r $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |1oOs6BX5Q0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |D1d1--w6sN) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1592584452775) (:by |B1y7Rc-Zz) (:id |OEm-NyBu6v) (:text "|\"生成了") (:type :leaf)
                              |r $ {} (:at 1592582452106) (:by |B1y7Rc-Zz) (:id |HTwtyRc0C) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592582452448) (:by |B1y7Rc-Zz) (:id |0_1wPYbN3s) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592582452659) (:by |B1y7Rc-Zz) (:id |umQDs2A_8Z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592582454455) (:by |B1y7Rc-Zz) (:id |no1QrkoM9B) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1592582455249) (:by |B1y7Rc-Zz) (:id |mFcmmacCv) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592582455758) (:by |B1y7Rc-Zz) (:id |jt9uiL5fBR) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1592582456146) (:by |B1y7Rc-Zz) (:id |TOZwqn6awO) (:text |0) (:type :leaf)
                                          |r $ {} (:at 1592582456421) (:by |B1y7Rc-Zz) (:id |MzsKF673ws) (:text |0) (:type :leaf)
                                          |v $ {} (:at 1592582456747) (:by |B1y7Rc-Zz) (:id |j3x3NGjQv4) (:text |80) (:type :leaf)
                          |v $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |-X75GIJnzqu) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |pWK2kVFpRca) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |EXk7MkCGGo8) (:text |8) (:type :leaf)
                              |r $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |SXGUATSVfPS) (:text |nil) (:type :leaf)
                          |x $ {} (:at 1592584492510) (:by |B1y7Rc-Zz) (:id |aAiQ0yJVhA) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1592584504578) (:by |B1y7Rc-Zz) (:id |I5YVLjTMEi) (:text |div) (:type :leaf)
                              |L $ {} (:at 1592584493534) (:by |B1y7Rc-Zz) (:id |yZ922oNkuE) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584495896) (:by |B1y7Rc-Zz) (:id |deJG-2tjaP) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592584496160) (:by |B1y7Rc-Zz) (:id |SrIsjWML1) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592584498879) (:by |B1y7Rc-Zz) (:id |hSuwYr2shE) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1592584501584) (:by |B1y7Rc-Zz) (:id |GTh89gv9iv) (:text |ui/expand) (:type :leaf)
                              |T $ {} (:at 1592582462975) (:by |B1y7Rc-Zz) (:id |Gcp2x1RP1D) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1592582464389) (:by |B1y7Rc-Zz) (:id |tAtcq-Y_G) (:text |div) (:type :leaf)
                                  |L $ {} (:at 1592582464628) (:by |B1y7Rc-Zz) (:id |CNxZtioSpl) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592582464974) (:by |B1y7Rc-Zz) (:id |M7GvM3e0UX) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1592582506351) (:by |B1y7Rc-Zz) (:id |5_ZJSoFidp) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592582508472) (:by |B1y7Rc-Zz) (:id |5uJ0WnZgW) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1592630441837) (:by |B1y7Rc-Zz) (:id |KxUsfVElhJ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592582509034) (:by |B1y7Rc-Zz) (:id |bcSzDzHMJh) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1592582509475) (:by |B1y7Rc-Zz) (:id |gG6DtHBGdL) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592582513121) (:by |B1y7Rc-Zz) (:id |QF1W99wk6) (:text |:background-color) (:type :leaf)
                                                  |j $ {} (:at 1592582513387) (:by |B1y7Rc-Zz) (:id |RfhJAmRM76) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592582513738) (:by |B1y7Rc-Zz) (:id |PNw70x7Uqq) (:text |hsl) (:type :leaf)
                                                      |j $ {} (:at 1592582516388) (:by |B1y7Rc-Zz) (:id |4z3tKNbVE) (:text |200) (:type :leaf)
                                                      |r $ {} (:at 1592582516805) (:by |B1y7Rc-Zz) (:id |0LAt-1ycqX) (:text |80) (:type :leaf)
                                                      |v $ {} (:at 1592582517725) (:by |B1y7Rc-Zz) (:id |6uwys2cVk-) (:text |50) (:type :leaf)
                                              |r $ {} (:at 1592582519307) (:by |B1y7Rc-Zz) (:id |7EmtXNqVX) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592582520115) (:by |B1y7Rc-Zz) (:id |7EmtXNqVXleaf) (:text |:color) (:type :leaf)
                                                  |j $ {} (:at 1592582520908) (:by |B1y7Rc-Zz) (:id |WhMLGr7Pfa) (:text |:white) (:type :leaf)
                                              |v $ {} (:at 1592582523488) (:by |B1y7Rc-Zz) (:id |Kjf0jfmUZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592582524783) (:by |B1y7Rc-Zz) (:id |Kjf0jfmUZleaf) (:text |:padding) (:type :leaf)
                                                  |j $ {} (:at 1592582586021) (:by |B1y7Rc-Zz) (:id |zE5V5amWRV) (:text "|\"2px 8px") (:type :leaf)
                                              |x $ {} (:at 1592582530623) (:by |B1y7Rc-Zz) (:id |uKYqSxg4Lg) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592582533521) (:by |B1y7Rc-Zz) (:id |uKYqSxg4Lgleaf) (:text |:border-radius) (:type :leaf)
                                                  |j $ {} (:at 1592582536964) (:by |B1y7Rc-Zz) (:id |BEA1z0CKAr) (:text "|\"6px") (:type :leaf)
                                              |y $ {} (:at 1592582570645) (:by |B1y7Rc-Zz) (:id |Xyfkoc59HI) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592582572023) (:by |B1y7Rc-Zz) (:id |Xyfkoc59HIleaf) (:text |:font-size) (:type :leaf)
                                                  |j $ {} (:at 1592582572691) (:by |B1y7Rc-Zz) (:id |43bk7CDRW) (:text |20) (:type :leaf)
                                              |yT $ {} (:at 1592582578576) (:by |B1y7Rc-Zz) (:id |W-ceNpCCpa) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592582590443) (:by |B1y7Rc-Zz) (:id |W-ceNpCCpaleaf) (:text |:line-height) (:type :leaf)
                                                  |j $ {} (:at 1592582603286) (:by |B1y7Rc-Zz) (:id |kZj0EGK2-s) (:text "|\"30px") (:type :leaf)
                                  |T $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |7DLJrCHpb0H) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |QyplAhZ0E4i) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |dxCluQLVUoz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |eI4DwjjRPyt) (:text |:text) (:type :leaf)
                                          |j $ {} (:at 1592582441723) (:by |B1y7Rc-Zz) (:id |xBPhqvi7uVD) (:text |message) (:type :leaf)
                  |n $ {} (:at 1592582689145) (:by |B1y7Rc-Zz) (:id |hl-CsOKBX2) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592582692490) (:by |B1y7Rc-Zz) (:id |rxVN9ufyQm) (:text |:operation) (:type :leaf)
                      |j $ {} (:at 1592582689145) (:by |B1y7Rc-Zz) (:id |kuBM20Ux20) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592582689145) (:by |B1y7Rc-Zz) (:id |B5nK0sXpaQ) (:text |div) (:type :leaf)
                          |j $ {} (:at 1592582689145) (:by |B1y7Rc-Zz) (:id |8qhyyX7uvX) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592582689145) (:by |B1y7Rc-Zz) (:id |mIzfzQw6g9) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592582689145) (:by |B1y7Rc-Zz) (:id |Mtc5j5pJKR) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592582689145) (:by |B1y7Rc-Zz) (:id |jH8CXipbDs) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1592584528316) (:by |B1y7Rc-Zz) (:id |QylRcQo29d) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1592584529210) (:by |B1y7Rc-Zz) (:id |i6bFQTHgeC) (:text |merge) (:type :leaf)
                                      |L $ {} (:at 1592631451356) (:by |B1y7Rc-Zz) (:id |1xlrAc_WdK) (:text |ui/center) (:type :leaf)
                                      |T $ {} (:at 1592582689145) (:by |B1y7Rc-Zz) (:id |Sf4Ou-Ipl7) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592582689145) (:by |B1y7Rc-Zz) (:id |g4iKB9SJFr) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1592582689145) (:by |B1y7Rc-Zz) (:id |A1gdepqlIR) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592582689145) (:by |B1y7Rc-Zz) (:id |hYioPO0Kmd) (:text |:margin) (:type :leaf)
                                              |j $ {} (:at 1592631908466) (:by |B1y7Rc-Zz) (:id |b6N_8t0wmn) (:text "|\"8px 0") (:type :leaf)
                          |x $ {} (:at 1592631460678) (:by |B1y7Rc-Zz) (:id |GUQ6_F9nQO) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631460678) (:by |B1y7Rc-Zz) (:id |JMtOXbSEyG) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1592631460678) (:by |B1y7Rc-Zz) (:id |hNn9_DNQkF) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631465854) (:by |B1y7Rc-Zz) (:id |k9u8VYdwE) (:text |str) (:type :leaf)
                                  |j $ {} (:at 1592631466188) (:by |B1y7Rc-Zz) (:id |mx4-FlILQ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631468949) (:by |B1y7Rc-Zz) (:id |IIpC1NEe9I) (:text |get-in) (:type :leaf)
                                      |j $ {} (:at 1592631472021) (:by |B1y7Rc-Zz) (:id |B4J_eHwvN) (:text |message) (:type :leaf)
                                      |r $ {} (:at 1592631472428) (:by |B1y7Rc-Zz) (:id |ZnaMi9Yk2) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592631472606) (:by |B1y7Rc-Zz) (:id |XYbGGvtyK9) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1592631473267) (:by |B1y7Rc-Zz) (:id |8cDoU3BZqy) (:text |:user) (:type :leaf)
                                          |r $ {} (:at 1592631474754) (:by |B1y7Rc-Zz) (:id |GSinzoKLbo) (:text |:name) (:type :leaf)
                                  |r $ {} (:at 1592631478160) (:by |B1y7Rc-Zz) (:id |1tfqTK6Rrm) (:text "|\" ") (:type :leaf)
                                  |v $ {} (:at 1592631479305) (:by |B1y7Rc-Zz) (:id |UmS3fThtGp) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631481910) (:by |B1y7Rc-Zz) (:id |jFFZsC8wr) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1592631483046) (:by |B1y7Rc-Zz) (:id |BitAPhJWK) (:text |message) (:type :leaf)
                              |r $ {} (:at 1592631460678) (:by |B1y7Rc-Zz) (:id |rkBqCkavGj) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631460678) (:by |B1y7Rc-Zz) (:id |syiRCwzOLe) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592631460678) (:by |B1y7Rc-Zz) (:id |WOQlcB00za) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631460678) (:by |B1y7Rc-Zz) (:id |wFyS1XM1q2) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1592631460678) (:by |B1y7Rc-Zz) (:id |VSY7zSU6wE) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592631460678) (:by |B1y7Rc-Zz) (:id |sPzbq5f942) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1592631460678) (:by |B1y7Rc-Zz) (:id |qbZsQSfeIr) (:text |0) (:type :leaf)
                                          |r $ {} (:at 1592631460678) (:by |B1y7Rc-Zz) (:id |NvkfvoUVec) (:text |0) (:type :leaf)
                                          |v $ {} (:at 1592631508389) (:by |B1y7Rc-Zz) (:id |qmR6WsUMk9) (:text |100) (:type :leaf)
                                  |r $ {} (:at 1592631492333) (:by |B1y7Rc-Zz) (:id |MGmWPlyO6j) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631494694) (:by |B1y7Rc-Zz) (:id |MGmWPlyO6jleaf) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1592631494934) (:by |B1y7Rc-Zz) (:id |yYAJWHwiCM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592631495335) (:by |B1y7Rc-Zz) (:id |HnWyONKsRc) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1592631495842) (:by |B1y7Rc-Zz) (:id |9XNuIiGOp1) (:text |0) (:type :leaf)
                                          |r $ {} (:at 1592631496122) (:by |B1y7Rc-Zz) (:id |DR7bUWmUhr) (:text |0) (:type :leaf)
                                          |v $ {} (:at 1592631567368) (:by |B1y7Rc-Zz) (:id |4q3om3XnJL) (:text |88) (:type :leaf)
                                  |v $ {} (:at 1592631500895) (:by |B1y7Rc-Zz) (:id |DVulnJ-bTI) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631503719) (:by |B1y7Rc-Zz) (:id |DVulnJ-bTIleaf) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1592631506031) (:by |B1y7Rc-Zz) (:id |KhTgoiqdsl) (:text "|\"0 16px") (:type :leaf)
                                  |x $ {} (:at 1592631512424) (:by |B1y7Rc-Zz) (:id |2ZUI4MiNjc) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631514854) (:by |B1y7Rc-Zz) (:id |2ZUI4MiNjcleaf) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1592631515279) (:by |B1y7Rc-Zz) (:id |F9DMXDylVL) (:text |12) (:type :leaf)
                                  |y $ {} (:at 1592631516067) (:by |B1y7Rc-Zz) (:id |FPh7Aist6) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631518775) (:by |B1y7Rc-Zz) (:id |FPh7Aist6leaf) (:text |:line-height) (:type :leaf)
                                      |j $ {} (:at 1592631523383) (:by |B1y7Rc-Zz) (:id |OyI7BnRxq9) (:text "|\"20px") (:type :leaf)
                                  |yT $ {} (:at 1592631542387) (:by |B1y7Rc-Zz) (:id |zTmzI6oFJt) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631544333) (:by |B1y7Rc-Zz) (:id |zTmzI6oFJtleaf) (:text |:border-radius) (:type :leaf)
                                      |j $ {} (:at 1592631553262) (:by |B1y7Rc-Zz) (:id |2AX4eo-GAe) (:text "|\"4px") (:type :leaf)
                  |r $ {} (:at 1592582410119) (:by |B1y7Rc-Zz) (:id |aXavM5zi8) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592582411386) (:by |B1y7Rc-Zz) (:id |aXavM5zi8leaf) (:text |<>) (:type :leaf)
                      |j $ {} (:at 1592582412734) (:by |B1y7Rc-Zz) (:id |Hf0DIzurN) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592582413255) (:by |B1y7Rc-Zz) (:id |YZj3TOSwJm) (:text |str) (:type :leaf)
                          |j $ {} (:at 1592582424867) (:by |B1y7Rc-Zz) (:id |ZDgVQRv-TY) (:text "|\"Unknown message type: ") (:type :leaf)
                          |r $ {} (:at 1592582425866) (:by |B1y7Rc-Zz) (:id |xoKG8L7tt8) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592582426622) (:by |B1y7Rc-Zz) (:id |RTaNNpnne) (:text |:type) (:type :leaf)
                              |j $ {} (:at 1592582428258) (:by |B1y7Rc-Zz) (:id |vsWaTX-C3b) (:text |message) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |BkUXGcUegABW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |S1DXG98elCSb) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |HkO7fcLel0SZ) (:text |app.comp.chatroom) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |S1HVf5UxlRHZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HJLNzq8glABb) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |BywNMcUleAHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk_4zqLggASb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1637150426110) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkcEM9IgxCSZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJsNzqLleASW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |ry3NM5IegRSW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkTNfcLeeRBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |HkCNz98el0Bb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HJySMq8xgRSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547394445) (:by |root) (:id |HkeBG5Lgl0SW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkWrzqIxx0B-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |S1GrG5LegAHZ) (:text |ui) (:type :leaf)
                |w $ {} (:at 1523120376505) (:by |root) (:id |BkxlWtdUjM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1523120376949) (:by |root) (:id |BkxlWtdUjMleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120379036) (:by |root) (:id |Sk--WFuIoG) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1523120382218) (:by |root) (:id |By4XbFu8oG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1523120382545) (:by |root) (:id |r1DWtdUjM) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1523120382719) (:by |root) (:id |SJEUbFOLjG) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120383255) (:by |root) (:id |BkGPZKu8oM) (:text |=<) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |SkVQg5h1z) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk2XMq8lgCHZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540962179719) (:by |root) (:id |HJp7zc8xxArZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1AmGcLexRH-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyJNG5IexArb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rkxNGqLxg0rZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BkbEz9LegRr-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |BJM4fcLlxCrb) (:text |<>) (:type :leaf)
                        |t $ {} (:at 1592496721104) (:by |B1y7Rc-Zz) (:id |_m8v9OgZc9) (:text |list->) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SyQ4McIex0HZ) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HkNEM9Lee0HZ) (:text |div) (:type :leaf)
                        |y $ {} (:at 1592495614817) (:by |B1y7Rc-Zz) (:id |BllfMQAWXT) (:text |textarea) (:type :leaf)
                        |yT $ {} (:at 1592495658701) (:by |B1y7Rc-Zz) (:id |zGoJCnNwMm) (:text |button) (:type :leaf)
                        |yj $ {} (:at 1592496860466) (:by |B1y7Rc-Zz) (:id |6D4RwRzxXI) (:text |a) (:type :leaf)
                |y $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |3JW2PGwjK4) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |3Q4lXqy0N7) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |Y_HhVDj3zn) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1536561758845) (:by |B1y7Rc-Zz) (:id |D0d_mzNKRn) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1536561761903) (:by |B1y7Rc-Zz) (:id |sJXt922sWs) (:text |config) (:type :leaf)
                |yT $ {} (:at 1592497136504) (:by |B1y7Rc-Zz) (:id |V9B0d8_Ezk) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592497136794) (:by |B1y7Rc-Zz) (:id |V9B0d8_Ezkleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592497139103) (:by |B1y7Rc-Zz) (:id |SIDmtIC4z) (:text |clojure.string) (:type :leaf)
                    |r $ {} (:at 1592497139512) (:by |B1y7Rc-Zz) (:id |11e7eXWBBY) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1592497140359) (:by |B1y7Rc-Zz) (:id |klOf88MtHq) (:text |string) (:type :leaf)
                |yj $ {} (:at 1592583461310) (:by |B1y7Rc-Zz) (:id |RKBNbZ2tV6) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592583462433) (:by |B1y7Rc-Zz) (:id |RKBNbZ2tV6leaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592583465117) (:by |B1y7Rc-Zz) (:id |rnGYyzGQRc) (:text |app.comp) (:type :leaf)
                    |r $ {} (:at 1592583465879) (:by |B1y7Rc-Zz) (:id |vP95MgVAkG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1592583466034) (:by |B1y7Rc-Zz) (:id |7ZIheO-gHQ) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1592583466255) (:by |B1y7Rc-Zz) (:id |LrSDxBmmvB) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1592583468215) (:by |B1y7Rc-Zz) (:id |qD_hQYyVMc) (:text |comp-placeholder) (:type :leaf)
                |yr $ {} (:at 1592630534243) (:by |B1y7Rc-Zz) (:id |Yej6OF17w) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592630534569) (:by |B1y7Rc-Zz) (:id |Yej6OF17wleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592630536115) (:by |B1y7Rc-Zz) (:id |hcf4R_LgVu) (:text "|\"dayjs") (:type :leaf)
                    |r $ {} (:at 1637150732747) (:by |B1y7Rc-Zz) (:id |YOP_9nvn4e) (:text |:default) (:type :leaf)
                    |v $ {} (:at 1592630537612) (:by |B1y7Rc-Zz) (:id |xLU6yXdzTf) (:text |dayjs) (:type :leaf)
                |yv $ {} (:at 1592630734181) (:by |B1y7Rc-Zz) (:id |rZ5KvOirc) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592630734475) (:by |B1y7Rc-Zz) (:id |rZ5KvOircleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592630739534) (:by |B1y7Rc-Zz) (:id |r_WCGEHWCE) (:text |feather.core) (:type :leaf)
                    |r $ {} (:at 1592630741449) (:by |B1y7Rc-Zz) (:id |t_eot2mGFR) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1592630741654) (:by |B1y7Rc-Zz) (:id |ZwC5NXkcTj) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1592630741823) (:by |B1y7Rc-Zz) (:id |ry8Jm5H4kU) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1592630743095) (:by |B1y7Rc-Zz) (:id |zFu52OX7RQ) (:text |comp-icon) (:type :leaf)
                        |r $ {} (:at 1592630748569) (:by |B1y7Rc-Zz) (:id |LP5UFjWKy) (:text |comp-i) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |SJ1Uz9LeeAB-) (:type :expr)
          :data $ {}
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {} (:at 1500541010211) (:by nil) (:id |rJcN9Iee0Bb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |ryo4cIlgAHZ) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |H1hV5IlxCH-) (:text |comp-container) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |r1aE9IglCB-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1CV9UxeCBb) (:text |states) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |SkyrqIglCr-) (:text |store) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |HyxSq8llRHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |ByZB58exAB-) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |rkzr9UggCHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by nil) (:id |HJmS5IllASW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rJVBcUxx0Bb) (:text |state) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |ByrH5IggAHW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |S1LScUglRSW) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |SJvHc8eeAB-) (:text |states) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |ryuSqIllABW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkYrq8lgCHb) (:text |session) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BycSqLllCSW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |Hksr5IxlCSZ) (:text |:session) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |SJhS5UxeRBb) (:text |store) (:type :leaf)
                      |r $ {} (:at 1525106928554) (:by |root) (:id |HyYgtpEaG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525106929232) (:by |root) (:id |HyYgtpEaGleaf) (:text |router) (:type :leaf)
                          |j $ {} (:at 1525106929915) (:by |root) (:id |Skg5etaNTM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525106930860) (:by |root) (:id |HyLFeYpEaG) (:text |:router) (:type :leaf)
                              |j $ {} (:at 1525106931558) (:by |root) (:id |HkNigK646z) (:text |store) (:type :leaf)
                      |v $ {} (:at 1525106933346) (:by |root) (:id |Sye6lY64aM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525106935393) (:by |root) (:id |Sye6lY64aMleaf) (:text |router-data) (:type :leaf)
                          |j $ {} (:at 1525106935675) (:by |root) (:id |H1eWtaNTz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525106936827) (:by |root) (:id |r1u1WKTNTz) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1525106937665) (:by |root) (:id |SkMW-tpE6M) (:text |router) (:type :leaf)
                      |x $ {} (:at 1592495339855) (:by |B1y7Rc-Zz) (:id |JJij_XfQ7a) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592495368513) (:by |B1y7Rc-Zz) (:id |JJij_XfQ7aleaf) (:text |render-body) (:type :leaf)
                          |j $ {} (:at 1592495344592) (:by |B1y7Rc-Zz) (:id |nicL2BgAjk) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592495344782) (:by |B1y7Rc-Zz) (:id |XFv0PdCu8) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1592495345306) (:by |B1y7Rc-Zz) (:id |m1GjOBS3o) (:type :expr)
                                :data $ {}
                              |r $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |emFRp56SbL) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |VGvVkGix5h) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |lBU93lTQwO) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |oYAuF8q9Pj) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |bPpVARsJ-q) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |sNuwz8L98j) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |ICGbew6ORm) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |3h50xrmgRv) (:text |merge) (:type :leaf)
                                              |j $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |bDL0pay8ki) (:text |ui/expand) (:type :leaf)
                                              |r $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |xrObDve2nT) (:text |ui/row) (:type :leaf)
                                  |r $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |tIY74MfHEo) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |d_4XDjw56y) (:text |comp-workspace) (:type :leaf)
                                      |b $ {} (:at 1592498889503) (:by |B1y7Rc-Zz) (:id |BK1Gvh0GP) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592498889886) (:by |B1y7Rc-Zz) (:id |gcprs3uUK) (:text |>>) (:type :leaf)
                                          |j $ {} (:at 1592498890816) (:by |B1y7Rc-Zz) (:id |7R1l-uZAh) (:text |states) (:type :leaf)
                                          |r $ {} (:at 1592498893303) (:by |B1y7Rc-Zz) (:id |Vk97h9jUh) (:text |:workspace) (:type :leaf)
                                      |j $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |frLRYsMaN6) (:text |router) (:type :leaf)
                                      |r $ {} (:at 1592498761345) (:by |B1y7Rc-Zz) (:id |Ek6F5fHGa) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592498762805) (:by |B1y7Rc-Zz) (:id |9IgrpL1Oe) (:text |:templates) (:type :leaf)
                                          |j $ {} (:at 1592498764971) (:by |B1y7Rc-Zz) (:id |D-ZI_5Otm) (:text |store) (:type :leaf)
                                      |v $ {} (:at 1592578600158) (:by |B1y7Rc-Zz) (:id |4-3ujA--b) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592578601910) (:by |B1y7Rc-Zz) (:id |wo6AkE_Q0y) (:text |:game) (:type :leaf)
                                          |j $ {} (:at 1592578603078) (:by |B1y7Rc-Zz) (:id |mEWfqpS7qr) (:text |store) (:type :leaf)
                                      |x $ {} (:at 1592580323514) (:by |B1y7Rc-Zz) (:id |sepheJqaen) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592580324190) (:by |B1y7Rc-Zz) (:id |sepheJqaenleaf) (:text |:user) (:type :leaf)
                                          |j $ {} (:at 1592580325040) (:by |B1y7Rc-Zz) (:id |CCXhVBELHX) (:text |store) (:type :leaf)
                                  |v $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |fVJKM0ZaRYH) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592495347966) (:by |B1y7Rc-Zz) (:id |ST1TtGJOdWD) (:text |comp-chatroom) (:type :leaf)
                                      |b $ {} (:at 1592495629295) (:by |B1y7Rc-Zz) (:id |QrKWl7DRs) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1592495629992) (:by |B1y7Rc-Zz) (:id |PC8NVpe8cJ) (:text |>>) (:type :leaf)
                                          |T $ {} (:at 1592495628917) (:by |B1y7Rc-Zz) (:id |tTZNaw0Tb) (:text |states) (:type :leaf)
                                          |j $ {} (:at 1592495631436) (:by |B1y7Rc-Zz) (:id |NIjTclEuvE) (:text |:chat) (:type :leaf)
                                      |j $ {} (:at 1592496699628) (:by |B1y7Rc-Zz) (:id |jfG8K1xGkE) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592496704493) (:by |B1y7Rc-Zz) (:id |4R6q4QhtmQf) (:text |:messages) (:type :leaf)
                                          |j $ {} (:at 1592496707392) (:by |B1y7Rc-Zz) (:id |_rEG1KOezx) (:text |store) (:type :leaf)
                                      |r $ {} (:at 1592496664874) (:by |B1y7Rc-Zz) (:id |r_UpcuaMrL) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592496665216) (:by |B1y7Rc-Zz) (:id |mfPn0D5hdv) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1592496665432) (:by |B1y7Rc-Zz) (:id |jhCWBHK0jg) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592496667726) (:by |B1y7Rc-Zz) (:id |3Cpkt74OPO) (:text |:border-left) (:type :leaf)
                                              |j $ {} (:at 1592496668720) (:by |B1y7Rc-Zz) (:id |NjCaZ0X-kt) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592496669367) (:by |B1y7Rc-Zz) (:id |d17y8e4bgi) (:text |str) (:type :leaf)
                                                  |j $ {} (:at 1592496672524) (:by |B1y7Rc-Zz) (:id |2DiDfl19TO) (:text "|\"1px solid ") (:type :leaf)
                                                  |r $ {} (:at 1592496673204) (:by |B1y7Rc-Zz) (:id |B6Cbnp63I) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592496673763) (:by |B1y7Rc-Zz) (:id |SmQ5QBCFFh) (:text |hsl) (:type :leaf)
                                                      |j $ {} (:at 1592496674408) (:by |B1y7Rc-Zz) (:id |J5hYYEBcM) (:text |0) (:type :leaf)
                                                      |r $ {} (:at 1592496674642) (:by |B1y7Rc-Zz) (:id |bMfQgGfVai) (:text |0) (:type :leaf)
                                                      |v $ {} (:at 1592583717625) (:by |B1y7Rc-Zz) (:id |CNtsFhCuQd) (:text |90) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |ByaHq8gxCSW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |S10HqUelASb) (:text |if) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |rJJIc8gg0BZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |ryeLc8egCS-) (:text |nil?) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |r1-LcUggCrZ) (:text |store) (:type :leaf)
                      |r $ {} (:at 1521951403873) (:by |root) (:id |rJE2zoVqz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521951417580) (:by |root) (:id |HyYZehIDnvM) (:text |comp-offline) (:type :leaf)
                      |v $ {} (:at 1500541010211) (:by nil) (:id |BJGP9LlxRB-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1mvc8lgRH-) (:text |div) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |r1VPqLxxRrb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HJHD5UxeCHZ) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |B1Uwq8gxArb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HkwD58ggCr-) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |rkdw5Lgg0rW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SktwcIxlCS-) (:text |merge) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |Hk9PqUlg0Bb) (:text |ui/global) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by |root) (:id |HkjD9Lel0B-) (:text |ui/fullscreen) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by |root) (:id |SJ3vcUegASZ) (:text |ui/column) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |r1pw9LelCr-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1523120265747) (:by |root) (:id |SyAvc8lgCB-) (:text |comp-navigation) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |rkyu9UglRHZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkedq8xxAB-) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rJ-_cLge0SW) (:text |store) (:type :leaf)
                              |r $ {} (:at 1523120353961) (:by |root) (:id |BkW5yKdLjM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1523120357277) (:by |root) (:id |SJx9JF_Ljz) (:text |:count) (:type :leaf)
                                  |j $ {} (:at 1523120358953) (:by |root) (:id |rkf6kYOIiM) (:text |store) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by nil) (:id |rkXYc8ll0SW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HJVYcUxlRrZ) (:text |if) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |S1rK5UggABZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkUtqUxg0HZ) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |r1Dtq8lxArb) (:text |store) (:type :leaf)
                              |s $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |Q7NKcMjICY) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |OD1sDjSpC2) (:text |case) (:type :leaf)
                                  |j $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |L5Q3Am1NPC) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |zeMdf916cn) (:text |:name) (:type :leaf)
                                      |j $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |TPg1qAnshA) (:text |router) (:type :leaf)
                                  |r $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |65YYWgyKsy) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |EU1R4jnJAJ) (:text |:home) (:type :leaf)
                                      |j $ {} (:at 1592495350766) (:by |B1y7Rc-Zz) (:id |M21mrlguSB) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592495365025) (:by |B1y7Rc-Zz) (:id |MuDrXgAYnB) (:text |render-body) (:type :leaf)
                                  |t $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |NgV6pwCfX) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592495310796) (:by |B1y7Rc-Zz) (:id |EU1R4jnJAJ) (:text |:templates) (:type :leaf)
                                      |j $ {} (:at 1592495352527) (:by |B1y7Rc-Zz) (:id |0wO6zwoEB6) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592495367138) (:by |B1y7Rc-Zz) (:id |xZ31kUlkrh) (:text |render-body) (:type :leaf)
                                  |v $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |uL2wCqVlIJ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |stpv25uoIK) (:text |:profile) (:type :leaf)
                                      |j $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |MN3fINLMzr) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |BugVfAjzQf) (:text |comp-profile) (:type :leaf)
                                          |j $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |I2AA6uqYxM3) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |28CWFT31dWf) (:text |:user) (:type :leaf)
                                              |j $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |gs-VloDCRcS) (:text |store) (:type :leaf)
                                          |r $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |ntMSJxQ9e55) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |szpzNHKBgRt) (:text |:data) (:type :leaf)
                                              |j $ {} (:at 1592494919540) (:by |B1y7Rc-Zz) (:id |8motCp2VD9c) (:text |router) (:type :leaf)
                                  |x $ {} (:at 1592494928809) (:by |B1y7Rc-Zz) (:id |UciFQj3n1) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592494929947) (:by |B1y7Rc-Zz) (:id |UciFQj3n1leaf) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1592494930726) (:by |B1y7Rc-Zz) (:id |i-xbPhxee) (:text |router) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |BkciqUxgRrZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BysicIxgAHW) (:text |comp-login) (:type :leaf)
                                  |j $ {} (:at 1584877243021) (:by |B1y7Rc-Zz) (:id |0L-Tvuz0-k) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1584877243645) (:by |B1y7Rc-Zz) (:id |-nw8MJTDY) (:text |>>) (:type :leaf)
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rkhocIleRrb) (:text |states) (:type :leaf)
                                      |j $ {} (:at 1584877245341) (:by |B1y7Rc-Zz) (:id |g-pcBbXVob) (:text |:login) (:type :leaf)
                          |w $ {} (:at 1524279203814) (:by |root) (:id |S1hsPmOnM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524279211924) (:by |root) (:id |S1hsPmOnMleaf) (:text |comp-status-color) (:type :leaf)
                              |j $ {} (:at 1524279213788) (:by |root) (:id |Bk83D7Ohf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279214588) (:by |root) (:id |H1BhwXu3M) (:text |:color) (:type :leaf)
                                  |j $ {} (:at 1524279215366) (:by |root) (:id |SyevnPQ_nf) (:text |store) (:type :leaf)
                          |x $ {} (:at 1521911488967) (:by |root) (:id |B1gKaUWV5M) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521911509225) (:by |root) (:id |Sk-tpU-Vcf) (:text |when) (:type :leaf)
                              |L $ {} (:at 1521911495407) (:by |root) (:id |H1xk08W4cG) (:text |dev?) (:type :leaf)
                              |T $ {} (:at 1500541010211) (:by nil) (:id |S16oqUeeASb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkAi58lx0S-) (:text |comp-inspect) (:type :leaf)
                                  |j $ {} (:at 1562176377826) (:by |B1y7Rc-Zz) (:id |HJkhq8gxRrb) (:text "|\"Store") (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:id |Skln58ge0rb) (:text |store) (:type :leaf)
                                  |v $ {} (:at 1500541010211) (:by nil) (:id |r1fqzo4cM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SyeT5UllASZ) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |SJZ6qUleRS-) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |ryfp9IxgABW) (:text |:bottom) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |Skma9UglRr-) (:text |0) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |r1V65Ixl0HW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkBp9LllArb) (:text |:left) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |ryIpcIggCrb) (:text |0) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |SJv6q8xeAH-) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HJ_acUlgCrZ) (:text |:max-width) (:type :leaf)
                                          |j $ {} (:at 1562176491493) (:by |B1y7Rc-Zz) (:id |BkYpc8ee0B-) (:text "|\"100%") (:type :leaf)
                          |y $ {} (:at 1500541010211) (:by nil) (:id |H1G3c8ll0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529230769433) (:by |root) (:id |HkQnqIex0Sb) (:text |comp-messages) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |Bk429LxgCS-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |S1B2cLgxCHZ) (:text |get-in) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryInqUelCHb) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJw25Uge0BW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rJd398el0rZ) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |B1Yn98xlRrZ) (:text |:session) (:type :leaf)
                                      |r $ {} (:at 1529230765972) (:by |root) (:id |SJqh5UlgRB-) (:text |:messages) (:type :leaf)
                              |n $ {} (:at 1529230771518) (:by |root) (:id |H122BnXW7) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529230771976) (:by |root) (:id |H122BnXW7leaf) (:text |{}) (:type :leaf)
                              |p $ {} (:at 1529230772453) (:by |root) (:id |H1m2hB2Q-Q) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529230773090) (:by |root) (:id |H1m2hB2Q-Qleaf) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1529230773925) (:by |root) (:id |H1gA2B3mWQ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1529230775135) (:by |root) (:id |Sk0hr3X-Q) (:text |info) (:type :leaf)
                                      |j $ {} (:at 1529230778336) (:by |root) (:id |Bybgar2m-m) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1529230780551) (:by |root) (:id |HyraS3Q-m) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1529230781631) (:by |root) (:id |HyraS3Q-mleaf) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1529231458145) (:by |root) (:id |SygIaH3Xb7) (:text |:session/remove-message) (:type :leaf)
                                      |r $ {} (:at 1529230813335) (:by |root) (:id |r1eSJU2XZm) (:text |info) (:type :leaf)
                          |yT $ {} (:at 1521911502552) (:by |root) (:id |rkvCI-NcM) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521911507241) (:by |root) (:id |rkgPCLW49z) (:text |when) (:type :leaf)
                              |L $ {} (:at 1521911504664) (:by |root) (:id |S1-_CLWN5M) (:text |dev?) (:type :leaf)
                              |T $ {} (:at 1507828710405) (:by |root) (:id |BJgRkVX62W) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507828712159) (:by |root) (:id |BJgRkVX62Wleaf) (:text |comp-reel) (:type :leaf)
                                  |j $ {} (:at 1507829101137) (:by |root) (:id |HylruBmT3-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507830262253) (:by |root) (:id |HyBgV7T2Z) (:text |:reel-length) (:type :leaf)
                                      |j $ {} (:at 1507829104010) (:by |root) (:id |S1MvOr7a2Z) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1507828721052) (:by |root) (:id |ByteVmTnZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507828722268) (:by |root) (:id |ByxdeN7anb) (:text |{}) (:type :leaf)
          |comp-offline $ {} (:at 1519314599832) (:by |root) (:id |rJlxhID3DM) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521951399872) (:by |root) (:id |HkWenLP2vM) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1519314599832) (:by |root) (:id |BJGx2Iv2Pz) (:text |comp-offline) (:type :leaf)
              |n $ {} (:at 1521951400852) (:by |root) (:id |r1lZnMsV9z) (:type :expr)
                :data $ {}
              |r $ {} (:at 1519314599832) (:by |root) (:id |rkQx2Lv3vz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1519314599832) (:by |root) (:id |S14ghIw3Pf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1519314599832) (:by |root) (:id |H1Sx2Lw3PM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519314599832) (:by |root) (:id |ByIghIvhwG) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1519314599832) (:by |root) (:id |rkDg2ID3DM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:id |HJueh8whDf) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1519314599832) (:by |root) (:id |B1FenUDnPM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:id |SJcxhUvnvG) (:text |merge) (:type :leaf)
                              |j $ {} (:at 1519314599832) (:by |root) (:id |SJogn8whDG) (:text |ui/global) (:type :leaf)
                              |r $ {} (:at 1519314599832) (:by |root) (:id |Syhe3IwnDf) (:text |ui/fullscreen) (:type :leaf)
                              |v $ {} (:at 1535564672966) (:by |B1y7Rc-Zz) (:id |S1penIvhwM) (:text |ui/column-dispersive) (:type :leaf)
                              |x $ {} (:at 1535565529682) (:by |B1y7Rc-Zz) (:id |-AFvTS2Xw) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535565530129) (:by |B1y7Rc-Zz) (:id |nUIE3znKRk) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1535565530397) (:by |B1y7Rc-Zz) (:id |LAxp5ou8Oi) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535565536637) (:by |B1y7Rc-Zz) (:id |ZIQEbqIdeF) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1535565541430) (:by |B1y7Rc-Zz) (:id |D9GGMXGBjd) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1535565542473) (:by |B1y7Rc-Zz) (:id |MkdHaM_v7_) (:text |:theme) (:type :leaf)
                                          |j $ {} (:at 1535565546181) (:by |B1y7Rc-Zz) (:id |r7am1TeON) (:text |config/site) (:type :leaf)
                  |l $ {} (:at 1535564983624) (:by |B1y7Rc-Zz) (:id |z2rRVtYOQ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535565362594) (:by |B1y7Rc-Zz) (:id |z2rRVtYOQleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1535564984947) (:by |B1y7Rc-Zz) (:id |fp9nHzVG-C) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1535564985316) (:by |B1y7Rc-Zz) (:id |-pfcoBbYO) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1535564985627) (:by |B1y7Rc-Zz) (:id |PL7HRl9o2) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535564987644) (:by |B1y7Rc-Zz) (:id |_5OHbZKdQt) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1535565371727) (:by |B1y7Rc-Zz) (:id |qlVM4N8m7_) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1535565373172) (:by |B1y7Rc-Zz) (:id |0cX3axzT-0) (:text |{}) (:type :leaf)
                                  |T $ {} (:at 1535564988232) (:by |B1y7Rc-Zz) (:id |tbKi9HZ-m3) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564988883) (:by |B1y7Rc-Zz) (:id |_jrfZ1j22p) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1535565472380) (:by |B1y7Rc-Zz) (:id |oNrq_1c5jP) (:text |0) (:type :leaf)
                  |n $ {} (:at 1535564675845) (:by |B1y7Rc-Zz) (:id |Fr2RBAP3W) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535564681122) (:by |B1y7Rc-Zz) (:id |Fr2RBAP3Wleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1535564681371) (:by |B1y7Rc-Zz) (:id |QCgP6c48Rw) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1535564681741) (:by |B1y7Rc-Zz) (:id |bxXTMaSmzT) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1535564681981) (:by |B1y7Rc-Zz) (:id |T3goXWla86) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535564682940) (:by |B1y7Rc-Zz) (:id |CXGFQrJdrI) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1535564683257) (:by |B1y7Rc-Zz) (:id |2Evw3L3U1J) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535564683549) (:by |B1y7Rc-Zz) (:id |tzLQL21KFG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1535564683815) (:by |B1y7Rc-Zz) (:id |dVh-zN_TPb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564692026) (:by |B1y7Rc-Zz) (:id |dAStA0OYDH) (:text |:background-image) (:type :leaf)
                                      |j $ {} (:at 1535564692507) (:by |B1y7Rc-Zz) (:id |_Q8bCAx9n7) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1535564693703) (:by |B1y7Rc-Zz) (:id |VzZwtZoO6O) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1535564698133) (:by |B1y7Rc-Zz) (:id |tJv55qj8Zk) (:text "|\"url(") (:type :leaf)
                                          |n $ {} (:at 1535564699933) (:by |B1y7Rc-Zz) (:id |nsZZQVVLv) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1535564708041) (:by |B1y7Rc-Zz) (:id |4lGaBpyWK2) (:text |:icon) (:type :leaf)
                                              |j $ {} (:at 1535564775736) (:by |B1y7Rc-Zz) (:id |sGz47mkdM) (:text |config/site) (:type :leaf)
                                          |r $ {} (:at 1535564696349) (:by |B1y7Rc-Zz) (:id |6N8V6yQKRt) (:text "|\")") (:type :leaf)
                                  |r $ {} (:at 1535564726919) (:by |B1y7Rc-Zz) (:id |5egZ0bR0I) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564728738) (:by |B1y7Rc-Zz) (:id |5egZ0bR0Ileaf) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1535565090611) (:by |B1y7Rc-Zz) (:id |ef8YU_bZh) (:text |128) (:type :leaf)
                                  |v $ {} (:at 1535564733832) (:by |B1y7Rc-Zz) (:id |K_yxszCR3z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564736588) (:by |B1y7Rc-Zz) (:id |K_yxszCR3zleaf) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1535565093711) (:by |B1y7Rc-Zz) (:id |c5KZ_3dEVg) (:text |128) (:type :leaf)
                                  |x $ {} (:at 1535564741439) (:by |B1y7Rc-Zz) (:id |zidWccE-tZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564745512) (:by |B1y7Rc-Zz) (:id |zidWccE-tZleaf) (:text |:background-size) (:type :leaf)
                                      |j $ {} (:at 1535564749164) (:by |B1y7Rc-Zz) (:id |XvrhwspwQ) (:text |:contain) (:type :leaf)
                  |r $ {} (:at 1519314599832) (:by |root) (:id |HyRx3IDnPM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535565436682) (:by |B1y7Rc-Zz) (:id |SJkll2LP2wM) (:text |div) (:type :leaf)
                      |j $ {} (:at 1519314599832) (:by |root) (:id |BJgex3Lw3Pf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:id |HkbeenIw3wf) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1519314599832) (:by |root) (:id |Syfgx28wnPf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:id |Symgxn8v2vG) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1519314599832) (:by |root) (:id |rkVlg3LDnDG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519314599832) (:by |root) (:id |SkHxlhUv2vz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1519314599832) (:by |root) (:id |H1Lgg3UwhPz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314599832) (:by |root) (:id |S1Pee2UD3wz) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1519314599832) (:by |root) (:id |HyOgl2IvnPM) (:text |:pointer) (:type :leaf)
                                  |r $ {} (:at 1535565239666) (:by |B1y7Rc-Zz) (:id |lWtf3D3AoP) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535565243041) (:by |B1y7Rc-Zz) (:id |O56zdbQMDleaf) (:text |:line-height) (:type :leaf)
                                      |j $ {} (:at 1535565498969) (:by |B1y7Rc-Zz) (:id |3uSFrdhbOK) (:text "|\"32px") (:type :leaf)
                          |r $ {} (:at 1519314599832) (:by |root) (:id |SkKle2LPnvf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:id |Hy9xl28D2PG) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1584871334795) (:by |B1y7Rc-Zz) (:id |XUbtqCVDZv) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1584871335398) (:by |B1y7Rc-Zz) (:id |LdFNplXRc) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1584871335614) (:by |B1y7Rc-Zz) (:id |wTeBvUMQM9) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584871336535) (:by |B1y7Rc-Zz) (:id |WhyFNjJB_E) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1584871337567) (:by |B1y7Rc-Zz) (:id |nbkgz6-ZOJ) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1519314599832) (:by |root) (:id |S1mufs49z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584871334285) (:by |B1y7Rc-Zz) (:id |r1GZl2Lw2wG) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1519314599832) (:by |root) (:id |rkmZln8v2wG) (:text |:effect/connect) (:type :leaf)
                                      |r $ {} (:at 1519314599832) (:by |root) (:id |HJNWe28w3wG) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1519314599832) (:by |root) (:id |r1r-lhLPnvf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:id |r1Ube2LP2PM) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1562176386393) (:by |B1y7Rc-Zz) (:id |r1DWxhIP3wG) (:text "|\"No connection...") (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |ryuSziE9f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HkxN5IggCSZ) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |BkZ4qUxgABZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |ByzE9Lxe0BW) (:text |:font-family) (:type :leaf)
                                  |j $ {} (:at 1535565688657) (:by |B1y7Rc-Zz) (:id |Skm4cUlgRrZ) (:text |ui/font-fancy) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |ByvVqIxlCBW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HkuNcLlxRrW) (:text |:font-size) (:type :leaf)
                                  |j $ {} (:at 1535565156897) (:by |B1y7Rc-Zz) (:id |SJYNcUxxASZ) (:text |24) (:type :leaf)
          |comp-status-color $ {} (:at 1524279216692) (:by |root) (:id |Sket2DQd3f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1524279218316) (:by |root) (:id |S1ZK3DXd3G) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1524279216692) (:by |root) (:id |SkzYhwm_3f) (:text |comp-status-color) (:type :leaf)
              |r $ {} (:at 1524279216692) (:by |root) (:id |SkmYnwXdnM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524279220380) (:by |root) (:id |HkWi3Dmd2G) (:text |color) (:type :leaf)
              |v $ {} (:at 1524279221052) (:by |root) (:id |rJgTnPmu2G) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524279221503) (:by |root) (:id |rJgTnPmu2Gleaf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1524279221753) (:by |root) (:id |rJlA3DXOhf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524279222145) (:by |root) (:id |ByA3Dm_2f) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1524279222434) (:by |root) (:id |r1ER2vQ_3G) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524279223333) (:by |root) (:id |BJmAnP7_nz) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1533835122554) (:by |B1y7Rc-Zz) (:id |02sFGkmU4) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1533835132715) (:by |B1y7Rc-Zz) (:id |gdqZhoJ9D) (:text |let) (:type :leaf)
                              |L $ {} (:at 1533835132973) (:by |B1y7Rc-Zz) (:id |UKFzdk9D7f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1533835133406) (:by |B1y7Rc-Zz) (:id |-QOGS9FksS) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533835134066) (:by |B1y7Rc-Zz) (:id |VZJGRva7JQ) (:text |size) (:type :leaf)
                                      |j $ {} (:at 1533835156000) (:by |B1y7Rc-Zz) (:id |dH663gATGE) (:text |24) (:type :leaf)
                              |T $ {} (:at 1524279223555) (:by |root) (:id |SyeTD7dnz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279223903) (:by |root) (:id |H1S1TD7_2z) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1524279224175) (:by |root) (:id |r1XlTDX_nf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279228958) (:by |root) (:id |BJMlTDQu3z) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1533835137743) (:by |B1y7Rc-Zz) (:id |HJIpvXuhG) (:text |size) (:type :leaf)
                                  |r $ {} (:at 1524279231457) (:by |root) (:id |rJfDavmu3G) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279232432) (:by |root) (:id |rJfDavmu3Gleaf) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1533835138984) (:by |B1y7Rc-Zz) (:id |ByLuavmu3M) (:text |size) (:type :leaf)
                                  |v $ {} (:at 1524279233724) (:by |root) (:id |SycaPQO2f) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1524279242067) (:by |root) (:id |rJxCP7d2f) (:text |:position) (:type :leaf)
                                      |T $ {} (:at 1524279236076) (:by |root) (:id |SycaPQO2fleaf) (:text |:absolute) (:type :leaf)
                                  |x $ {} (:at 1524279242693) (:by |root) (:id |B1QAPmuhG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533835259111) (:by |B1y7Rc-Zz) (:id |B1QAPmuhGleaf) (:text |:bottom) (:type :leaf)
                                      |j $ {} (:at 1524279295251) (:by |root) (:id |HyN0DXu3G) (:text |60) (:type :leaf)
                                  |y $ {} (:at 1524279244626) (:by |root) (:id |SyxSAwm_2z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533835114388) (:by |B1y7Rc-Zz) (:id |SyxSAwm_2zleaf) (:text |:left) (:type :leaf)
                                      |j $ {} (:at 1524279252706) (:by |root) (:id |r1aCw7d2f) (:text |8) (:type :leaf)
                                  |yT $ {} (:at 1524279259074) (:by |root) (:id |S1eXJd7_3G) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279265891) (:by |root) (:id |S1eXJd7_3Gleaf) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1524279319762) (:by |root) (:id |S1WkQuQuhz) (:text |color) (:type :leaf)
                                  |yj $ {} (:at 1524279300007) (:by |root) (:id |B1e3Z_Xd2M) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279306393) (:by |root) (:id |B1e3Z_Xd2Mleaf) (:text |:border-radius) (:type :leaf)
                                      |j $ {} (:at 1533835148624) (:by |B1y7Rc-Zz) (:id |Hy7f_md3z) (:text "|\"50%") (:type :leaf)
                                  |yr $ {} (:at 1524279322054) (:by |root) (:id |BkxzQO7_3G) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279323711) (:by |root) (:id |BkxzQO7_3Gleaf) (:text |:opacity) (:type :leaf)
                                      |j $ {} (:at 1533835161153) (:by |B1y7Rc-Zz) (:id |B1-VXdQ_3G) (:text |0.6) (:type :leaf)
                                  |yv $ {} (:at 1533835167955) (:by |B1y7Rc-Zz) (:id |VRmHRcaoLv) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533835177358) (:by |B1y7Rc-Zz) (:id |VRmHRcaoLvleaf) (:text |:pointer-events) (:type :leaf)
                                      |j $ {} (:at 1533835178211) (:by |B1y7Rc-Zz) (:id |9jBAmSdCfv) (:text |:none) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |B15IxeRH-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |SJxc8xl0HZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |SkZcLgxAB-) (:text |app.comp.container) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |SkCq8lx0rb) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HyJlqLelRBW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |SylgqLee0B-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |SkZlcUgg0B-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1637150436500) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SJQlcUlgRr-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |By4lc8gxCB-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rkHx5LxeRS-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |rJIlq8leCBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |ryvl5IllRSb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |B1dg5UeeRSW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547378489) (:by |root) (:id |H1Fgc8egCSW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |Hy9x5IeeASW) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |rkoe5LxlCBW) (:text |ui) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |B1gpZxc3yG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |r1B9Ueg0Sb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540962164790) (:by |root) (:id |H189Igg0S-) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |HJw9LexRS-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1_98eeRSb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkKcLxeRHW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkqqIggASZ) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |SysqUxxRH-) (:text |<>) (:type :leaf)
                        |t $ {} (:at 1584877250857) (:by |B1y7Rc-Zz) (:id |H5Vz1GDH0u) (:text |>>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |Bkh9UglCrZ) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |BkaqLel0H-) (:text |span) (:type :leaf)
                        |y $ {} (:at 1507815955483) (:by |root) (:id |ryjGzeahb) (:text |button) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |rJu-cIxlRSZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1FW9UegCSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |By9-qLxlRHW) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1oZq8gl0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |rk2ZqUlx0SZ) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |S1T-5UggAB-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SJ0bqLggCH-) (:text |comp-inspect) (:type :leaf)
                |yD $ {} (:at 1507816109319) (:by |root) (:id |Sklr2Mg6n-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1507816109737) (:by |root) (:id |Sklr2Mg6n-leaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1507816117447) (:by |root) (:id |SkbLhMlp3b) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1507816112686) (:by |root) (:id |H1GOhGephb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507816113982) (:by |root) (:id |rk-53Mlah-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1507816114106) (:by |root) (:id |rk-Y2zgTnW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1507816114704) (:by |root) (:id |SyN5nGgThZ) (:text |=<) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |H1kGc8glRHW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |SJlM5UxgRBb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120275079) (:by |root) (:id |B1-f5UgeABb) (:text |app.comp.navigation) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkzM98gxRrZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Bymz5LglArW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkEzcLxgAB-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120276563) (:by |root) (:id |rkBfcLggCBb) (:text |comp-navigation) (:type :leaf)
                |yj $ {} (:at 1500541010211) (:by nil) (:id |HJ8M5UeeCS-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |SyvGq8leRHZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |H1_fq8geCHb) (:text |app.comp.profile) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |ryFz9LglCHb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |r1qfqUlxASb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |SysM5LegCBW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H12z9LxxCHW) (:text |comp-profile) (:type :leaf)
                |yr $ {} (:at 1500541010211) (:by nil) (:id |Bypz9LxxRSW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HyAG9Uel0B-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |Hkk7qUgxAr-) (:text |app.comp.login) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SJg798xxAHW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJ-m9Ueg0SW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |r1zm5IxxCrb) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |r1Qmq8gxCrW) (:text |comp-login) (:type :leaf)
                |yv $ {} (:at 1500541010211) (:by nil) (:id |SyE7qLleCHW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HJrm9LelAr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529230826824) (:by |root) (:id |HkIQ9Iel0Hb) (:text |respo-message.comp.messages) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |ryv7cIgeCrZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Hk_7c8eg0rW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rJY7cIlgRrW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1529230829559) (:by |root) (:id |BJcQcUxxASW) (:text |comp-messages) (:type :leaf)
                |yx $ {} (:at 1507828725931) (:by |root) (:id |BklAlV7a2Z) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1507828726338) (:by |root) (:id |BklAlV7a2Zleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1543253312413) (:by |B1y7Rc-Zz) (:id |ry7AeNmT3b) (:text |cumulo-reel.comp.reel) (:type :leaf)
                    |r $ {} (:at 1507828731528) (:by |root) (:id |H1bQW4762Z) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507828731735) (:by |root) (:id |Sk-NbNmT3W) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1507828731987) (:by |root) (:id |r1e4ZN7a3b) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1507828733743) (:by |root) (:id |Bk44ZNXT2Z) (:text |comp-reel) (:type :leaf)
                |yy $ {} (:at 1521911479054) (:by |root) (:id |BygkTL-EqM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1521911480104) (:by |root) (:id |BygkTL-EqMleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1527789167264) (:by |root) (:id |SJMe6IZ45z) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1521911483589) (:by |root) (:id |B1GaI-V5M) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1521911483778) (:by |root) (:id |BJb4T8ZNcM) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1521911483935) (:by |root) (:id |HJeEpLbVqz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1521911485489) (:by |root) (:id |rJ4V6Lb49f) (:text |dev?) (:type :leaf)
                |yyj $ {} (:at 1529230793085) (:by |root) (:id |B1Z0rnQWm) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1529230793389) (:by |root) (:id |B1Z0rnQWmleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529230796079) (:by |root) (:id |rJGbRHh7W7) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1529230796499) (:by |root) (:id |r1ZEAH2m-m) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1529230797248) (:by |root) (:id |ByBAH37Zm) (:text |schema) (:type :leaf)
                |yyr $ {} (:at 1535564714854) (:by |B1y7Rc-Zz) (:id |62fxkh4Uk4) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1535564716963) (:by |B1y7Rc-Zz) (:id |62fxkh4Uk4leaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1535564718729) (:by |B1y7Rc-Zz) (:id |9xYrE_G3ic) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1535564719687) (:by |B1y7Rc-Zz) (:id |ccmXGZ69Z1) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1535564721387) (:by |B1y7Rc-Zz) (:id |agsiaMgXOQ) (:text |config) (:type :leaf)
                |yyv $ {} (:at 1592494838867) (:by |B1y7Rc-Zz) (:id |N1hOWLIBQM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592494838867) (:by |B1y7Rc-Zz) (:id |vynB78Ao9c) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592494838867) (:by |B1y7Rc-Zz) (:id |hJt62MeuvW) (:text |app.comp.workspace) (:type :leaf)
                    |r $ {} (:at 1592494838867) (:by |B1y7Rc-Zz) (:id |Sbrm1c4bva) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1592494838867) (:by |B1y7Rc-Zz) (:id |rD9cdmzxBp) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1592494838867) (:by |B1y7Rc-Zz) (:id |CqKCz6sbLc) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1592494838867) (:by |B1y7Rc-Zz) (:id |-5P5lS-JRt) (:text |comp-workspace) (:type :leaf)
                |yyx $ {} (:at 1592494851341) (:by |B1y7Rc-Zz) (:id |zMLpliOyYl) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592494851341) (:by |B1y7Rc-Zz) (:id |Qhb-J2ysYB) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592494851341) (:by |B1y7Rc-Zz) (:id |WujKtH90Z_) (:text |app.comp.chatroom) (:type :leaf)
                    |r $ {} (:at 1592494856235) (:by |B1y7Rc-Zz) (:id |SJjG7if5aE) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1592494857027) (:by |B1y7Rc-Zz) (:id |7Og_v2NFx8) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1592494857286) (:by |B1y7Rc-Zz) (:id |RjNmGxUoBX) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1592494859590) (:by |B1y7Rc-Zz) (:id |A6xQyFTc12) (:text |comp-chatroom) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |S1om9LgxCBZ) (:type :expr)
          :data $ {}
      |app.comp.login $ {}
        :defs $ {}
          |comp-login $ {} (:at 1500541010211) (:by nil) (:id |HkN1-cUxxRB-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |SJBy-qUle0SW) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |S1LyWcUxe0rZ) (:text |comp-login) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |HkPy-qLxlRHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |Sy_yZ5LxlCBZ) (:text |states) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |ryK1bqLeg0rZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |ry9JbqLlgRHb) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1j1WcUxxRSb) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1584877226983) (:by |B1y7Rc-Zz) (:id |ghMesJLH51) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584877228943) (:by |B1y7Rc-Zz) (:id |ghMesJLH51leaf) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1584877229143) (:by |B1y7Rc-Zz) (:id |dROAkbPV4) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584877231383) (:by |B1y7Rc-Zz) (:id |IsHz9EOQzW) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1584877232198) (:by |B1y7Rc-Zz) (:id |SyMQv3vdDp) (:text |states) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |HynkWcIee0Hb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkT1bqUxlASZ) (:text |state) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |Hy0yb98gxABW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkJxWc8lxCBW) (:text |or) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |BJllZ5Lle0Sb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Hy-eb9Uxx0HZ) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |S1GeZq8glCrW) (:text |states) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |B1Xeb9UleCrW) (:text |initial-state) (:type :leaf)
                  |r $ {} (:at 1519368111046) (:by |root) (:id |HyxD3wVpvM) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1519368111912) (:by |root) (:id |rJZPnw4TvG) (:text |div) (:type :leaf)
                      |L $ {} (:at 1519368112156) (:by |root) (:id |SJXO3vNaDM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519368113787) (:by |root) (:id |S1fd3wN6Dz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1519368114295) (:by |root) (:id |SyGqhw46wG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519368116587) (:by |root) (:id |SJ-9hDETDf) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1519368119982) (:by |root) (:id |Byg6DV6wz) (:type :expr)
                                :data $ {}
                                  |5 $ {} (:at 1519368124581) (:by |root) (:id |H1lV6vNaPf) (:text |merge) (:type :leaf)
                                  |D $ {} (:at 1519368123630) (:by |root) (:id |BJxe6vNavM) (:text |ui/flex) (:type :leaf)
                                  |T $ {} (:at 1519368119197) (:by |root) (:id |rJlpnDVawM) (:text |ui/center) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |ryEx-5IxlRSW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |HJrgZ5Llg0Sb) (:text |div) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BJIg-9Ule0rZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |SJvxZcIxlASZ) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |BJOg-5Igx0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |S1Fx-cUegRrb) (:text |div) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |ry5gWc8exRSZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BkixZ9LxgRBZ) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |SJhlW5Ugl0rb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |r1Te-58xeAHb) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |H1AgbqLleRrW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |Bk1WZq8lgCS-) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |BkxZZ98xeCH-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BJWb-5UlxRrZ) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1M-WcUggRHZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |Hym-ZqLleAS-) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJNWb9UexCSZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |H1H-WqIle0rZ) (:text |input) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |rkU-bcUleASZ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |S1wbZqLeeASW) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |rJObbc8leRS-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |BJYWWcLxx0rW) (:text |:placeholder) (:type :leaf)
                                              |j $ {} (:at 1562176475172) (:by |B1y7Rc-Zz) (:id |H15Wb9Ugg0r-) (:text "|\"Username") (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |SyoWb5UleCSW) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Hy2bWqIlg0rW) (:text |:value) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |HJpWZc8ggRH-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BkRZ-cIle0H-) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |HyyM-9UglArZ) (:text |state) (:type :leaf)
                                          |v $ {} (:at 1500541010211) (:by nil) (:id |rklGb9LxlRSW) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy-fW58glCSZ) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |SJGf-5Llx0SW) (:text |ui/input) (:type :leaf)
                                          |x $ {} (:at 1500541010211) (:by nil) (:id |rJFis1lQM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1514302367311) (:by |root) (:id |H1_f-5UlxAr-) (:text |:on-input) (:type :leaf)
                                              |j $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |yEvhp4TxI8) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |90C3Zd01kB) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |_MLMryBx4t) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |lI4yDn4OsS) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1584877198070) (:by |B1y7Rc-Zz) (:id |zmR6Y2sjVQ) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |nkgStmvKCp) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584877199765) (:by |B1y7Rc-Zz) (:id |oBQ7fy17Fv) (:text |d!) (:type :leaf)
                                                      |b $ {} (:at 1584877203771) (:by |B1y7Rc-Zz) (:id |rW_MaPNyN) (:text |cursor) (:type :leaf)
                                                      |j $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |xAB-bHTuhy) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |XM_DjXkIgs) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |1l4fc9rIMc) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1584877206280) (:by |B1y7Rc-Zz) (:id |Cbypyqxvlf) (:text |:username) (:type :leaf)
                                                          |v $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |Jf3juKbnck) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |iKFK-RoQ_N) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |cYyybTKpglu) (:text |e) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |rJ6MW9IxgAH-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |S1RzbqIxl0Sb) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |Sy17-5Iex0SW) (:text |nil) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:id |B1gQWqUxe0rZ) (:text |8) (:type :leaf)
                              |x $ {} (:at 1500541010211) (:by nil) (:id |rybQZcLeeABW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkfm-5IxgASW) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |SJX7ZqIeeCB-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |Hk4mZ5IxgASW) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |rJHQb58xxRBW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rJU7Zc8xlCSW) (:text |input) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |SyPX-qIxxRBb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |ry_XZ5UglRrZ) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |HyK7bcIexCS-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Bk9XZqLglArZ) (:text |:placeholder) (:type :leaf)
                                              |j $ {} (:at 1562176476967) (:by |B1y7Rc-Zz) (:id |HkomWcUlxCBb) (:text "|\"Password") (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |S1hmb98glRSZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |H16XZc8ee0rb) (:text |:value) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |r1C7bcLel0BZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BykV-cLlgAHW) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rylNWcLelArZ) (:text |state) (:type :leaf)
                                          |v $ {} (:at 1500541010211) (:by nil) (:id |rkb4Zq8le0BW) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |S1zEb9Leg0H-) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |r174W9LllRB-) (:text |ui/input) (:type :leaf)
                                          |x $ {} (:at 1500541010211) (:by nil) (:id |S1Znooygmf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1514302370752) (:by |root) (:id |SkYEbqUleRr-) (:text |:on-input) (:type :leaf)
                                              |j $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |GdTIxfXFjE) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |9LOE50XAuT) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |q3r0H2NjM4) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |KuSkVNnefS) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |NC0Q_vwu1X) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |iXablXrLXZ) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |eIaCFnaFA4) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |SOT1h9thtC) (:text |cursor) (:type :leaf)
                                                      |r $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |_-GEQK_ydE) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |dCnOLnMpU_) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |hKa4xRNATt) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1584877211233) (:by |B1y7Rc-Zz) (:id |1dQhyDb_IC) (:text |:password) (:type :leaf)
                                                          |v $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |iLh5hUVhXb) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |M-2xeMKIts) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |sLJyIcrO1HG) (:text |e) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by nil) (:id |HkCEZcIegCSb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |SJyBZc8xgCSZ) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |BJlHZ98eg0SZ) (:text |nil) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |B1WSZ58lxArb) (:text |8) (:type :leaf)
                          |x $ {} (:at 1500541010211) (:by nil) (:id |rJfHW98egCSb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |ByXH-cLlx0S-) (:text |div) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |r1NBZ5Uxg0BZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HyHSb58leCHb) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |BJLSb9LxeASZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HkDrZqUlxRBb) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1519368067092) (:by |root) (:id |SyGsFwVaDf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1519368067501) (:by |root) (:id |HyWoFDNaDf) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1519368135916) (:by |root) (:id |B1xl0wE6wf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1519368141461) (:by |root) (:id |HyeAv4TPf) (:text |:text-align) (:type :leaf)
                                              |j $ {} (:at 1519368142240) (:by |root) (:id |B1I0wN6DG) (:text |:right) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |BJtHWq8llRSb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519367924372) (:by |root) (:id |HJ9BZcIeeCSb) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1sBZ98geRSW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SkhSb5UleABb) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |rJTH-9UlgCHW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rJ0SZ5Ilx0SW) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1562176479429) (:by |B1y7Rc-Zz) (:id |HJyIZqUleAH-) (:text "|\"Sign up") (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |rJeIW5Ugx0HZ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1bIZ9IxxAHb) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |SkfLZ5UglArZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |H178Wq8exCSb) (:text |merge) (:type :leaf)
                                              |j $ {} (:at 1562176320143) (:by |B1y7Rc-Zz) (:id |rJVIb58xe0B-) (:text |ui/link) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |Syxb3iJg7G) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1514302375364) (:by |root) (:id |SkMP-cIgl0rb) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |rJ7wZ9Lxx0S-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy4PbcUxgRHZ) (:text |on-submit) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |ryBvWcUgeCBb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkLPZ9Lgx0rW) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryPv-5UgxAHZ) (:text |state) (:type :leaf)
                                              |r $ {} (:at 1500541010211) (:by nil) (:id |Byuw-cLxgCBb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HyFvW5LglAH-) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |r1qDZ98geRSW) (:text |state) (:type :leaf)
                                              |v $ {} (:at 1500541010211) (:by |root) (:id |HkjwbqLxlAHb) (:text |true) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |B13wW9IgxCrb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |SJTPZc8xxAHW) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryCvbqIxlCHZ) (:text |8) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:id |HyyO-q8glAS-) (:text |nil) (:type :leaf)
                              |x $ {} (:at 1500541010211) (:by nil) (:id |Skg_WqIxx0S-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519367939048) (:by |root) (:id |HkWu-qIgeRrW) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |HkfdZ9IelABZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |S17d-5UgxCr-) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |Sk4_bq8leCHb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkB_W98xxABZ) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1562176481296) (:by |B1y7Rc-Zz) (:id |Sk8OW5LexRrW) (:text "|\"Log in") (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |HywdZ9LeeRHb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rJ_OZc8lx0Bb) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |r1gEIv46Df) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |H178Wq8exCSb) (:text |merge) (:type :leaf)
                                              |j $ {} (:at 1562176326573) (:by |B1y7Rc-Zz) (:id |rJVIb58xe0B-) (:text |ui/link) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |HJlw3skxQM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1514302381488) (:by |root) (:id |BJYF-5Uxe0S-) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |rk9F-cUex0H-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |HyoKb98elRr-) (:text |on-submit) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |B1hYZcIxxASb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Skptbq8xeCBb) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rJRFWc8eeRr-) (:text |state) (:type :leaf)
                                              |r $ {} (:at 1500541010211) (:by nil) (:id |Sk15Z9LleCS-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Bkl9-5IlxRB-) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |SJWq-58llAHW) (:text |state) (:type :leaf)
                                              |v $ {} (:at 1500541010211) (:by |root) (:id |rJfq-9Lge0B-) (:text |false) (:type :leaf)
          |initial-state $ {} (:at 1500541010211) (:by nil) (:id |BkQcW5IlxCrb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |HJN9bcIlg0rW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |B1B9-9Uel0Hb) (:text |initial-state) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |H1IqZcLgg0BW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |Hyvq-qIllRrZ) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |Hkd9b5UxgCBW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |ryF5b9IgxRB-) (:text |:username) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |SJq5-qUll0rb) (:text "|\"") (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJs5-qLel0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |HyhcbqUggRHb) (:text |:password) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |S16cbc8lx0Bb) (:text "|\"") (:type :leaf)
          |on-submit $ {} (:at 1500541010211) (:by nil) (:id |ryRox98ggCBW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |H1k3e58glCr-) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |SylnxqLgg0H-) (:text |on-submit) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |Hk-2e9IglCrW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |SkG2lqIxe0SW) (:text |username) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |r172xqLexCr-) (:text |password) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by |root) (:id |SkEhlqIegRB-) (:text |signup?) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |SyB2gqIleArb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |BJLhecIxg0rb) (:text |fn) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |HJDne5LgxASZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |SJOnxqUxx0Sb) (:text |e) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |BJK2xcLglCHZ) (:text |dispatch!) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |BJ93x98gg0rW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |rkshx5Lgx0HZ) (:text |dispatch!) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |By22eqIxxRB-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SkT3gqIlgArb) (:text |if) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |SJR3gqLegCr-) (:text |signup?) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by |root) (:id |r11Te5UxgABZ) (:text |:user/sign-up) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by |root) (:id |r1l6e5IgxCBb) (:text |:user/log-in) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |By-Tx58xgRSW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1GTxcIleAHb) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |Hy7ax5LexRHb) (:text |username) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by |root) (:id |S1E6l9Lle0r-) (:text |password) (:type :leaf)
                  |v $ {} (:at 1500541010211) (:by nil) (:id |BySax58xgRBb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637152768930) (:by |B1y7Rc-Zz) (:id |rJ8Te9IgeABZ) (:text |.!setItem) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |rkPpe9IglASZ) (:text |js/localStorage) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |ryO6eq8ex0r-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1Kal58gl0HZ) (:text |:storage-key) (:type :leaf)
                          |j $ {} (:at 1527788909281) (:by |root) (:id |ry5alqLglAr-) (:text |config/site) (:type :leaf)
                      |v $ {} (:at 1637152759319) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1637152762102) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                          |T $ {} (:at 1500541010211) (:by nil) (:id |Hyj6eqIle0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkhaecLxlRBW) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |Hk6al98leAHZ) (:text |username) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |BJ0Te9LexCHZ) (:text |password) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |Hys_eqLgeAH-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |Hk3Ox5LleArW) (:text |ns) (:type :leaf)
            |j $ {} (:at 1510936619134) (:by |root) (:id |ry6_xqLxgCS-) (:text |app.comp.login) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |SJ3YeqUlxABZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |By6Fe5LlgRr-) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |rJxw4e52kz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |r1-Yg5UelCSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540962172090) (:by |root) (:id |HyfFecIgxCSZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkQKx5Lxg0rZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1VFg98ex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |r1HtxqIelASb) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BJLFecUle0S-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |r1Dtg9Igg0rW) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SydYe98xe0BW) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HJttec8elRrW) (:text |input) (:type :leaf)
                        |y $ {} (:at 1500541010211) (:by |root) (:id |HJ9tl98xxAHb) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1500541010211) (:by |root) (:id |SyoYl9LelCBW) (:text |span) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |rkBqe58el0HZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |S189lq8leAHW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |B1DcxqUexABZ) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |r1dcgc8xg0HZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyF5x98llCSW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rJc9g58xg0HZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H1j9g98ggCB-) (:text |=<) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |S129ecIxeAHZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |By6cgq8llCr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |rJ09lqUxeRBb) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkJoxqUeg0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJxigqIex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkWslq8eeCH-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |S1Gsg98geRrb) (:text |comp-inspect) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |rk7ol9IxxABZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |ry4ie5IgeArW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547410331) (:by |root) (:id |B1Bjgc8gxRrW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkIjeq8xxCBZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1vixqLll0SZ) (:text |ui) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |ry_sxqUeeAHZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1Kie58xlAHb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |BJ9sgqLxxABW) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SkjsgcIxeCHZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1niecUxlCrZ) (:text |schema) (:type :leaf)
                |yj $ {} (:at 1527788911549) (:by |root) (:id |H1d_S2a1Q) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1527788911897) (:by |root) (:id |H1d_S2a1Qleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1527788913217) (:by |root) (:id |HJGd_rnakm) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1527788914516) (:by |root) (:id |S1IKdB3aJQ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788915188) (:by |root) (:id |rJouHhpkQ) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |Bkajg9LggCH-) (:type :expr)
          :data $ {}
      |app.comp.navigation $ {}
        :defs $ {}
          |comp-navigation $ {} (:at 1500541010211) (:by nil) (:id |Bk2vfqUxl0BZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy6DG9UglCrb) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |rJRPfqLgxArb) (:text |comp-navigation) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |H11df58le0Bb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |rJxuzcLle0S-) (:text |logged-in?) (:type :leaf)
                  |j $ {} (:at 1523120365880) (:by |root) (:id |r1W-lK_Lsz) (:text |count-members) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |rkW_zqUxlCrZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |HJM_fc8elAHW) (:text |div) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1QdzqLge0SW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |BJNOG5LleABZ) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |SyBufq8elAHZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkUOfqIxxRS-) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |r1vdGcUglRr-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |H1u_z9Ixe0HZ) (:text |merge) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |H1YdfcUxxCB-) (:text |ui/row-center) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |BkAw7iE5z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Byb2zcIlx0SW) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |Byz3z9UxgCBb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJQ2f5LglCSb) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |SyEnGqLggRSZ) (:text |48) (:type :leaf)
                                  |v $ {} (:at 1500541010211) (:by nil) (:id |BJO3GqIex0Bb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJY3GqLxgAHb) (:text |:justify-content) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |H1qhGq8leCSW) (:text |:space-between) (:type :leaf)
                                  |x $ {} (:at 1500541010211) (:by nil) (:id |S1s3M5LglCr-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |Sy3nMqLexRBW) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1562176392599) (:by |B1y7Rc-Zz) (:id |H1a2M5LleAH-) (:text "|\"0 16px") (:type :leaf)
                                  |y $ {} (:at 1500541010211) (:by nil) (:id |SJR2MqIlx0S-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SkkpfcUxeCHb) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |SJeazq8llABZ) (:text |16) (:type :leaf)
                                  |yT $ {} (:at 1519314625999) (:by |root) (:id |Bkl9pLP2Pf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314630138) (:by |root) (:id |Bkl9pLP2Pfleaf) (:text |:border-bottom) (:type :leaf)
                                      |j $ {} (:at 1519314630743) (:by |root) (:id |rkgy08vnwf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1519314632214) (:by |root) (:id |SJk0UDhDG) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1562176394986) (:by |B1y7Rc-Zz) (:id |rJEl08P3wf) (:text "|\"1px solid ") (:type :leaf)
                                          |r $ {} (:at 1519314635976) (:by |root) (:id |SyxNRUw2Pz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1519314636519) (:by |root) (:id |BJVRIPnvM) (:text |hsl) (:type :leaf)
                                              |j $ {} (:at 1519314637558) (:by |root) (:id |SklrAUwhvz) (:text |0) (:type :leaf)
                                              |r $ {} (:at 1519314637788) (:by |root) (:id |HJeIRIwnPG) (:text |0) (:type :leaf)
                                              |v $ {} (:at 1519314638678) (:by |root) (:id |ByMUC8vnPM) (:text |0) (:type :leaf)
                                              |x $ {} (:at 1519314643853) (:by |root) (:id |HkgD0IwhPM) (:text |0.1) (:type :leaf)
                                  |yj $ {} (:at 1519314651278) (:by |root) (:id |B1-mkPw2DG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314653842) (:by |root) (:id |B1-mkPw2DGleaf) (:text |:font-family) (:type :leaf)
                                      |j $ {} (:at 1519314661374) (:by |root) (:id |Bkg81wD2wz) (:text |ui/font-fancy) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |Bkj_M9LlxCHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |Hk3dfcUex0rW) (:text |div) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |BJT_z5UgeRB-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkCufcIex0rb) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BkxztoJgmz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1514302328636) (:by |root) (:id |SJVtzcUllCSW) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1584874408320) (:by |B1y7Rc-Zz) (:id |oZTdE7zVOY) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1584874408856) (:by |B1y7Rc-Zz) (:id |LYV3Zaw3EI) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1584874409139) (:by |B1y7Rc-Zz) (:id |qEgyNH8sU) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584874409848) (:by |B1y7Rc-Zz) (:id |c0mdf8zHpa) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1584874410391) (:by |B1y7Rc-Zz) (:id |xXV5jzhkvf) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1500541010211) (:by nil) (:id |HyloNmsVcf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584874407853) (:by |B1y7Rc-Zz) (:id |B1iaGcIexAHZ) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |H126zqIglRB-) (:text |:router/change) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |Sy6pz58llCrW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |SJRaG9IxlAB-) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |BJk0zq8xxCr-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |BJg0MqUxe0r-) (:text |:name) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |SyWCG5IlgAS-) (:text |:home) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |ByIFGc8leCBW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |BywKzqUegArW) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |B1BEXo45f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HydPGq8xeRBb) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |B1FvfqIxgAS-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rJ9wM98lg0B-) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |rkjwMc8xl0Sb) (:text |:pointer) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |rJYKf5Leg0BW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rycKz9UxxABZ) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1536561771096) (:by |B1y7Rc-Zz) (:id |PJz4UIM8Cy) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536561772481) (:by |B1y7Rc-Zz) (:id |SJsFG98lxASW) (:text |:title) (:type :leaf)
                              |j $ {} (:at 1536561776186) (:by |B1y7Rc-Zz) (:id |IpyFO2t-G) (:text |config/site) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by |root) (:id |SyTtGq8xeASb) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541010211) (:by nil) (:id |H10FM9IeeRBb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |ByyqzcUglRHZ) (:text |div) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |rkl5GcLglABW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |HybqMqUge0SW) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BkfcMq8ge0HZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkX5G5Ueg0rW) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |SybUXoVcf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |SyYjz9UgxCrZ) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |B1ciG9UlxRrW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJjozqIgl0Sb) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1562176402113) (:by |B1y7Rc-Zz) (:id |BknsM58xxRrW) (:text "|\"pointer") (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |SJeLFokgXG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1514302332444) (:by |root) (:id |Hkc5MqUgeCBb) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1584874413029) (:by |B1y7Rc-Zz) (:id |R4jMOUYLbQ) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1584874414283) (:by |B1y7Rc-Zz) (:id |OyIJ9gv-L) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1584874414551) (:by |B1y7Rc-Zz) (:id |-pXUlxJAXK) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584874414785) (:by |B1y7Rc-Zz) (:id |jGyJa2DhXe) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1584874415332) (:by |B1y7Rc-Zz) (:id |APfcqGkz-j) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1500541010211) (:by nil) (:id |SkwUXjN5z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584874412408) (:by |B1y7Rc-Zz) (:id |HyvLfcIelAHb) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |r1_8fqLxgRHZ) (:text |:router/change) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |S1KIfc8xx0Sb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |BJqIM5LexCH-) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |SyjIfc8ggAHZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |HJ3LM5LgxABb) (:text |:name) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |rJT8GqIgxRr-) (:text |:profile) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |Hkhcfq8gx0Sb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SJ69McLelASZ) (:text |<>) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |ByysG5UgxABb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |SkesM9IllRBZ) (:text |if) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |H1bjz98xxRSb) (:text |logged-in?) (:type :leaf)
                              |r $ {} (:at 1562176400207) (:by |B1y7Rc-Zz) (:id |Syziz98ggAS-) (:text "|\"Me") (:type :leaf)
                              |v $ {} (:at 1562176397757) (:by |B1y7Rc-Zz) (:id |Hk7izqLel0rb) (:text "|\"Guest") (:type :leaf)
                      |v $ {} (:at 1523120369216) (:by |root) (:id |BkeFgYdUif) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1523120369974) (:by |root) (:id |BkeFgYdUifleaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1523120371053) (:by |root) (:id |S1lcgFd8if) (:text |8) (:type :leaf)
                          |r $ {} (:at 1523120371555) (:by |root) (:id |HyeogYO8jM) (:text |nil) (:type :leaf)
                      |x $ {} (:at 1523120371997) (:by |root) (:id |Hk-2xtuUjf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1523120372630) (:by |root) (:id |Hk-2xtuUjfleaf) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1523120373023) (:by |root) (:id |HkZpxFdIiM) (:text |count-members) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |BkUXGcUegABW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |S1DXG98elCSb) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |HkO7fcLel0SZ) (:text |app.comp.navigation) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |S1HVf5UxlRHZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HJLNzq8glABb) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |BywNMcUleAHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk_4zqLggASb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1637150444924) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkcEM9IgxCSZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJsNzqLleASW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |ry3NM5IegRSW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkTNfcLeeRBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |HkCNz98el0Bb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HJySMq8xgRSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547394445) (:by |root) (:id |HkeBG5Lgl0SW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkWrzqIxx0B-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |S1GrG5LegAHZ) (:text |ui) (:type :leaf)
                |w $ {} (:at 1523120376505) (:by |root) (:id |BkxlWtdUjM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1523120376949) (:by |root) (:id |BkxlWtdUjMleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120379036) (:by |root) (:id |Sk--WFuIoG) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1523120382218) (:by |root) (:id |By4XbFu8oG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1523120382545) (:by |root) (:id |r1DWtdUjM) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1523120382719) (:by |root) (:id |SJEUbFOLjG) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120383255) (:by |root) (:id |BkGPZKu8oM) (:text |=<) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |SkVQg5h1z) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk2XMq8lgCHZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540962179719) (:by |root) (:id |HJp7zc8xxArZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1AmGcLexRH-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyJNG5IexArb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rkxNGqLxg0rZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BkbEz9LegRr-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |BJM4fcLlxCrb) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SyQ4McIex0HZ) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HkNEM9Lee0HZ) (:text |div) (:type :leaf)
                |y $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |3JW2PGwjK4) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |3Q4lXqy0N7) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |Y_HhVDj3zn) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1536561758845) (:by |B1y7Rc-Zz) (:id |D0d_mzNKRn) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1536561761903) (:by |B1y7Rc-Zz) (:id |sJXt922sWs) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |SJ1Uz9LeeAB-) (:type :expr)
          :data $ {}
      |app.comp.profile $ {}
        :defs $ {}
          |comp-profile $ {} (:at 1500541010211) (:by nil) (:id |HJHJG58xgASW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |SyIkf9Uxx0Bb) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |B1vkzqLgl0H-) (:text |comp-profile) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |rkOyMqUexRSW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1KyfcUggCrb) (:text |user) (:type :leaf)
                  |j $ {} (:at 1524070827396) (:by |root) (:id |SJ-ntlBnM) (:text |members) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |r19kz5Uxx0B-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |HyskGcUlxRSb) (:text |div) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |HJn1fqUgxABb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |Skpkzc8xgAH-) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |Bk0yG5IleRHb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SkJeG5UxlASW) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1519314673230) (:by |root) (:id |rketgDP2wz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1519314674218) (:by |root) (:id |rk5evv3Dz) (:text |merge) (:type :leaf)
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HyleG58xgCBb) (:text |ui/flex) (:type :leaf)
                              |j $ {} (:at 1519314674864) (:by |root) (:id |BklixPv3Pz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519314675207) (:by |root) (:id |S1jxDD2vf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1519314675496) (:by |root) (:id |HyVigvwnPG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314677667) (:by |root) (:id |SymslwPhwG) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1519314678341) (:by |root) (:id |HybAgPP2Pf) (:text |16) (:type :leaf)
                  |r $ {} (:at 1524070753023) (:by |root) (:id |HJbFwYlS2f) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1524070753742) (:by |root) (:id |SyfKPFxrhM) (:text |div) (:type :leaf)
                      |L $ {} (:at 1524070753977) (:by |root) (:id |BJG9DFxBnz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070754337) (:by |root) (:id |SkW9vFgS3f) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1524070764197) (:by |root) (:id |HJ-VuKgBnM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070764960) (:by |root) (:id |SkeV_KlBhM) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1524070765167) (:by |root) (:id |BkNrOYlHnf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524070765499) (:by |root) (:id |H17BOYeShG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1524070765707) (:by |root) (:id |rylIuYgrhf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070768913) (:by |root) (:id |HJ8_txr3G) (:text |:font-family) (:type :leaf)
                                      |j $ {} (:at 1524070771373) (:by |root) (:id |HyzKOtlB3f) (:text |ui/font-fancy) (:type :leaf)
                                  |r $ {} (:at 1524070772863) (:by |root) (:id |By6_YeS3M) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070774437) (:by |root) (:id |By6_YeS3Mleaf) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1524070786249) (:by |root) (:id |B1EROKlShG) (:text |32) (:type :leaf)
                                  |v $ {} (:at 1524070778614) (:by |root) (:id |SJXKFeHnM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070781489) (:by |root) (:id |SJXKFeHnMleaf) (:text |:font-weight) (:type :leaf)
                                      |j $ {} (:at 1524070782585) (:by |root) (:id |Bk8KtgS2M) (:text |100) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |r1bxMcIleASW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SkflGc8leCHW) (:text |<>) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |Hk4xfc8ex0BZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |Syrxf9Uex0S-) (:text |str) (:type :leaf)
                              |j $ {} (:at 1562176409054) (:by |B1y7Rc-Zz) (:id |Bk8ef9UggCH-) (:text "|\"Hello! ") (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |SyvgGc8ge0Hb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HkdlMqIleCBZ) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryteG9Lgg0Bb) (:text |user) (:type :leaf)
                  |t $ {} (:at 1524070801446) (:by |root) (:id |rygF9Yer2G) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524070803450) (:by |root) (:id |rygF9Yer2Gleaf) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1524070804372) (:by |root) (:id |BJh5txHhz) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1524070805591) (:by |root) (:id |r1p5KgH2z) (:text |16) (:type :leaf)
                  |u $ {} (:at 1524070806586) (:by |root) (:id |H1kotlHnM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524070807601) (:by |root) (:id |H1kotlHnMleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1524070807801) (:by |root) (:id |rJZeiKlS2M) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070808172) (:by |root) (:id |BkeesteS2G) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1524070882494) (:by |root) (:id |B1Zrlcer3z) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070886268) (:by |root) (:id |Sye519lHhM) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1524070890021) (:by |root) (:id |rym0kqeB2z) (:text |ui/row) (:type :leaf)
                      |r $ {} (:at 1524070808914) (:by |root) (:id |HkgZjKlHhz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070810352) (:by |root) (:id |HkgZjKlHhzleaf) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1524070906296) (:by |root) (:id |r1bfoFgr3z) (:text "|\"Members:") (:type :leaf)
                      |t $ {} (:at 1524070907095) (:by |root) (:id |B1e7-cgShM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070907693) (:by |root) (:id |B1e7-cgShMleaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1524071002316) (:by |root) (:id |BJeVbqlS2G) (:text |8) (:type :leaf)
                          |r $ {} (:at 1524070908955) (:by |root) (:id |HkSWqxB3f) (:text |nil) (:type :leaf)
                      |v $ {} (:at 1524070813822) (:by |root) (:id |Syl8oKlB3M) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070815507) (:by |root) (:id |Syl8oKlB3Mleaf) (:text |list->) (:type :leaf)
                          |j $ {} (:at 1524070815884) (:by |root) (:id |ByeuiFeH2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070816388) (:by |root) (:id |SkujYgS3f) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1524070882494) (:by |root) (:id |BkW5yqxShM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524070886268) (:by |root) (:id |Sye519lHhM) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1524070890021) (:by |root) (:id |rym0kqeB2z) (:text |ui/row) (:type :leaf)
                          |r $ {} (:at 1524070817648) (:by |root) (:id |HkcsKlHhG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637149657019) (:by |B1y7Rc-Zz) (:id |BJltsYgrhz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1524070823331) (:by |root) (:id |BJe2jFlShG) (:text |members) (:type :leaf)
                              |r $ {} (:at 1524070849620) (:by |root) (:id |BJ96txShz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637149659362) (:by |B1y7Rc-Zz) (:id |HkhaKeSnz) (:text |map-kv) (:type :leaf)
                                  |j $ {} (:at 1524070854323) (:by |root) (:id |Bk-0aYxSnM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070854836) (:by |root) (:id |ByRaYxH3M) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1524070855268) (:by |root) (:id |By-JCtgrnM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1524070857242) (:by |root) (:id |S1fgRKeHhz) (:text |k) (:type :leaf)
                                          |j $ {} (:at 1524070860935) (:by |root) (:id |ByfbCYerhG) (:text |username) (:type :leaf)
                                      |r $ {} (:at 1524070862172) (:by |root) (:id |SyW8CFeS3z) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1524070862624) (:by |root) (:id |SyW8CFeS3zleaf) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1524070863576) (:by |root) (:id |SyWPAFgBhM) (:text |k) (:type :leaf)
                                          |r $ {} (:at 1524070863870) (:by |root) (:id |SyZuAKeB2z) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524070935603) (:by |root) (:id |SJedAtxShG) (:text |div) (:type :leaf)
                                              |b $ {} (:at 1524070935915) (:by |root) (:id |H1-eQ9eB3M) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524070936321) (:by |root) (:id |ByegX5er2z) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1524070941378) (:by |root) (:id |r1MSX5xrhG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524070945311) (:by |root) (:id |rJ-HX9eB3z) (:text |:style) (:type :leaf)
                                                      |j $ {} (:at 1524070945552) (:by |root) (:id |S15m5eHnM) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1524070951279) (:by |root) (:id |BkmFQ5eB2G) (:text |{}) (:type :leaf)
                                                          |j $ {} (:at 1524070952343) (:by |root) (:id |By-xE9xShf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524070953379) (:by |root) (:id |BybJE5xB2f) (:text |:padding) (:type :leaf)
                                                              |j $ {} (:at 1524070959440) (:by |root) (:id |BJUbV9xShG) (:text "|\"0 8px") (:type :leaf)
                                                          |r $ {} (:at 1524070965836) (:by |root) (:id |SyA4qlSnM) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524070967712) (:by |root) (:id |SyA4qlSnMleaf) (:text |:border) (:type :leaf)
                                                              |j $ {} (:at 1524070968157) (:by |root) (:id |rkbxS9lr2f) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1524070968711) (:by |root) (:id |ByllrcxH3M) (:text |str) (:type :leaf)
                                                                  |j $ {} (:at 1524070971580) (:by |root) (:id |SJ-bSclH2G) (:text "|\"1px solid ") (:type :leaf)
                                                                  |r $ {} (:at 1524070972774) (:by |root) (:id |BJlSr5gB3M) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1524070973331) (:by |root) (:id |HJHrcxBnz) (:text |hsl) (:type :leaf)
                                                                      |j $ {} (:at 1524070973606) (:by |root) (:id |S14rr9gH3z) (:text |0) (:type :leaf)
                                                                      |r $ {} (:at 1524070973793) (:by |root) (:id |BkxUr5gB3f) (:text |0) (:type :leaf)
                                                                      |v $ {} (:at 1524071006553) (:by |root) (:id |r1MLr5eBhM) (:text |80) (:type :leaf)
                                                          |v $ {} (:at 1524070980253) (:by |root) (:id |ryz3rcxBhG) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524070984655) (:by |root) (:id |ryz3rcxBhGleaf) (:text |:border-radius) (:type :leaf)
                                                              |j $ {} (:at 1524070992141) (:by |root) (:id |SkWZI5lrhz) (:text "|\"16px") (:type :leaf)
                                                          |x $ {} (:at 1524070994599) (:by |root) (:id |HysU5lHnf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524070996433) (:by |root) (:id |HysU5lHnfleaf) (:text |:margin) (:type :leaf)
                                                              |j $ {} (:at 1524071016063) (:by |root) (:id |BkaI5gS3f) (:text "|\"0 4px") (:type :leaf)
                                              |j $ {} (:at 1524070937486) (:by |root) (:id |ryM-XqxHnz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1524070939626) (:by |root) (:id |BJGm9xB3M) (:text |<>) (:type :leaf)
                                                  |T $ {} (:at 1524070866665) (:by |root) (:id |HyzFRtlBnz) (:text |username) (:type :leaf)
                              |v $ {} (:at 1637149661315) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637149664668) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                  |v $ {} (:at 1500541010211) (:by nil) (:id |BkseG9Lxx0SW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |rkhlz5IglRr-) (:text |=<) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by |root) (:id |rkAefcIlgRrZ) (:text |nil) (:type :leaf)
                      |v $ {} (:at 1524070799028) (:by |root) (:id |S1JuFlHhM) (:text |48) (:type :leaf)
                  |x $ {} (:at 1524070749088) (:by |root) (:id |S1rwteS2z) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1524070749878) (:by |root) (:id |BJlrDYxBhz) (:text |div) (:type :leaf)
                      |L $ {} (:at 1524070750119) (:by |root) (:id |H17IvYlrnf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070750478) (:by |root) (:id |HkMUvFeS2f) (:text |{}) (:type :leaf)
                      |P $ {} (:at 1536750075330) (:by |B1y7Rc-Zz) (:id |uOPXafTZdi) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1536750077847) (:by |B1y7Rc-Zz) (:id |uOPXafTZdileaf) (:text |button) (:type :leaf)
                          |j $ {} (:at 1536750078116) (:by |B1y7Rc-Zz) (:id |54E1NydiPF) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536750084550) (:by |B1y7Rc-Zz) (:id |8ZynejYcOp) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1536750084800) (:by |B1y7Rc-Zz) (:id |WE9kL26nME) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536750086408) (:by |B1y7Rc-Zz) (:id |FinL-2NIc_) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1536750086649) (:by |B1y7Rc-Zz) (:id |KHJ6pZvdN) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536750087218) (:by |B1y7Rc-Zz) (:id |Dzcqtrid-4) (:text |merge) (:type :leaf)
                                      |j $ {} (:at 1536750089353) (:by |B1y7Rc-Zz) (:id |HDKedQiLPL) (:text |ui/button) (:type :leaf)
                              |r $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |9KqNbw7POH) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |Qzbn-LQgag) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |Ap2ncP6Z17) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |yJAC369k1J) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |-EI5sPgdhJ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |0KsZOYBtdZ) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1536750196752) (:by |B1y7Rc-Zz) (:id |IjGXOjvOaT) (:text |d!) (:type :leaf)
                                      |r $ {} (:at 1536750149343) (:by |B1y7Rc-Zz) (:id |c1hzphaVoc) (:type :expr)
                                        :data $ {}
                                          |j $ {} (:at 1562176422166) (:by |B1y7Rc-Zz) (:id |Ns2_BydKNA) (:text |js/location.replace) (:type :leaf)
                                          |r $ {} (:at 1536750157447) (:by |B1y7Rc-Zz) (:id |YmX5Wzb78T) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1536750157996) (:by |B1y7Rc-Zz) (:id |mbcbMGu8wf) (:text |str) (:type :leaf)
                                              |j $ {} (:at 1536947568308) (:by |root) (:id |DbCo3fk6H) (:text |js/location.origin) (:type :leaf)
                                              |r $ {} (:at 1536947560142) (:by |root) (:id |JRYzWyR7y2) (:text "|\"?time=") (:type :leaf)
                                              |v $ {} (:at 1536750183293) (:by |B1y7Rc-Zz) (:id |oPd5dUr6pZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1536750183917) (:by |B1y7Rc-Zz) (:id |XjR6j7fCrg) (:text |.now) (:type :leaf)
                                                  |j $ {} (:at 1536750185350) (:by |B1y7Rc-Zz) (:id |lpXN4rI60T) (:text |js/Date) (:type :leaf)
                          |r $ {} (:at 1536750090761) (:by |B1y7Rc-Zz) (:id |wKN1OxLol) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536750091205) (:by |B1y7Rc-Zz) (:id |wKN1OxLolleaf) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1536750096637) (:by |B1y7Rc-Zz) (:id |El2yUaE7P) (:text "|\"Refresh") (:type :leaf)
                      |R $ {} (:at 1536750643074) (:by |B1y7Rc-Zz) (:id |f9W9pIt6P) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1536750643562) (:by |B1y7Rc-Zz) (:id |f9W9pIt6Pleaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1536750644286) (:by |B1y7Rc-Zz) (:id |yAaDQ5KQcm) (:text |8) (:type :leaf)
                          |r $ {} (:at 1536750644793) (:by |B1y7Rc-Zz) (:id |RMJuWthIzE) (:text |nil) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |SyJ-M5IggAHb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529343433304) (:by |root) (:id |S1gbfqIgl0Sb) (:text |button) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |HyWWz9UeeArW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkMWGqUxlRHb) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |SkmbM98xl0SZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1NbM9UllABW) (:text |:style) (:type :leaf)
                                  |b $ {} (:at 1529343525553) (:by |root) (:id |rkCm0Dr-Q) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1529343526544) (:by |root) (:id |rkxAm0PBbm) (:text |merge) (:type :leaf)
                                      |T $ {} (:at 1529343448522) (:by |root) (:id |B1x0CTPS-m) (:text |ui/button) (:type :leaf)
                                      |j $ {} (:at 1529343455186) (:by |root) (:id |B1lNRPS-m) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1529343455629) (:by |root) (:id |SkxvJAvS-m) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1529343457115) (:by |root) (:id |SkWFyCDHZ7) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1529343457898) (:by |root) (:id |SkeYyCDBWX) (:text |:color) (:type :leaf)
                                              |j $ {} (:at 1529343458855) (:by |root) (:id |S1mckRvHWX) (:text |:red) (:type :leaf)
                                          |r $ {} (:at 1529343459158) (:by |root) (:id |rkXiyCPHbX) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1529343463728) (:by |root) (:id |rkXiyCPHbXleaf) (:text |:border-color) (:type :leaf)
                                              |j $ {} (:at 1529343464475) (:by |root) (:id |rkZeeAwSbX) (:text |:red) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |B1edqskgQf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1514302350497) (:by |root) (:id |r1i-McLxeArW) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |HJxrymsN5z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521951456454) (:by |root) (:id |SkICb9UgeRSb) (:text |fn) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |HJ_C-q8llCSW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkK0W98geAHb) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |By5CZ5Uxx0BZ) (:text |dispatch!) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |Sks0Z9Ulg0rW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkhRb5LllArW) (:text |dispatch!) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |BJaAW9UelCHb) (:text |:user/log-out) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by |root) (:id |SyARWqLegRrW) (:text |nil) (:type :leaf)
                                      |x $ {} (:at 1500541010211) (:by nil) (:id |HkJJfc8glCHb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rJlJGqIggAHb) (:text |.removeItem) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |HkWyM9Uxx0BZ) (:text |js/localStorage) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |BJGJG5UxgCBb) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |SymJG5IelASb) (:text |:storage-key) (:type :leaf)
                                              |j $ {} (:at 1527788933957) (:by |root) (:id |HyNJG5LegRrb) (:text |config/site) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |Hy6bM58lg0r-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HyC-MqUgeRHW) (:text |<>) (:type :leaf)
                              |r $ {} (:at 1536750140051) (:by |B1y7Rc-Zz) (:id |BylzzcUllAHZ) (:text "|\"Log out") (:type :leaf)
                  |y $ {} (:at 1592632851590) (:by |B1y7Rc-Zz) (:id |db-DrbSV-L) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592632853693) (:by |B1y7Rc-Zz) (:id |yG_coB3PX) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1592632854320) (:by |B1y7Rc-Zz) (:id |eZTra9wn-x) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1592632897945) (:by |B1y7Rc-Zz) (:id |L5VMENbnBc) (:text |48) (:type :leaf)
                  |yT $ {} (:at 1592632854890) (:by |B1y7Rc-Zz) (:id |ZbeZDzhOGH) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592632865375) (:by |B1y7Rc-Zz) (:id |FcZJSitFdF) (:text |a) (:type :leaf)
                      |j $ {} (:at 1592632865762) (:by |B1y7Rc-Zz) (:id |2arUQf6-3T) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592632866058) (:by |B1y7Rc-Zz) (:id |Xij4Lw3rL5) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1592632866315) (:by |B1y7Rc-Zz) (:id |PuqV8ssuet) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592632867813) (:by |B1y7Rc-Zz) (:id |mlzMmT3ZP) (:text |:href) (:type :leaf)
                              |j $ {} (:at 1592632869032) (:by |B1y7Rc-Zz) (:id |ljGZqLxrnT) (:text "|\"https://github.com/TopixIM/patlepat") (:type :leaf)
                          |r $ {} (:at 1592632870581) (:by |B1y7Rc-Zz) (:id |oWsdZLM0RD) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592632872782) (:by |B1y7Rc-Zz) (:id |oWsdZLM0RDleaf) (:text |:inner-text) (:type :leaf)
                              |j $ {} (:at 1592632906692) (:by |B1y7Rc-Zz) (:id |sDObxDV47b) (:text "|\"GitHub Address") (:type :leaf)
                          |v $ {} (:at 1592632878005) (:by |B1y7Rc-Zz) (:id |Miao5IvK2) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592632881072) (:by |B1y7Rc-Zz) (:id |Miao5IvK2leaf) (:text |:target) (:type :leaf)
                              |j $ {} (:at 1592632884909) (:by |B1y7Rc-Zz) (:id |O0WKCk27EL) (:text "|\"_blank") (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |ByC9-5Lee0rW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |Bk1s-qLxlAH-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |ryljZqUglCrZ) (:text |app.comp.profile) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |HkCj-9IxgABb) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |SyknZqIgxCBW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |Bkx3W5LxeRHW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |rkWhZ9Lgg0HZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1637150457356) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |H1X3W58egRrZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |BJVhZcUelRrZ) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HJHhWqLleAS-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |Sk8h-5LgxRBW) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |Byw3Z9IexAB-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |S1OhbcUeg0SW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |B1F2b98glCBb) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rJq3Zc8xxCBb) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |HyjhZ9UeeRrb) (:text |schema) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |HJ33Z9Ill0rW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bkp3ZcLxeABW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547419785) (:by |root) (:id |H1R2Z58eeCBZ) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |HyyaWqUee0rZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |SklpZqLgg0HZ) (:text |ui) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |HyxIgc3JG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |SkNib9LxeAH-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540962184094) (:by |root) (:id |BJHi-5UxxCSZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |B1LsWcIeeArW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HkvjWqUlgRS-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |SkuiZ5Lgl0BZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |B1FjW9UegCSW) (:text |defcomp) (:type :leaf)
                        |n $ {} (:at 1524070875244) (:by |root) (:id |BkllkcgSnz) (:text |list->) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |ryqiZqUel0B-) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SkooW9UgxRrb) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HJ2obqIlgCB-) (:text |div) (:type :leaf)
                        |y $ {} (:at 1529343437918) (:by |root) (:id |HyaiWqIgxCrZ) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1592632891824) (:by |B1y7Rc-Zz) (:id |c-lVV_UER1) (:text |a) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |ryTT-cLgxABZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |S1RTZ9Uxl0Sb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |rJJRW5UegRrW) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |H1gAZc8llRrW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Hy-0b58xxCrW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |ryMAZ58eeCH-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H1XCWcIxlRS-) (:text |=<) (:type :leaf)
                |yj $ {} (:at 1527788936196) (:by |root) (:id |Skll5r3p1m) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1527788936499) (:by |root) (:id |Skll5r3p1mleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1527788937835) (:by |root) (:id |rk-cB3pyQ) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1527788938747) (:by |root) (:id |H14fqShakX) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788939786) (:by |root) (:id |B1zm9B3T1Q) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |rJ4RbcUxeCBZ) (:type :expr)
          :data $ {}
      |app.comp.templates $ {}
        :defs $ {}
          |comp-template-preview $ {} (:at 1592577783286) (:by |B1y7Rc-Zz) (:id |2O2xNbnNtu) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592577790333) (:by |B1y7Rc-Zz) (:id |UCfxSu-2c0) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1592577783286) (:by |B1y7Rc-Zz) (:id |2NIaFV0_tO) (:text |comp-template-preview) (:type :leaf)
              |r $ {} (:at 1592577783286) (:by |B1y7Rc-Zz) (:id |aCaSW2bYMP) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592577787557) (:by |B1y7Rc-Zz) (:id |nRdEhGiRv) (:text |template) (:type :leaf)
              |v $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |0nB2qJoDs6) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |kdgiNDlD4Z) (:text |list->) (:type :leaf)
                  |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |vGGryKEwtK) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |KwyG8k6BRC) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |1ABrzQV6Bo) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637149685362) (:by |B1y7Rc-Zz) (:id |-UyFfNhO46) (:text |->) (:type :leaf)
                      |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |oRymgqljAn) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |ZFJo9MU67H) (:text |interleave) (:type :leaf)
                          |j $ {} (:at 1592578215968) (:by |B1y7Rc-Zz) (:id |P2899lHaeT) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1592578217337) (:by |B1y7Rc-Zz) (:id |h_eefvtfi) (:text |concat) (:type :leaf)
                              |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |MfRv85zLF4) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |yUqU5gsZFi) (:text |:pieces) (:type :leaf)
                                  |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |KS_jc3ymyu) (:text |template) (:type :leaf)
                              |j $ {} (:at 1592578218159) (:by |B1y7Rc-Zz) (:id |rhtQfS_vG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592578219939) (:by |B1y7Rc-Zz) (:id |qGxcGP3CFd) (:text |repeat) (:type :leaf)
                                  |j $ {} (:at 1592578222281) (:by |B1y7Rc-Zz) (:id |6vXe6WOgC) (:text "|\"") (:type :leaf)
                                  |r $ {} (:at 1637149716965) (:by |B1y7Rc-Zz) (:text |10) (:type :leaf)
                          |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |-CcyWRTj9Y) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637149677409) (:by |B1y7Rc-Zz) (:id |vBzEKsSZ46) (:text |->) (:type :leaf)
                              |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |Du93WftSkS) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |a0IjDsMznY) (:text |:slots) (:type :leaf)
                                  |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |grxpV_RZxrv) (:text |template) (:type :leaf)
                              |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |xCgL3fVYOuh) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637153640633) (:by |B1y7Rc-Zz) (:id |mfUWcRQkxpT) (:text |.map-list) (:type :leaf)
                                  |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |0Ll2agDn7PR) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |Sr7osm1YE_u) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |BKgDeIuXBvq) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637153665953) (:by |B1y7Rc-Zz) (:id |527--EkMS2x) (:text |pair) (:type :leaf)
                                      |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |-xq1CemOq9U) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |bjzQhF8ZWI0) (:text |:text) (:type :leaf)
                                          |j $ {} (:at 1637153668424) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637153669066) (:by |B1y7Rc-Zz) (:text |last) (:type :leaf)
                                              |j $ {} (:at 1637153669658) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                      |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |CMrRd2alOWq) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |5t9kls3Swft) (:text |map-indexed) (:type :leaf)
                          |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |t-MWftKbILt) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |eI6vhsnmlMn) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |E6C_Gv0o9gS) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |H-KswMBOrYl) (:text |idx) (:type :leaf)
                                  |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |ZTLO43B4upq) (:text |item) (:type :leaf)
                              |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |SZY_3kY8X70) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |iUlVYrgcW5x) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |Bzjk-AMqZzI) (:text |idx) (:type :leaf)
                                  |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |1vIXTwbC9A4) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |q2ewPU9uRz-) (:text |if) (:type :leaf)
                                      |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |TNfCOCj155i) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637150854073) (:by |B1y7Rc-Zz) (:id |izKoiXyQYsz) (:text |.!test) (:type :leaf)
                                          |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |Ue89HJMXD4K) (:text |config/slot-matcher) (:type :leaf)
                                          |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |bw7jXoamDod) (:text |item) (:type :leaf)
                                      |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |QIHdKU0W5-S) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |8_HQ1dICj8o) (:text |<>) (:type :leaf)
                                          |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |p_-zsfj-O1S) (:text |item) (:type :leaf)
                                          |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |9tARKYLlKu5) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |Ol_h1yssXaH) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |cuNbO2xuFen) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |KGxoJMysKh_) (:text |:color) (:type :leaf)
                                                  |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |6ReuH-p-d0M) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |RyF14JvIw2_) (:text |hsl) (:type :leaf)
                                                      |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |8DYpQkSyoji) (:text |200) (:type :leaf)
                                                      |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |IdAHx5egNYp) (:text |80) (:type :leaf)
                                                      |v $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |icBNSlDpZan) (:text |70) (:type :leaf)
                                              |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |dhPWaEN_Erb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |7f_12IwAskU) (:text |:font-size) (:type :leaf)
                                                  |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |Ll7kiUV4L8u) (:text |24) (:type :leaf)
                                              |v $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |9ub0n7Ax_UC) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |LCMUq-se86_) (:text |:margin) (:type :leaf)
                                                  |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |aUF7XgMNz13) (:text "|\"0 4px") (:type :leaf)
                                              |x $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |ZT7r2FAo1iP) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |TRadvhOiWru) (:text |:vertical-align) (:type :leaf)
                                                  |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |wYNp7N4iVCE) (:text |:bottom) (:type :leaf)
                                      |v $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |YIv2Ic-VW2I) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |sWMHvpNQsoF) (:text |<>) (:type :leaf)
                                          |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |VPTe-hW0hoK) (:text |item) (:type :leaf)
                                          |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |p0DS-09FuBS) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |yz2PdcHLeAa) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |H0qx9vlJI9S) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |ECC9NpVpdJw) (:text |:color) (:type :leaf)
                                                  |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |EzFeaMfm1kN) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |s98A6gyZNXi) (:text |hsl) (:type :leaf)
                                                      |j $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |iSPec5_f-2u) (:text |0) (:type :leaf)
                                                      |r $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |KaV2Vr3LhNa) (:text |0) (:type :leaf)
                                                      |v $ {} (:at 1592577788343) (:by |B1y7Rc-Zz) (:id |66jJair6b6l) (:text |50) (:type :leaf)
          |comp-templates $ {} (:at 1500541010211) (:by nil) (:id |Bk2vfqUxl0BZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy6DG9UglCrb) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |rJRPfqLgxArb) (:text |comp-templates) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |H11df58le0Bb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592498805272) (:by |B1y7Rc-Zz) (:id |rJxuzcLle0S-) (:text |states) (:type :leaf)
                  |j $ {} (:at 1592498768328) (:by |B1y7Rc-Zz) (:id |MYp1AwR4d6) (:text |templates) (:type :leaf)
                  |r $ {} (:at 1592583639623) (:by |B1y7Rc-Zz) (:id |3pnvDgGbn3) (:text |selected) (:type :leaf)
              |v $ {} (:at 1592499047531) (:by |B1y7Rc-Zz) (:id |JlfgxLIldX) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1592499048183) (:by |B1y7Rc-Zz) (:id |b5ZdtuhXZL) (:text |let) (:type :leaf)
                  |L $ {} (:at 1592499048391) (:by |B1y7Rc-Zz) (:id |7F2yRKp5cE) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592499048545) (:by |B1y7Rc-Zz) (:id |xgiX12IrL4) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592499055172) (:by |B1y7Rc-Zz) (:id |3BRpw_L7zW) (:text |template-editor) (:type :leaf)
                          |j $ {} (:at 1592499055970) (:by |B1y7Rc-Zz) (:id |gOB14LCHeU) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592499063472) (:by |B1y7Rc-Zz) (:id |bsZSbvaQA4) (:text |use-prompt) (:type :leaf)
                              |j $ {} (:at 1592499078601) (:by |B1y7Rc-Zz) (:id |cvlOrw7Rfi) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592499079040) (:by |B1y7Rc-Zz) (:id |HiYDh42gi) (:text |>>) (:type :leaf)
                                  |j $ {} (:at 1592499079877) (:by |B1y7Rc-Zz) (:id |yc4ehd4N1) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1592499083452) (:by |B1y7Rc-Zz) (:id |BmJAYUcRRH) (:text |:editor) (:type :leaf)
                              |r $ {} (:at 1592499084010) (:by |B1y7Rc-Zz) (:id |IkPfZa4jyF) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592499085675) (:by |B1y7Rc-Zz) (:id |IkPfZa4jyFleaf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592499085942) (:by |B1y7Rc-Zz) (:id |FfVT_wmHpM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592499096161) (:by |B1y7Rc-Zz) (:id |ZuQwbO8ZlK) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1592632159097) (:by |B1y7Rc-Zz) (:id |x_wPgeynRe) (:text "|\"编辑模板, 用 {什么} 来插入填空位置") (:type :leaf)
                      |j $ {} (:at 1592632099394) (:by |B1y7Rc-Zz) (:id |3GYKHl7S8) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592632108939) (:by |B1y7Rc-Zz) (:id |3GYKHl7S8leaf) (:text |remove-plugin) (:type :leaf)
                          |j $ {} (:at 1592632109271) (:by |B1y7Rc-Zz) (:id |t1jYUN3Er) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592632228746) (:by |B1y7Rc-Zz) (:id |czSLskXhew) (:text |use-confirm) (:type :leaf)
                              |j $ {} (:at 1592632112846) (:by |B1y7Rc-Zz) (:id |TdXD6Ka7fe) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592632113287) (:by |B1y7Rc-Zz) (:id |n_VdK1nvli) (:text |>>) (:type :leaf)
                                  |j $ {} (:at 1592632114430) (:by |B1y7Rc-Zz) (:id |Zc3VZzc-SK) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1592632116182) (:by |B1y7Rc-Zz) (:id |8fb5SJfCJb) (:text |:remove) (:type :leaf)
                              |r $ {} (:at 1592632116933) (:by |B1y7Rc-Zz) (:id |icjcKEDHAr) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592632117966) (:by |B1y7Rc-Zz) (:id |wqyqYNU-5z) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592632118396) (:by |B1y7Rc-Zz) (:id |uIW4bzYWWF) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592632120071) (:by |B1y7Rc-Zz) (:id |R0rKJY1gp) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1592632176495) (:by |B1y7Rc-Zz) (:id |QREWEFe5Ot) (:text "|\"确认真的要删除模板吗") (:type :leaf)
                  |T $ {} (:at 1592498808455) (:by |B1y7Rc-Zz) (:id |uggTj6LUv4) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592498809805) (:by |B1y7Rc-Zz) (:id |uggTj6LUv4leaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1592498810018) (:by |B1y7Rc-Zz) (:id |t4EskOiiNq) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592498810338) (:by |B1y7Rc-Zz) (:id |tg2x7zc7XA) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1592498924819) (:by |B1y7Rc-Zz) (:id |LQNPz5Qvas) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592498925617) (:by |B1y7Rc-Zz) (:id |UmJfCUfPM1) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1592498931301) (:by |B1y7Rc-Zz) (:id |obd4v5ciA) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1592498933696) (:by |B1y7Rc-Zz) (:id |YszCpmN7sY) (:text |merge) (:type :leaf)
                                  |L $ {} (:at 1592498935794) (:by |B1y7Rc-Zz) (:id |0Xo1Ow_34S) (:text |ui/expand) (:type :leaf)
                                  |T $ {} (:at 1592498928949) (:by |B1y7Rc-Zz) (:id |umB98B7RAb) (:text |ui/column) (:type :leaf)
                      |r $ {} (:at 1592498922191) (:by |B1y7Rc-Zz) (:id |2OYlulCmK) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592498922660) (:by |B1y7Rc-Zz) (:id |2OYlulCmKleaf) (:text |div) (:type :leaf)
                          |j $ {} (:at 1592498922897) (:by |B1y7Rc-Zz) (:id |wjL5GzWEx2) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592498923231) (:by |B1y7Rc-Zz) (:id |hIMCJ7JtpE) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592498938437) (:by |B1y7Rc-Zz) (:id |kRGDRKrRy0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592498939140) (:by |B1y7Rc-Zz) (:id |3Q0laxWJMw) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1592498941082) (:by |B1y7Rc-Zz) (:id |RO60AqMmvZ) (:text |ui/row-parted) (:type :leaf)
                          |r $ {} (:at 1592498942328) (:by |B1y7Rc-Zz) (:id |jwoXvFWd-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592498943101) (:by |B1y7Rc-Zz) (:id |jwoXvFWd-leaf) (:text |span) (:type :leaf)
                              |j $ {} (:at 1592498943623) (:by |B1y7Rc-Zz) (:id |5-wAH4ZlSS) (:text |nil) (:type :leaf)
                          |v $ {} (:at 1592498944086) (:by |B1y7Rc-Zz) (:id |5h9DKUlws) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592498944743) (:by |B1y7Rc-Zz) (:id |5h9DKUlwsleaf) (:text |a) (:type :leaf)
                              |j $ {} (:at 1592498947455) (:by |B1y7Rc-Zz) (:id |lsky7o-uC) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592498947783) (:by |B1y7Rc-Zz) (:id |lQrGfJOH5) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592498947999) (:by |B1y7Rc-Zz) (:id |w2D2E4OAlD) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592498951927) (:by |B1y7Rc-Zz) (:id |OpMbv1GwiE) (:text |:inner-text) (:type :leaf)
                                      |j $ {} (:at 1592632302673) (:by |B1y7Rc-Zz) (:id |rsvAb_vxot) (:text "|\"添加模板") (:type :leaf)
                                  |r $ {} (:at 1592498957183) (:by |B1y7Rc-Zz) (:id |pWtYnoZJQ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592498958653) (:by |B1y7Rc-Zz) (:id |pWtYnoZJQleaf) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1592498959879) (:by |B1y7Rc-Zz) (:id |ylJZCBl0I2) (:text |ui/link) (:type :leaf)
                                  |v $ {} (:at 1592498962431) (:by |B1y7Rc-Zz) (:id |1HSOPu5ZlO) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592498966604) (:by |B1y7Rc-Zz) (:id |1HSOPu5ZlOleaf) (:text |:on-click) (:type :leaf)
                                      |j $ {} (:at 1592498966919) (:by |B1y7Rc-Zz) (:id |BjQIdYURfE) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592498967169) (:by |B1y7Rc-Zz) (:id |ZJ-upx73Oz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1592498967398) (:by |B1y7Rc-Zz) (:id |6WxNMJ5DxZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592498967633) (:by |B1y7Rc-Zz) (:id |AU5ujYPij_) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1592498968677) (:by |B1y7Rc-Zz) (:id |kub8NlPjSL) (:text |d!) (:type :leaf)
                                          |r $ {} (:at 1592498969589) (:by |B1y7Rc-Zz) (:id |Bzct92J6io) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637152967898) (:by |B1y7Rc-Zz) (:id |Bzct92J6ioleaf) (:text |.show) (:type :leaf)
                                              |b $ {} (:at 1592499187054) (:by |B1y7Rc-Zz) (:id |052YHcrJS) (:text |template-editor) (:type :leaf)
                                              |j $ {} (:at 1592499188464) (:by |B1y7Rc-Zz) (:id |aSj51S3Dfq) (:text |d!) (:type :leaf)
                                              |r $ {} (:at 1592499191447) (:by |B1y7Rc-Zz) (:id |m15r59MHJp) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592499193664) (:by |B1y7Rc-Zz) (:id |f6brUpb4R) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1592499193947) (:by |B1y7Rc-Zz) (:id |_Ggq91kgAl) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592499194658) (:by |B1y7Rc-Zz) (:id |gSoqW_zsZy) (:text |text) (:type :leaf)
                                                  |r $ {} (:at 1592499196651) (:by |B1y7Rc-Zz) (:id |QFDB1dGx4) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592499404283) (:by |B1y7Rc-Zz) (:id |QFDB1dGx4leaf) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1592499409311) (:by |B1y7Rc-Zz) (:id |3r5T4jfYPF) (:text |:template/create) (:type :leaf)
                                                      |r $ {} (:at 1592499204392) (:by |B1y7Rc-Zz) (:id |nQ9acxqGW) (:text |text) (:type :leaf)
                      |v $ {} (:at 1592498974339) (:by |B1y7Rc-Zz) (:id |BpSoXHKAp) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592498979198) (:by |B1y7Rc-Zz) (:id |BpSoXHKApleaf) (:text |list->) (:type :leaf)
                          |j $ {} (:at 1592498979471) (:by |B1y7Rc-Zz) (:id |vUqmPV2Wnr) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592498979986) (:by |B1y7Rc-Zz) (:id |m3F7QJ4HM1) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592583695131) (:by |B1y7Rc-Zz) (:id |wIdLuNqS0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592583697436) (:by |B1y7Rc-Zz) (:id |QZf04oN8Wn) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1592583697634) (:by |B1y7Rc-Zz) (:id |Oxmfa9GoLa) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592583697989) (:by |B1y7Rc-Zz) (:id |3iDTx8th_h) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1592583698217) (:by |B1y7Rc-Zz) (:id |0zyXL4cHjl) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592583699246) (:by |B1y7Rc-Zz) (:id |FXNscr18J) (:text |:padding) (:type :leaf)
                                          |j $ {} (:at 1592583703006) (:by |B1y7Rc-Zz) (:id |MWDzF0C1Il) (:text "|\"0px 4px") (:type :leaf)
                          |r $ {} (:at 1592498980616) (:by |B1y7Rc-Zz) (:id |cG68R9oWlu) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637149576463) (:by |B1y7Rc-Zz) (:id |cG68R9oWluleaf) (:text |->) (:type :leaf)
                              |j $ {} (:at 1592498984849) (:by |B1y7Rc-Zz) (:id |U5PeDiS0c) (:text |templates) (:type :leaf)
                              |r $ {} (:at 1592498985290) (:by |B1y7Rc-Zz) (:id |DQ9oFk6W81) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637149621511) (:by |B1y7Rc-Zz) (:id |jEHXNePuZ) (:text |map-kv) (:type :leaf)
                                  |j $ {} (:at 1592498986236) (:by |B1y7Rc-Zz) (:id |k98kL8ckuK) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592498986509) (:by |B1y7Rc-Zz) (:id |xaiQY762I) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1592498986710) (:by |B1y7Rc-Zz) (:id |b6zv5_an92) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592498988240) (:by |B1y7Rc-Zz) (:id |lmLBNJOAO) (:text |k) (:type :leaf)
                                          |j $ {} (:at 1592498990275) (:by |B1y7Rc-Zz) (:id |b9Hw7gEdIa) (:text |template) (:type :leaf)
                                      |r $ {} (:at 1592498992154) (:by |B1y7Rc-Zz) (:id |7OH9FolTs) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592498992554) (:by |B1y7Rc-Zz) (:id |7OH9FolTsleaf) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1592498993082) (:by |B1y7Rc-Zz) (:id |ZqKsvQFkiE) (:text |k) (:type :leaf)
                                          |r $ {} (:at 1592498993529) (:by |B1y7Rc-Zz) (:id |K-SMlgQlcb) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592498995288) (:by |B1y7Rc-Zz) (:id |GUulukLMVN) (:text |div) (:type :leaf)
                                              |j $ {} (:at 1592498995494) (:by |B1y7Rc-Zz) (:id |D0vb-r_wr5) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592498996520) (:by |B1y7Rc-Zz) (:id |LcuqvGoTY3) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1592500465734) (:by |B1y7Rc-Zz) (:id |9iXxcKZREA) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592500466560) (:by |B1y7Rc-Zz) (:id |5Tu5s50AOC) (:text |:style) (:type :leaf)
                                                      |j $ {} (:at 1592500675257) (:by |B1y7Rc-Zz) (:id |ZY86wtgsok) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1592500677013) (:by |B1y7Rc-Zz) (:id |ALdcK2rHwI) (:text |merge) (:type :leaf)
                                                          |L $ {} (:at 1592500683067) (:by |B1y7Rc-Zz) (:id |Y9WpEIOhb) (:text |ui/row-parted) (:type :leaf)
                                                          |T $ {} (:at 1592500466791) (:by |B1y7Rc-Zz) (:id |nxtWkWsb6E) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592500467125) (:by |B1y7Rc-Zz) (:id |lV_ivgAT2s) (:text |{}) (:type :leaf)
                                                              |j $ {} (:at 1592500467398) (:by |B1y7Rc-Zz) (:id |M61sCra4hX) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592500469758) (:by |B1y7Rc-Zz) (:id |ejpPvFInox) (:text |:padding) (:type :leaf)
                                                                  |j $ {} (:at 1592500473567) (:by |B1y7Rc-Zz) (:id |6r0xW5OR9L) (:text "|\"4px 8px") (:type :leaf)
                                                              |r $ {} (:at 1592500548186) (:by |B1y7Rc-Zz) (:id |yoj_gjmmM) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592500552082) (:by |B1y7Rc-Zz) (:id |yoj_gjmmMleaf) (:text |:border-bottom) (:type :leaf)
                                                                  |j $ {} (:at 1592500552834) (:by |B1y7Rc-Zz) (:id |BV4MDLpfVZ) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1592500554347) (:by |B1y7Rc-Zz) (:id |C-Hr5u3OxE) (:text |str) (:type :leaf)
                                                                      |j $ {} (:at 1592500556607) (:by |B1y7Rc-Zz) (:id |oR9Y8MCmEP) (:text "|\"1px solid ") (:type :leaf)
                                                                      |r $ {} (:at 1592500557429) (:by |B1y7Rc-Zz) (:id |PaMX2Klss1) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1592500557858) (:by |B1y7Rc-Zz) (:id |aUU0LzVOE) (:text |hsl) (:type :leaf)
                                                                          |j $ {} (:at 1592500558163) (:by |B1y7Rc-Zz) (:id |uVVPJgCIb5) (:text |0) (:type :leaf)
                                                                          |r $ {} (:at 1592500558402) (:by |B1y7Rc-Zz) (:id |D80RWe7A8F) (:text |0) (:type :leaf)
                                                                          |v $ {} (:at 1592500565349) (:by |B1y7Rc-Zz) (:id |nSuHFcYL9Q) (:text |94) (:type :leaf)
                                                          |j $ {} (:at 1592583645549) (:by |B1y7Rc-Zz) (:id |Itpw5UF6Nx) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592583645950) (:by |B1y7Rc-Zz) (:id |Itpw5UF6Nxleaf) (:text |if) (:type :leaf)
                                                              |j $ {} (:at 1592583647739) (:by |B1y7Rc-Zz) (:id |Tx7RZudG19) (:type :expr)
                                                                :data $ {}
                                                                  |D $ {} (:at 1592583648409) (:by |B1y7Rc-Zz) (:id |5yCENkAEL) (:text |=) (:type :leaf)
                                                                  |T $ {} (:at 1592583647064) (:by |B1y7Rc-Zz) (:id |3tdxWs7Us) (:text |selected) (:type :leaf)
                                                                  |j $ {} (:at 1592583649860) (:by |B1y7Rc-Zz) (:id |Dg3MuFzFh8) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1592583650378) (:by |B1y7Rc-Zz) (:id |CClvKA3qKa) (:text |:id) (:type :leaf)
                                                                      |j $ {} (:at 1592583652048) (:by |B1y7Rc-Zz) (:id |4Jc1Fz3aFY) (:text |template) (:type :leaf)
                                                              |r $ {} (:at 1592583652670) (:by |B1y7Rc-Zz) (:id |YJi5-DtoBP) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592583654165) (:by |B1y7Rc-Zz) (:id |YJi5-DtoBPleaf) (:text |{}) (:type :leaf)
                                                                  |j $ {} (:at 1592583654643) (:by |B1y7Rc-Zz) (:id |KARIiq-szV) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1592583657443) (:by |B1y7Rc-Zz) (:id |v95cRc6p9D) (:text |:background-color) (:type :leaf)
                                                                      |j $ {} (:at 1592583657676) (:by |B1y7Rc-Zz) (:id |l2HXcSTvnu) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1592583658008) (:by |B1y7Rc-Zz) (:id |J-3unkuGaI) (:text |hsl) (:type :leaf)
                                                                          |j $ {} (:at 1592583658341) (:by |B1y7Rc-Zz) (:id |coNeEhbbJ) (:text |0) (:type :leaf)
                                                                          |r $ {} (:at 1592583658615) (:by |B1y7Rc-Zz) (:id |97vln2lKam) (:text |0) (:type :leaf)
                                                                          |v $ {} (:at 1592583662362) (:by |B1y7Rc-Zz) (:id |0YoHt9CeNV) (:text |97) (:type :leaf)
                                              |v $ {} (:at 1592500687311) (:by |B1y7Rc-Zz) (:id |lkEs2uIS1) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1592500688013) (:by |B1y7Rc-Zz) (:id |Bm7YANogCs) (:text |div) (:type :leaf)
                                                  |L $ {} (:at 1592500688225) (:by |B1y7Rc-Zz) (:id |CfgY8-moto) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592500688526) (:by |B1y7Rc-Zz) (:id |rSsXR0AKO) (:text |{}) (:type :leaf)
                                                  |X $ {} (:at 1592577775791) (:by |B1y7Rc-Zz) (:id |r3s0gdxnz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592577779581) (:by |B1y7Rc-Zz) (:id |r3s0gdxnzleaf) (:text |comp-template-preview) (:type :leaf)
                                                      |j $ {} (:at 1592577782351) (:by |B1y7Rc-Zz) (:id |DsK3AxJPW) (:text |template) (:type :leaf)
                                                  |j $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |H5OZY6FMi9) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |QrJkXJASqM) (:text |div) (:type :leaf)
                                                      |j $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |jGu-LHkHj6) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |uKJEt9kluy) (:text |{}) (:type :leaf)
                                                      |r $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |o1P_Pl9Vli) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |TfxczFYds9) (:text |<>) (:type :leaf)
                                                          |j $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |woZLty8t7x) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |gDM7NJyb_Q) (:text |:text) (:type :leaf)
                                                              |j $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |wGxkBWrGES) (:text |template) (:type :leaf)
                                                          |r $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |Hdw5wEgmbK) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |_NSZ92jmoc) (:text |{}) (:type :leaf)
                                                              |j $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |YW6akauOWC) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |v1EWlDvpUw) (:text |:color) (:type :leaf)
                                                                  |j $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |x5jIEGLzRBo) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |wHrR75oIKCR) (:text |hsl) (:type :leaf)
                                                                      |j $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |5WqgNMAuiPj) (:text |0) (:type :leaf)
                                                                      |r $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |g0nUPhOceS5) (:text |0) (:type :leaf)
                                                                      |v $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |3y9dWlygv-q) (:text |70) (:type :leaf)
                                                              |r $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |cGb6WpDX2a_) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |kLqrLDF2htd) (:text |:font-size) (:type :leaf)
                                                                  |j $ {} (:at 1592500690796) (:by |B1y7Rc-Zz) (:id |kxWSt-8DDga) (:text |10) (:type :leaf)
                                              |x $ {} (:at 1592632195165) (:by |B1y7Rc-Zz) (:id |kwvnyQevI) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1592632198105) (:by |B1y7Rc-Zz) (:id |XRqWNPo6F4) (:text |if-not) (:type :leaf)
                                                  |L $ {} (:at 1592632198695) (:by |B1y7Rc-Zz) (:id |LF-dQoO67E) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592632198695) (:by |B1y7Rc-Zz) (:id |i9AZPlqIj0) (:text |=) (:type :leaf)
                                                      |j $ {} (:at 1592632198695) (:by |B1y7Rc-Zz) (:id |1Y4M80jf35) (:text |selected) (:type :leaf)
                                                      |r $ {} (:at 1592632198695) (:by |B1y7Rc-Zz) (:id |yYpV0RYAhC) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592632198695) (:by |B1y7Rc-Zz) (:id |li32QsGnHV) (:text |:id) (:type :leaf)
                                                          |j $ {} (:at 1592632198695) (:by |B1y7Rc-Zz) (:id |XOZS3n6fAA) (:text |template) (:type :leaf)
                                                  |T $ {} (:at 1592500692183) (:by |B1y7Rc-Zz) (:id |GLk4TkhUD) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592500693245) (:by |B1y7Rc-Zz) (:id |GLk4TkhUDleaf) (:text |div) (:type :leaf)
                                                      |j $ {} (:at 1592500693423) (:by |B1y7Rc-Zz) (:id |D5dl-XSXzS) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592500693715) (:by |B1y7Rc-Zz) (:id |Idd91-lLiJ) (:text |{}) (:type :leaf)
                                                      |n $ {} (:at 1592500722316) (:by |B1y7Rc-Zz) (:id |iuHh5_jc5r) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592500722316) (:by |B1y7Rc-Zz) (:id |fJk4WQ6RWd) (:text |a) (:type :leaf)
                                                          |j $ {} (:at 1592500722316) (:by |B1y7Rc-Zz) (:id |VqtYS7lbRo) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592500722316) (:by |B1y7Rc-Zz) (:id |vSSUovJdiW) (:text |{}) (:type :leaf)
                                                              |j $ {} (:at 1592500722316) (:by |B1y7Rc-Zz) (:id |SKyv6a7iAz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592500722316) (:by |B1y7Rc-Zz) (:id |Nq3k2oCXoh) (:text |:style) (:type :leaf)
                                                                  |j $ {} (:at 1592500722316) (:by |B1y7Rc-Zz) (:id |3oRoQkK8bR) (:text |ui/link) (:type :leaf)
                                                              |r $ {} (:at 1592500722316) (:by |B1y7Rc-Zz) (:id |emTHEtUEuP) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592500722316) (:by |B1y7Rc-Zz) (:id |OW1bQ3Pggq) (:text |:inner-text) (:type :leaf)
                                                                  |j $ {} (:at 1592584211788) (:by |B1y7Rc-Zz) (:id |fVZMgb1EEy) (:text "|\"使用该模板") (:type :leaf)
                                                              |v $ {} (:at 1592578297377) (:by |B1y7Rc-Zz) (:id |kPpMnEI8-) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592578298932) (:by |B1y7Rc-Zz) (:id |kPpMnEI8-leaf) (:text |:on-click) (:type :leaf)
                                                                  |j $ {} (:at 1592578301639) (:by |B1y7Rc-Zz) (:id |CoBuygNbzS) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1592578302119) (:by |B1y7Rc-Zz) (:id |6qYLMDp5p) (:text |fn) (:type :leaf)
                                                                      |j $ {} (:at 1592578302563) (:by |B1y7Rc-Zz) (:id |sr5xPcvfAG) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1592578302753) (:by |B1y7Rc-Zz) (:id |qTYTlMOHnL) (:text |e) (:type :leaf)
                                                                          |j $ {} (:at 1592578303263) (:by |B1y7Rc-Zz) (:id |5FgMFiiu4F) (:text |d!) (:type :leaf)
                                                                      |r $ {} (:at 1592578303716) (:by |B1y7Rc-Zz) (:id |5JApztE6tL) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1592578305469) (:by |B1y7Rc-Zz) (:id |5JApztE6tLleaf) (:text |d!) (:type :leaf)
                                                                          |j $ {} (:at 1592578308812) (:by |B1y7Rc-Zz) (:id |cWQcdcLEia) (:text |:template/choose) (:type :leaf)
                                                                          |r $ {} (:at 1592578309473) (:by |B1y7Rc-Zz) (:id |H655CoF4V) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1592578310090) (:by |B1y7Rc-Zz) (:id |jxKmIHvFfT) (:text |:id) (:type :leaf)
                                                                              |j $ {} (:at 1592578311133) (:by |B1y7Rc-Zz) (:id |B5mAmmvIFI) (:text |template) (:type :leaf)
                                                      |u $ {} (:at 1592500727042) (:by |B1y7Rc-Zz) (:id |OWX90UhQwn) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592500728113) (:by |B1y7Rc-Zz) (:id |HIX1db2Jiv) (:text |=<) (:type :leaf)
                                                          |b $ {} (:at 1592500730993) (:by |B1y7Rc-Zz) (:id |_29pL3jkqJ) (:text |8) (:type :leaf)
                                                          |j $ {} (:at 1592500728719) (:by |B1y7Rc-Zz) (:id |B5LZ5_XFqg) (:text |nil) (:type :leaf)
                                                      |x $ {} (:at 1592500694449) (:by |B1y7Rc-Zz) (:id |98e8ze_mq) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592500695479) (:by |B1y7Rc-Zz) (:id |zUsiREobtDleaf) (:text |a) (:type :leaf)
                                                          |j $ {} (:at 1592500695839) (:by |B1y7Rc-Zz) (:id |A8iWc7usq8) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592500696291) (:by |B1y7Rc-Zz) (:id |VvlBBxOtMO) (:text |{}) (:type :leaf)
                                                              |j $ {} (:at 1592500696559) (:by |B1y7Rc-Zz) (:id |QBikqWg_tR) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592500699240) (:by |B1y7Rc-Zz) (:id |A__5nntozU) (:text |:style) (:type :leaf)
                                                                  |j $ {} (:at 1592500700705) (:by |B1y7Rc-Zz) (:id |DX6Zu8mY_q) (:text |ui/link) (:type :leaf)
                                                              |r $ {} (:at 1592500701642) (:by |B1y7Rc-Zz) (:id |smbXypdLYj) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592500703296) (:by |B1y7Rc-Zz) (:id |smbXypdLYjleaf) (:text |:inner-text) (:type :leaf)
                                                                  |j $ {} (:at 1592584215270) (:by |B1y7Rc-Zz) (:id |B4nnYtQW_D) (:text "|\"删除") (:type :leaf)
                                                              |v $ {} (:at 1592577567708) (:by |B1y7Rc-Zz) (:id |-Shr_wIY88) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592577571921) (:by |B1y7Rc-Zz) (:id |-Shr_wIY88leaf) (:text |:on-click) (:type :leaf)
                                                                  |j $ {} (:at 1592577572466) (:by |B1y7Rc-Zz) (:id |3H5eIYo2_) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1592577573778) (:by |B1y7Rc-Zz) (:id |qoLpqRxjYD) (:text |fn) (:type :leaf)
                                                                      |j $ {} (:at 1592577574024) (:by |B1y7Rc-Zz) (:id |svKMWQbWGZ) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1592577574205) (:by |B1y7Rc-Zz) (:id |kaV-yoTTIc) (:text |e) (:type :leaf)
                                                                          |j $ {} (:at 1592577574685) (:by |B1y7Rc-Zz) (:id |niF0_h22yY) (:text |d!) (:type :leaf)
                                                                      |r $ {} (:at 1592632243205) (:by |B1y7Rc-Zz) (:id |yme9wHe85) (:type :expr)
                                                                        :data $ {}
                                                                          |D $ {} (:at 1637152981521) (:by |B1y7Rc-Zz) (:id |hTsa65Sd6) (:text |.show) (:type :leaf)
                                                                          |H $ {} (:at 1592632244123) (:by |B1y7Rc-Zz) (:id |aeBQP5NunC) (:text |remove-plugin) (:type :leaf)
                                                                          |L $ {} (:at 1592632248878) (:by |B1y7Rc-Zz) (:id |lm02n9gLe) (:text |d!) (:type :leaf)
                                                                          |T $ {} (:at 1592632249481) (:by |B1y7Rc-Zz) (:id |08EDBnQoNE) (:type :expr)
                                                                            :data $ {}
                                                                              |D $ {} (:at 1592632250580) (:by |B1y7Rc-Zz) (:id |X1NWGQ2GHX) (:text |fn) (:type :leaf)
                                                                              |L $ {} (:at 1592632250845) (:by |B1y7Rc-Zz) (:id |oKnQXl7Pu0) (:type :expr)
                                                                                :data $ {}
                                                                              |T $ {} (:at 1592577575139) (:by |B1y7Rc-Zz) (:id |PwfNddYHN) (:type :expr)
                                                                                :data $ {}
                                                                                  |T $ {} (:at 1592577575685) (:by |B1y7Rc-Zz) (:id |PwfNddYHNleaf) (:text |d!) (:type :leaf)
                                                                                  |j $ {} (:at 1592577581177) (:by |B1y7Rc-Zz) (:id |UzfD3E8kp4) (:text |:template/remove) (:type :leaf)
                                                                                  |r $ {} (:at 1592577583860) (:by |B1y7Rc-Zz) (:id |-e0EzLFoh) (:type :expr)
                                                                                    :data $ {}
                                                                                      |T $ {} (:at 1592577592931) (:by |B1y7Rc-Zz) (:id |PEPqaMdJYH) (:text |:id) (:type :leaf)
                                                                                      |j $ {} (:at 1592577593848) (:by |B1y7Rc-Zz) (:id |2zSfMDySo_) (:text |template) (:type :leaf)
                              |v $ {} (:at 1637153105626) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637153107054) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                      |w $ {} (:at 1592583503648) (:by |B1y7Rc-Zz) (:id |iclTRuFyx) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592583504141) (:by |B1y7Rc-Zz) (:id |iclTRuFyxleaf) (:text |if) (:type :leaf)
                          |j $ {} (:at 1592583504594) (:by |B1y7Rc-Zz) (:id |FibHh78VqX) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592583506331) (:by |B1y7Rc-Zz) (:id |1Sz4Y-o-E2) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1592583507316) (:by |B1y7Rc-Zz) (:id |alle8dpoCe) (:text |templates) (:type :leaf)
                          |r $ {} (:at 1592583507964) (:by |B1y7Rc-Zz) (:id |JsQu3bAU28) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592583511449) (:by |B1y7Rc-Zz) (:id |JsQu3bAU28leaf) (:text |comp-placeholder) (:type :leaf)
                              |j $ {} (:at 1592583514680) (:by |B1y7Rc-Zz) (:id |gHsv6FBv-G) (:text "|\"No tempaltes") (:type :leaf)
                      |x $ {} (:at 1592499165887) (:by |B1y7Rc-Zz) (:id |dSMJQytPSj) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637152972055) (:by |B1y7Rc-Zz) (:id |dSMJQytPSjleaf) (:text |.render) (:type :leaf)
                          |j $ {} (:at 1592499171814) (:by |B1y7Rc-Zz) (:id |cpR_3-ZNO) (:text |template-editor) (:type :leaf)
                      |y $ {} (:at 1592632232531) (:by |B1y7Rc-Zz) (:id |WIytkcSt0D) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637152975462) (:by |B1y7Rc-Zz) (:id |WIytkcSt0Dleaf) (:text |.render) (:type :leaf)
                          |j $ {} (:at 1592632233989) (:by |B1y7Rc-Zz) (:id |3Yo8ZqNxrB) (:text |remove-plugin) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |BkUXGcUegABW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |S1DXG98elCSb) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |HkO7fcLel0SZ) (:text |app.comp.templates) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |S1HVf5UxlRHZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HJLNzq8glABb) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |BywNMcUleAHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk_4zqLggASb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1637150213656) (:by |B1y7Rc-Zz) (:id |HkY4z5IllCHb) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkcEM9IgxCSZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJsNzqLleASW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |ry3NM5IegRSW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkTNfcLeeRBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |HkCNz98el0Bb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HJySMq8xgRSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547394445) (:by |root) (:id |HkeBG5Lgl0SW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkWrzqIxx0B-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |S1GrG5LegAHZ) (:text |ui) (:type :leaf)
                |w $ {} (:at 1523120376505) (:by |root) (:id |BkxlWtdUjM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1523120376949) (:by |root) (:id |BkxlWtdUjMleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120379036) (:by |root) (:id |Sk--WFuIoG) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1523120382218) (:by |root) (:id |By4XbFu8oG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1523120382545) (:by |root) (:id |r1DWtdUjM) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1523120382719) (:by |root) (:id |SJEUbFOLjG) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120383255) (:by |root) (:id |BkGPZKu8oM) (:text |=<) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |SkVQg5h1z) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk2XMq8lgCHZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540962179719) (:by |root) (:id |HJp7zc8xxArZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1AmGcLexRH-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyJNG5IexArb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rkxNGqLxg0rZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BkbEz9LegRr-) (:text |defcomp) (:type :leaf)
                        |n $ {} (:at 1592495137330) (:by |B1y7Rc-Zz) (:id |VvYb2o146V) (:text |list->) (:type :leaf)
                        |p $ {} (:at 1592499208335) (:by |B1y7Rc-Zz) (:id |bipFa-B3ph) (:text |>>) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |BJM4fcLlxCrb) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SyQ4McIex0HZ) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HkNEM9Lee0HZ) (:text |div) (:type :leaf)
                        |y $ {} (:at 1592498955331) (:by |B1y7Rc-Zz) (:id |UyQbApAH0p) (:text |a) (:type :leaf)
                |y $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |3JW2PGwjK4) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |3Q4lXqy0N7) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |Y_HhVDj3zn) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1536561758845) (:by |B1y7Rc-Zz) (:id |D0d_mzNKRn) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1536561761903) (:by |B1y7Rc-Zz) (:id |sJXt922sWs) (:text |config) (:type :leaf)
                |yT $ {} (:at 1592499065856) (:by |B1y7Rc-Zz) (:id |-ND5qGaIxu) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592499066196) (:by |B1y7Rc-Zz) (:id |-ND5qGaIxuleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592499069147) (:by |B1y7Rc-Zz) (:id |myNFtHjcry) (:text |respo-alerts.core) (:type :leaf)
                    |r $ {} (:at 1592499072242) (:by |B1y7Rc-Zz) (:id |37cvA1vFtV) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1592499072448) (:by |B1y7Rc-Zz) (:id |E6977b7g6v) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1592499073252) (:by |B1y7Rc-Zz) (:id |FJHFAOgaUK) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1592499076677) (:by |B1y7Rc-Zz) (:id |SzBiu0qDmY) (:text |use-prompt) (:type :leaf)
                        |r $ {} (:at 1592632219560) (:by |B1y7Rc-Zz) (:id |GH-ApsIz4v) (:text |use-confirm) (:type :leaf)
                |yj $ {} (:at 1592583517429) (:by |B1y7Rc-Zz) (:id |yQDH2wuJUt) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592583517725) (:by |B1y7Rc-Zz) (:id |yQDH2wuJUtleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592583518809) (:by |B1y7Rc-Zz) (:id |MH_h0ckek9) (:text |app.comp) (:type :leaf)
                    |r $ {} (:at 1592583521866) (:by |B1y7Rc-Zz) (:id |eSqkB2peC) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1592583522141) (:by |B1y7Rc-Zz) (:id |zPID2Jmse) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1592583522307) (:by |B1y7Rc-Zz) (:id |YijtUrersP) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1592583526662) (:by |B1y7Rc-Zz) (:id |rWFO0x08eY) (:text |comp-placeholder) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |SJ1Uz9LeeAB-) (:type :expr)
          :data $ {}
      |app.comp.workspace $ {}
        :defs $ {}
          |comp-card $ {} (:at 1592584278024) (:by |B1y7Rc-Zz) (:id |sUI_or1gq6) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592584280136) (:by |B1y7Rc-Zz) (:id |KCuU-5OTry) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1592584278024) (:by |B1y7Rc-Zz) (:id |MTVNQVnae-) (:text |comp-card) (:type :leaf)
              |r $ {} (:at 1592584278024) (:by |B1y7Rc-Zz) (:id |rrFhZS37jX) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592584278024) (:by |B1y7Rc-Zz) (:id |7mCDdHdPaL) (:text |card) (:type :leaf)
                  |j $ {} (:at 1592584309785) (:by |B1y7Rc-Zz) (:id |k2K38NQbR) (:text |mine?) (:type :leaf)
                  |r $ {} (:at 1592585061831) (:by |B1y7Rc-Zz) (:id |QFV3hQryY9) (:text |on-remove) (:type :leaf)
              |v $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |izGjlzVkZi) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |xI8wqBcuBq) (:text |div) (:type :leaf)
                  |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |5VqIAKptcK) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |hjFTELQ1vO) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |MzH-rGNeAy) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |MhIPjgVHji) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |BlQO1ebVaA) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |M_tmeQ3X2v) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |DBrJ1HZWBj) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |oGLmzRpwMc) (:text |:display) (:type :leaf)
                                  |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |RgfZqsyfzA) (:text |:inline-block) (:type :leaf)
                              |r $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |6s3zecpoIu) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |gRCk4SQtu_) (:text |:padding) (:type :leaf)
                                  |j $ {} (:at 1592584605753) (:by |B1y7Rc-Zz) (:id |2q3u6-pFDV) (:text "|\"8px 16px") (:type :leaf)
                              |v $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |EdqbOzLvInb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |pnrzz7u2Khg) (:text |:border) (:type :leaf)
                                  |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |OO7NHuQoJQQ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |ozEAMK6fvPJ) (:text |str) (:type :leaf)
                                      |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |AdVWKClTgxr) (:text "|\"1px solid ") (:type :leaf)
                                      |r $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |87zePzUNBz2) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |OZjI9_3c7ZC) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |vA3jTVcreuN) (:text |0) (:type :leaf)
                                          |r $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |6mmpGiNUANZ) (:text |0) (:type :leaf)
                                          |v $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |T2zTDIRH7yn) (:text |90) (:type :leaf)
                              |x $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |7d-WNFwTdkK) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |_jTKlJU8eBH) (:text |:margin) (:type :leaf)
                                  |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |ipFA_0OCkM2) (:text "|\"4px") (:type :leaf)
                  |r $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |VmHBYORTg1T) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |n7H3c01e7tP) (:text |if) (:type :leaf)
                      |f $ {} (:at 1592584313296) (:by |B1y7Rc-Zz) (:id |Q9BnBN7i59) (:text |mine?) (:type :leaf)
                      |r $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |Q1knKVGulpP) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |IzctUzyxK70) (:text |span) (:type :leaf)
                          |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |oAJscssf6EO) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |8WLsc8Dc71C) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |BbUq1jM04Je) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |vaEUEAI3Wt_) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |g1XcB300Nhp) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |W1YZVQIQOXD) (:text |:text) (:type :leaf)
                                  |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |4WPASFZxreg) (:text |card) (:type :leaf)
                          |v $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |Psbro39f8Rk) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |-J1qoPw4i2E) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |gdJYBOLXZQm) (:text "|\"(我的)") (:type :leaf)
                              |r $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |ykUTflQPwmd) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |ywrciQ0jRh5) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |kcvO55ia_dk) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |FKgjnDs7z_f) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |M9QwRKHUMAG) (:text |12) (:type :leaf)
                                  |r $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |p3nyWrvaqkm) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |Zfc01p5YiXa) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |F5WZPR-L-jt) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |NGGdJ85rLMX) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |vB1doaE1UyE) (:text |0) (:type :leaf)
                                          |r $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |3avDv5_1dXn) (:text |0) (:type :leaf)
                                          |v $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |E16oQcoLIO2) (:text |80) (:type :leaf)
                                  |v $ {} (:at 1592584640160) (:by |B1y7Rc-Zz) (:id |ow8oFtJDre) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592584640160) (:by |B1y7Rc-Zz) (:id |ls_auB63rq) (:text |:line-height) (:type :leaf)
                                      |j $ {} (:at 1592584646418) (:by |B1y7Rc-Zz) (:id |BxinL_ZVAA) (:text "|\"28px") (:type :leaf)
                                  |x $ {} (:at 1592584720391) (:by |B1y7Rc-Zz) (:id |jujklOgoZ0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592584720391) (:by |B1y7Rc-Zz) (:id |HdrOorwiL2) (:text |:vertical-align) (:type :leaf)
                                      |j $ {} (:at 1592584731130) (:by |B1y7Rc-Zz) (:id |liygBXgbp0) (:text |:middle) (:type :leaf)
                          |w $ {} (:at 1592584892513) (:by |B1y7Rc-Zz) (:id |MfOPFDRNU) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592584895820) (:by |B1y7Rc-Zz) (:id |fPYG7mr4T) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1592584896253) (:by |B1y7Rc-Zz) (:id |6gIv8mwM1G) (:text |8) (:type :leaf)
                              |r $ {} (:at 1592584896788) (:by |B1y7Rc-Zz) (:id |tFj3Io4w0b) (:text |nil) (:type :leaf)
                          |x $ {} (:at 1592584870247) (:by |B1y7Rc-Zz) (:id |HlUMjsjV3) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592584874108) (:by |B1y7Rc-Zz) (:id |HlUMjsjV3leaf) (:text |comp-icon) (:type :leaf)
                              |j $ {} (:at 1592584875672) (:by |B1y7Rc-Zz) (:id |dZjYDfxVm2) (:text |:x) (:type :leaf)
                              |r $ {} (:at 1592584876614) (:by |B1y7Rc-Zz) (:id |I0vJ9uarA-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584877698) (:by |B1y7Rc-Zz) (:id |mH-tPUv9G) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592584877975) (:by |B1y7Rc-Zz) (:id |HCHpNjwAF4) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592584878822) (:by |B1y7Rc-Zz) (:id |EZRkGNJOL_) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1592584922335) (:by |B1y7Rc-Zz) (:id |Np7ZA4CS_r) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592584923621) (:by |B1y7Rc-Zz) (:id |lEk3M0lskQ) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1592584923966) (:by |B1y7Rc-Zz) (:id |4s5F2R4SZy) (:text |0) (:type :leaf)
                                          |r $ {} (:at 1592584925581) (:by |B1y7Rc-Zz) (:id |3IazairMY) (:text |80) (:type :leaf)
                                          |v $ {} (:at 1592584927212) (:by |B1y7Rc-Zz) (:id |NTYz2zV88X) (:text |60) (:type :leaf)
                                  |r $ {} (:at 1592584879740) (:by |B1y7Rc-Zz) (:id |Kv9A0OvJGF) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592584880783) (:by |B1y7Rc-Zz) (:id |Kv9A0OvJGFleaf) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1592584882923) (:by |B1y7Rc-Zz) (:id |ZZwY3IIHhy) (:text |:pointer) (:type :leaf)
                                  |v $ {} (:at 1592584883260) (:by |B1y7Rc-Zz) (:id |Z_kH685h86) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592584887342) (:by |B1y7Rc-Zz) (:id |Z_kH685h86leaf) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1592584890356) (:by |B1y7Rc-Zz) (:id |S-CZpYFLB1) (:text |12) (:type :leaf)
                              |v $ {} (:at 1592584898775) (:by |B1y7Rc-Zz) (:id |I5f6_q_Qcy) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584899504) (:by |B1y7Rc-Zz) (:id |I5f6_q_Qcyleaf) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1592584899838) (:by |B1y7Rc-Zz) (:id |07jtj-fCcz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592584900085) (:by |B1y7Rc-Zz) (:id |OH9rN7mE3c) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1592584900591) (:by |B1y7Rc-Zz) (:id |u6QUwYzdCD) (:text |d!) (:type :leaf)
                                  |n $ {} (:at 1592585067368) (:by |B1y7Rc-Zz) (:id |weC76gJkl) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592585069265) (:by |B1y7Rc-Zz) (:id |weC76gJklleaf) (:text |on-remove) (:type :leaf)
                                      |j $ {} (:at 1592585076528) (:by |B1y7Rc-Zz) (:id |yR4aMAuJ9) (:text |d!) (:type :leaf)
                      |v $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |VwPvqn0JYfX) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |KVxOjKqYvHz) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |TQ3pOEexYMP) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150326761) (:by |B1y7Rc-Zz) (:id |Oyfd4HB_W4F) (:text |.!replace) (:type :leaf)
                              |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |zdldIuEt6ht) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |EjwNgVvRDfH) (:text |:text) (:type :leaf)
                                  |j $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |0ChcMzbasg0) (:text |card) (:type :leaf)
                              |r $ {} (:at 1637150330804) (:by |B1y7Rc-Zz) (:id |1wGFHL9AA33) (:text |pattern-any) (:type :leaf)
                              |v $ {} (:at 1592584281431) (:by |B1y7Rc-Zz) (:id |BnVadpZOV6u) (:text "|\"*") (:type :leaf)
                          |r $ {} (:at 1592584614663) (:by |B1y7Rc-Zz) (:id |BHnWm5d4PY) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592584616433) (:by |B1y7Rc-Zz) (:id |BHnWm5d4PYleaf) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592584616740) (:by |B1y7Rc-Zz) (:id |vxJyxyU3kP) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584620237) (:by |B1y7Rc-Zz) (:id |bA7Ph61gdW) (:text |:font-size) (:type :leaf)
                                  |j $ {} (:at 1592584689211) (:by |B1y7Rc-Zz) (:id |K-a7Xl6p_U) (:text |24) (:type :leaf)
                              |r $ {} (:at 1592584629653) (:by |B1y7Rc-Zz) (:id |LXYJY1qIxO) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584632214) (:by |B1y7Rc-Zz) (:id |LXYJY1qIxOleaf) (:text |:line-height) (:type :leaf)
                                  |j $ {} (:at 1592584649282) (:by |B1y7Rc-Zz) (:id |a7jt0N2p-O) (:text "|\"28px") (:type :leaf)
                              |v $ {} (:at 1592584665856) (:by |B1y7Rc-Zz) (:id |L3XxrWCcLs) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584668060) (:by |B1y7Rc-Zz) (:id |L3XxrWCcLsleaf) (:text |:font-family) (:type :leaf)
                                  |j $ {} (:at 1592584670116) (:by |B1y7Rc-Zz) (:id |EOcLxs393) (:text |ui/font-code) (:type :leaf)
                              |x $ {} (:at 1592584712514) (:by |B1y7Rc-Zz) (:id |mK01pZUN8) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584714806) (:by |B1y7Rc-Zz) (:id |mK01pZUN8leaf) (:text |:vertical-align) (:type :leaf)
                                  |j $ {} (:at 1592584725933) (:by |B1y7Rc-Zz) (:id |lHjiQgeDSj) (:text |:middle) (:type :leaf)
          |comp-slot $ {} (:at 1592579077024) (:by |B1y7Rc-Zz) (:id |5G5HyOSj1x) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592579079667) (:by |B1y7Rc-Zz) (:id |m0B4ireMpA) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1592579077024) (:by |B1y7Rc-Zz) (:id |lEJsUnlZ-g) (:text |comp-slot) (:type :leaf)
              |r $ {} (:at 1592579077024) (:by |B1y7Rc-Zz) (:id |WdceXVC9dh) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1592579384069) (:by |B1y7Rc-Zz) (:id |jjhTquPJQ) (:text |states) (:type :leaf)
                  |T $ {} (:at 1592579077024) (:by |B1y7Rc-Zz) (:id |b_as2ErEWj) (:text |slot) (:type :leaf)
                  |j $ {} (:at 1592580338482) (:by |B1y7Rc-Zz) (:id |F-GJgZr_8H) (:text |template-id) (:type :leaf)
                  |r $ {} (:at 1592580344418) (:by |B1y7Rc-Zz) (:id |EsVeRktPH) (:text |user-id) (:type :leaf)
              |v $ {} (:at 1592579282065) (:by |B1y7Rc-Zz) (:id |kvllNIbQE) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1592579283234) (:by |B1y7Rc-Zz) (:id |gQ9ArYnxQ-) (:text |let) (:type :leaf)
                  |L $ {} (:at 1592579283574) (:by |B1y7Rc-Zz) (:id |aofiVYQJi7) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592579283713) (:by |B1y7Rc-Zz) (:id |9vviRmI0IJ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592579296398) (:by |B1y7Rc-Zz) (:id |MJa1Raiecg) (:text |create-plugin) (:type :leaf)
                          |j $ {} (:at 1592579297146) (:by |B1y7Rc-Zz) (:id |cwGZRFI7x) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592579300304) (:by |B1y7Rc-Zz) (:id |vSf4r_I7v_) (:text |use-prompt) (:type :leaf)
                              |j $ {} (:at 1592579312941) (:by |B1y7Rc-Zz) (:id |lm0rSkM33n) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592579313367) (:by |B1y7Rc-Zz) (:id |rauuNFBKy) (:text |>>) (:type :leaf)
                                  |j $ {} (:at 1592579314254) (:by |B1y7Rc-Zz) (:id |UwjhTzkvBn) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1592579316930) (:by |B1y7Rc-Zz) (:id |Bi-WLOosXV) (:text |:create) (:type :leaf)
                              |r $ {} (:at 1592579318471) (:by |B1y7Rc-Zz) (:id |WFEN0Kr5p2) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592579318172) (:by |B1y7Rc-Zz) (:id |WVGFeb0eU5) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592579319586) (:by |B1y7Rc-Zz) (:id |5reKRuoYa) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592579321959) (:by |B1y7Rc-Zz) (:id |9yJR1xjRAT) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1592579324782) (:by |B1y7Rc-Zz) (:id |SWmGKML5-) (:text "|\"Add card") (:type :leaf)
                                  |r $ {} (:at 1592579338755) (:by |B1y7Rc-Zz) (:id |nLlMeM3_xZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592579347986) (:by |B1y7Rc-Zz) (:id |nLlMeM3_xZleaf) (:text |:button-text) (:type :leaf)
                                      |j $ {} (:at 1592579350483) (:by |B1y7Rc-Zz) (:id |qTjqJ84jh) (:text "|\"Add it") (:type :leaf)
                  |T $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |9vtrAFajeZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |QyqbSpVFCv) (:text |div) (:type :leaf)
                      |j $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |iVrxLrQbAt) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |_vgMwQ36nu) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |mvreeDutz_) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |rw69zDRgnr) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |GcjaUKNkt_) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |3w5HADEa-i) (:text |merge) (:type :leaf)
                                  |j $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |MawOsrgnJh) (:text |ui/expand) (:type :leaf)
                                  |r $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |GRkkJAgcZo) (:text |ui/column) (:type :leaf)
                                  |v $ {} (:at 1592580037292) (:by |B1y7Rc-Zz) (:id |yVkMS8AZTo) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592580037641) (:by |B1y7Rc-Zz) (:id |wwFwD4vX-) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1592580037858) (:by |B1y7Rc-Zz) (:id |iwc1IknsE5) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592580041067) (:by |B1y7Rc-Zz) (:id |SNjgYoQWu4) (:text |:border-left) (:type :leaf)
                                          |j $ {} (:at 1592580041331) (:by |B1y7Rc-Zz) (:id |byu4oN3Hzh) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592580042016) (:by |B1y7Rc-Zz) (:id |i2ligLYbeO) (:text |str) (:type :leaf)
                                              |j $ {} (:at 1592580044041) (:by |B1y7Rc-Zz) (:id |e8bN9m1Kt) (:text "|\"1px solid ") (:type :leaf)
                                              |r $ {} (:at 1592580044803) (:by |B1y7Rc-Zz) (:id |gPZpV-MJHc) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592580045188) (:by |B1y7Rc-Zz) (:id |0yNsxq-T6) (:text |hsl) (:type :leaf)
                                                  |j $ {} (:at 1592580046196) (:by |B1y7Rc-Zz) (:id |Nnx_jZ-g5J) (:text |0) (:type :leaf)
                                                  |r $ {} (:at 1592580046402) (:by |B1y7Rc-Zz) (:id |I_w584jlEL) (:text |0) (:type :leaf)
                                                  |v $ {} (:at 1592580046857) (:by |B1y7Rc-Zz) (:id |aCCzOSOIRz) (:text |90) (:type :leaf)
                                      |r $ {} (:at 1592580050819) (:by |B1y7Rc-Zz) (:id |1UpTrpQ475) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592580052018) (:by |B1y7Rc-Zz) (:id |1UpTrpQ475leaf) (:text |:padding) (:type :leaf)
                                          |j $ {} (:at 1592580052248) (:by |B1y7Rc-Zz) (:id |S9LDXnytH) (:text |8) (:type :leaf)
                      |r $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |Gp2BR_hOs6) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |ORE0sd86Jw) (:text |div) (:type :leaf)
                          |j $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |SuOKadTlWU) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |0PkbDh9Jpk) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |dmSeAaq55F) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |d55LxtvUY8s) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |xw9JuKQPxpZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |HHtPOxynnl6) (:text |:text) (:type :leaf)
                                  |j $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |66kTtoAkhLf) (:text |slot) (:type :leaf)
                              |r $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |slN23ri1w8d) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |13ucY-CJt52) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |0BHl90h-QPG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |OFUC6pVBZdL) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |yx-rTUddAX7) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |7XG5EmvTjmS) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |jEc_elgAMOZ) (:text |280) (:type :leaf)
                                          |r $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |toiYWEywkkw) (:text |80) (:type :leaf)
                                          |v $ {} (:at 1592579084359) (:by |B1y7Rc-Zz) (:id |RED5h7orEyd) (:text |70) (:type :leaf)
                          |v $ {} (:at 1592579137507) (:by |B1y7Rc-Zz) (:id |uSIgRZ-SWv) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592579138693) (:by |B1y7Rc-Zz) (:id |uSIgRZ-SWvleaf) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1592579139803) (:by |B1y7Rc-Zz) (:id |uh4-b7HOL) (:text |8) (:type :leaf)
                              |r $ {} (:at 1592579140571) (:by |B1y7Rc-Zz) (:id |jkbofh990H) (:text |nil) (:type :leaf)
                          |x $ {} (:at 1592579147044) (:by |B1y7Rc-Zz) (:id |2kxbhptq5r) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592579147635) (:by |B1y7Rc-Zz) (:id |2kxbhptq5rleaf) (:text |a) (:type :leaf)
                              |j $ {} (:at 1592579147998) (:by |B1y7Rc-Zz) (:id |6jTy1lgwCe) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592579150623) (:by |B1y7Rc-Zz) (:id |-mOUrC48lb) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592579150829) (:by |B1y7Rc-Zz) (:id |SzfJB4O4Ul) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592579153154) (:by |B1y7Rc-Zz) (:id |NL3lNiSXZl) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1592579154807) (:by |B1y7Rc-Zz) (:id |6lNGaOYB8G) (:text |ui/link) (:type :leaf)
                                  |r $ {} (:at 1592579155582) (:by |B1y7Rc-Zz) (:id |dzdUSa7ma8) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592579158823) (:by |B1y7Rc-Zz) (:id |dzdUSa7ma8leaf) (:text |:inner-text) (:type :leaf)
                                      |j $ {} (:at 1592584173040) (:by |B1y7Rc-Zz) (:id |rWZW6yOogT) (:text "|\"增加卡片") (:type :leaf)
                                  |v $ {} (:at 1592579162969) (:by |B1y7Rc-Zz) (:id |630GQ1xp72) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592579197855) (:by |B1y7Rc-Zz) (:id |630GQ1xp72leaf) (:text |:on-click) (:type :leaf)
                                      |j $ {} (:at 1592579198134) (:by |B1y7Rc-Zz) (:id |s0MYUIY8H) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592579198468) (:by |B1y7Rc-Zz) (:id |cCOGJin-VU) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1592579198734) (:by |B1y7Rc-Zz) (:id |AW2kMtmnWw) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592579198955) (:by |B1y7Rc-Zz) (:id |KEp24nM4rt) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1592579200115) (:by |B1y7Rc-Zz) (:id |hZzDyRpwCt) (:text |d!) (:type :leaf)
                                          |r $ {} (:at 1592579200802) (:by |B1y7Rc-Zz) (:id |dqJCpBUx0A) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637153892534) (:by |B1y7Rc-Zz) (:id |dqJCpBUx0Aleaf) (:text |.show) (:type :leaf)
                                              |b $ {} (:at 1592579369265) (:by |B1y7Rc-Zz) (:id |UHt1P9OhDg) (:text |create-plugin) (:type :leaf)
                                              |j $ {} (:at 1592579371146) (:by |B1y7Rc-Zz) (:id |RC97kdmkZK) (:text |d!) (:type :leaf)
                                              |r $ {} (:at 1592579411785) (:by |B1y7Rc-Zz) (:id |J3YdJxdq9h) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592579412053) (:by |B1y7Rc-Zz) (:id |BevdYq4rHf) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1592579412318) (:by |B1y7Rc-Zz) (:id |O5xNErLhPe) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592579417232) (:by |B1y7Rc-Zz) (:id |DUPxcHuTu) (:text |text) (:type :leaf)
                                                  |r $ {} (:at 1592579417739) (:by |B1y7Rc-Zz) (:id |7Fs0HfVtZW) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592579431859) (:by |B1y7Rc-Zz) (:id |7Fs0HfVtZWleaf) (:text |when-not) (:type :leaf)
                                                      |j $ {} (:at 1592579432111) (:by |B1y7Rc-Zz) (:id |gcdzfrkUJ) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1637150232498) (:by |B1y7Rc-Zz) (:id |9Mp8mTww7t) (:text |blank?) (:type :leaf)
                                                          |j $ {} (:at 1592579437268) (:by |B1y7Rc-Zz) (:id |lfrud0CtV) (:text |text) (:type :leaf)
                                                      |r $ {} (:at 1592579437776) (:by |B1y7Rc-Zz) (:id |nMIOPd1xk9) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592579441698) (:by |B1y7Rc-Zz) (:id |nMIOPd1xk9leaf) (:text |d!) (:type :leaf)
                                                          |j $ {} (:at 1592579454538) (:by |B1y7Rc-Zz) (:id |vKy0ip5SJ) (:text |:template/add-card) (:type :leaf)
                                                          |r $ {} (:at 1592579455192) (:by |B1y7Rc-Zz) (:id |_Zg42JG1h) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592579455760) (:by |B1y7Rc-Zz) (:id |rzbziEluAg) (:text |{}) (:type :leaf)
                                                              |j $ {} (:at 1592579455969) (:by |B1y7Rc-Zz) (:id |EFPmTbMWlz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592579457759) (:by |B1y7Rc-Zz) (:id |iqG_lAHDjx) (:text |:template-id) (:type :leaf)
                                                                  |j $ {} (:at 1592579459401) (:by |B1y7Rc-Zz) (:id |fCij921iOL) (:text |template-id) (:type :leaf)
                                                              |r $ {} (:at 1592579461246) (:by |B1y7Rc-Zz) (:id |egOiYagtg) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592579463420) (:by |B1y7Rc-Zz) (:id |egOiYagtgleaf) (:text |:text) (:type :leaf)
                                                                  |j $ {} (:at 1592579464267) (:by |B1y7Rc-Zz) (:id |i0eM0063Gh) (:text |text) (:type :leaf)
                                                              |v $ {} (:at 1592579465165) (:by |B1y7Rc-Zz) (:id |ddg3SdajR) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592579473756) (:by |B1y7Rc-Zz) (:id |ddg3SdajRleaf) (:text |:slot-id) (:type :leaf)
                                                                  |j $ {} (:at 1592579477554) (:by |B1y7Rc-Zz) (:id |k-PMndofa) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1592579478305) (:by |B1y7Rc-Zz) (:id |Z03cJ4lmR) (:text |:id) (:type :leaf)
                                                                      |j $ {} (:at 1592579479011) (:by |B1y7Rc-Zz) (:id |3FqABqM5AV) (:text |slot) (:type :leaf)
                      |v $ {} (:at 1592579088814) (:by |B1y7Rc-Zz) (:id |RceN4DIQNq) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592579090566) (:by |B1y7Rc-Zz) (:id |RceN4DIQNqleaf) (:text |list->) (:type :leaf)
                          |j $ {} (:at 1592579090949) (:by |B1y7Rc-Zz) (:id |GC0Fj6ph45) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592579091272) (:by |B1y7Rc-Zz) (:id |_LuTBNEz7v) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1592579092234) (:by |B1y7Rc-Zz) (:id |F38NriZ5a) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637150245431) (:by |B1y7Rc-Zz) (:id |F38NriZ5aleaf) (:text |->) (:type :leaf)
                              |b $ {} (:at 1592579097979) (:by |B1y7Rc-Zz) (:id |31blIBVOQ) (:text |slot) (:type :leaf)
                              |j $ {} (:at 1592579096262) (:by |B1y7Rc-Zz) (:id |UoKs-R9aQ) (:text |:cards) (:type :leaf)
                              |r $ {} (:at 1592579098902) (:by |B1y7Rc-Zz) (:id |pgdynMp9aY) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150247997) (:by |B1y7Rc-Zz) (:id |I7PXU2JlTK) (:text |map-kv) (:type :leaf)
                                  |j $ {} (:at 1592579099795) (:by |B1y7Rc-Zz) (:id |jr0Td6uiTa) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592579099894) (:by |B1y7Rc-Zz) (:id |PMnWoyXrZD) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1592579102034) (:by |B1y7Rc-Zz) (:id |AvKr5_2UWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592579102649) (:by |B1y7Rc-Zz) (:id |hy6vE5Dos) (:text |k) (:type :leaf)
                                          |j $ {} (:at 1592579106422) (:by |B1y7Rc-Zz) (:id |9iyZw4eRk) (:text |card) (:type :leaf)
                                      |r $ {} (:at 1592579107249) (:by |B1y7Rc-Zz) (:id |1a8rc-aft) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592579113670) (:by |B1y7Rc-Zz) (:id |1a8rc-aftleaf) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1592579114468) (:by |B1y7Rc-Zz) (:id |55F-wia2aT) (:text |k) (:type :leaf)
                                          |r $ {} (:at 1592584273393) (:by |B1y7Rc-Zz) (:id |DG0sR5-6yx) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592584275520) (:by |B1y7Rc-Zz) (:id |AWrnRG2q8) (:text |comp-card) (:type :leaf)
                                              |j $ {} (:at 1592584276667) (:by |B1y7Rc-Zz) (:id |PORvAVDBwS) (:text |card) (:type :leaf)
                                              |r $ {} (:at 1592584298347) (:by |B1y7Rc-Zz) (:id |FhBChiGKV) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592584298957) (:by |B1y7Rc-Zz) (:id |IfC1Bi_zdo) (:text |=) (:type :leaf)
                                                  |j $ {} (:at 1592584301430) (:by |B1y7Rc-Zz) (:id |iqPCZGtD2) (:text |user-id) (:type :leaf)
                                                  |r $ {} (:at 1592584301831) (:by |B1y7Rc-Zz) (:id |zzDPw0-R2X) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592584303821) (:by |B1y7Rc-Zz) (:id |4-rfYpImXN) (:text |:author-id) (:type :leaf)
                                                      |j $ {} (:at 1592584304727) (:by |B1y7Rc-Zz) (:id |qjYyrskeEn) (:text |card) (:type :leaf)
                                              |v $ {} (:at 1592585085438) (:by |B1y7Rc-Zz) (:id |0XYBR3Ho5s) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592585087123) (:by |B1y7Rc-Zz) (:id |0XYBR3Ho5sleaf) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1592585087405) (:by |B1y7Rc-Zz) (:id |0bBJGcWydN) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592585088074) (:by |B1y7Rc-Zz) (:id |NVtBRE6vty) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1592585090298) (:by |B1y7Rc-Zz) (:id |zW_L4V5Rgc) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592585090298) (:by |B1y7Rc-Zz) (:id |_fIW197lMY) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1592585090298) (:by |B1y7Rc-Zz) (:id |GGx7PeTUMs) (:text |:template/remove-card) (:type :leaf)
                                                      |r $ {} (:at 1592585090298) (:by |B1y7Rc-Zz) (:id |EKczaMqI_-) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592585090298) (:by |B1y7Rc-Zz) (:id |6mIgXbzTny) (:text |{}) (:type :leaf)
                                                          |j $ {} (:at 1592585090298) (:by |B1y7Rc-Zz) (:id |P7757sfHGx) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592585090298) (:by |B1y7Rc-Zz) (:id |x7ZxTpiHdC) (:text |:template-id) (:type :leaf)
                                                              |j $ {} (:at 1592585090298) (:by |B1y7Rc-Zz) (:id |eDXQrbOfeY) (:text |template-id) (:type :leaf)
                                                          |n $ {} (:at 1592585097018) (:by |B1y7Rc-Zz) (:id |hOWQDZMEbB) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592585100483) (:by |B1y7Rc-Zz) (:id |hOWQDZMEbBleaf) (:text |:slot-id) (:type :leaf)
                                                              |j $ {} (:at 1592585101227) (:by |B1y7Rc-Zz) (:id |FOzq1IYXWa) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592585101227) (:by |B1y7Rc-Zz) (:id |cYvWP1G0my) (:text |:id) (:type :leaf)
                                                                  |j $ {} (:at 1592585101227) (:by |B1y7Rc-Zz) (:id |24tIgOLiC6) (:text |slot) (:type :leaf)
                                                          |r $ {} (:at 1592585090298) (:by |B1y7Rc-Zz) (:id |rHPzXLhcMp) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592585090298) (:by |B1y7Rc-Zz) (:id |ooN6abclMt) (:text |:card-id) (:type :leaf)
                                                              |j $ {} (:at 1592585090298) (:by |B1y7Rc-Zz) (:id |Pe13jIjeu4) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592585090298) (:by |B1y7Rc-Zz) (:id |FLEL7SnE1w) (:text |:id) (:type :leaf)
                                                                  |j $ {} (:at 1592585090298) (:by |B1y7Rc-Zz) (:id |14nhexuDii) (:text |card) (:type :leaf)
                              |v $ {} (:at 1637150250743) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637150254306) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                      |x $ {} (:at 1592579216661) (:by |B1y7Rc-Zz) (:id |I5k_06mUg) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592579218134) (:by |B1y7Rc-Zz) (:id |I5k_06mUgleaf) (:text |if) (:type :leaf)
                          |j $ {} (:at 1592579218424) (:by |B1y7Rc-Zz) (:id |AQbjpNEQAX) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592579219745) (:by |B1y7Rc-Zz) (:id |rEuLMhu2AR) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1592579220352) (:by |B1y7Rc-Zz) (:id |K3K4_Nti9) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1592579226341) (:by |B1y7Rc-Zz) (:id |ZOQF9gBOtX) (:text |:cards) (:type :leaf)
                                  |T $ {} (:at 1592579223583) (:by |B1y7Rc-Zz) (:id |4kr-yIOW_S) (:text |slot) (:type :leaf)
                          |n $ {} (:at 1592583440813) (:by |B1y7Rc-Zz) (:id |khPJVhLptu) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592583441692) (:by |B1y7Rc-Zz) (:id |khPJVhLptuleaf) (:text |comp-placeholder) (:type :leaf)
                              |j $ {} (:at 1592584338475) (:by |B1y7Rc-Zz) (:id |Z4oUtrbS9k) (:text "|\"没有卡片") (:type :leaf)
                      |y $ {} (:at 1592579374205) (:by |B1y7Rc-Zz) (:id |DRILeXGJ4) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637153897487) (:by |B1y7Rc-Zz) (:id |DRILeXGJ4leaf) (:text |.render) (:type :leaf)
                          |j $ {} (:at 1592579378166) (:by |B1y7Rc-Zz) (:id |wUK4RZMJ0A) (:text |create-plugin) (:type :leaf)
          |comp-workspace $ {} (:at 1500541010211) (:by nil) (:id |Bk2vfqUxl0BZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy6DG9UglCrb) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |rJRPfqLgxArb) (:text |comp-workspace) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |H11df58le0Bb) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1592498886806) (:by |B1y7Rc-Zz) (:id |LORAHN6FTg) (:text |states) (:type :leaf)
                  |T $ {} (:at 1592494894086) (:by |B1y7Rc-Zz) (:id |rJxuzcLle0S-) (:text |router) (:type :leaf)
                  |j $ {} (:at 1592498768328) (:by |B1y7Rc-Zz) (:id |MYp1AwR4d6) (:text |templates) (:type :leaf)
                  |r $ {} (:at 1592578606816) (:by |B1y7Rc-Zz) (:id |uhOzXGXLvJ) (:text |game) (:type :leaf)
                  |v $ {} (:at 1592580320275) (:by |B1y7Rc-Zz) (:id |A_kHlJupgb) (:text |user) (:type :leaf)
              |v $ {} (:at 1592494966009) (:by |B1y7Rc-Zz) (:id |m_5Q-nkvzd) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592494967307) (:by |B1y7Rc-Zz) (:id |nP401bGcrZ) (:text |div) (:type :leaf)
                  |j $ {} (:at 1592494967475) (:by |B1y7Rc-Zz) (:id |zE5efGYCtn) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592494967889) (:by |B1y7Rc-Zz) (:id |igm-wMRsii) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1592494980165) (:by |B1y7Rc-Zz) (:id |4G1wvKKqL) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592494982968) (:by |B1y7Rc-Zz) (:id |CzI6tSUkpq) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1592495393919) (:by |B1y7Rc-Zz) (:id |M9gVcV5bDA) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1592495396657) (:by |B1y7Rc-Zz) (:id |Qqlp9lS_Z) (:text |merge) (:type :leaf)
                              |T $ {} (:at 1592494985516) (:by |B1y7Rc-Zz) (:id |LyiafAb0Aw) (:text |ui/expand) (:type :leaf)
                              |j $ {} (:at 1592495398997) (:by |B1y7Rc-Zz) (:id |F6t7xxdDT) (:text |ui/column) (:type :leaf)
                              |r $ {} (:at 1592578946913) (:by |B1y7Rc-Zz) (:id |gXaKT8fr26) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592578947257) (:by |B1y7Rc-Zz) (:id |J8zLOKLBsk) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592578947645) (:by |B1y7Rc-Zz) (:id |wZxUCfvYen) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592578950572) (:by |B1y7Rc-Zz) (:id |cB3AoIN67r) (:text |:flex) (:type :leaf)
                                      |j $ {} (:at 1592578960299) (:by |B1y7Rc-Zz) (:id |k8rT7DFB-Z) (:text |1.5) (:type :leaf)
                  |n $ {} (:at 1592495036690) (:by |B1y7Rc-Zz) (:id |sR3WtbegQ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592495038954) (:by |B1y7Rc-Zz) (:id |sR3WtbegQleaf) (:text |comp-tabs) (:type :leaf)
                      |b $ {} (:at 1592495043911) (:by |B1y7Rc-Zz) (:id |b_xGgkCeIF) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592495044419) (:by |B1y7Rc-Zz) (:id |psOGugr4zN) (:text |:name) (:type :leaf)
                          |j $ {} (:at 1592495045172) (:by |B1y7Rc-Zz) (:id |mZY7yXdzdq) (:text |router) (:type :leaf)
                      |j $ {} (:at 1592495041715) (:by |B1y7Rc-Zz) (:id |LUTl6uWlME) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592495042059) (:by |B1y7Rc-Zz) (:id |yfDlLIl1s_) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1592495046701) (:by |B1y7Rc-Zz) (:id |AonydghST9) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592495047559) (:by |B1y7Rc-Zz) (:id |SHw6PUnbOU) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592495047831) (:by |B1y7Rc-Zz) (:id |DyjYWgsP9u) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592495050670) (:by |B1y7Rc-Zz) (:id |BD-zxdy6Fg) (:text |:title) (:type :leaf)
                                  |j $ {} (:at 1592583944707) (:by |B1y7Rc-Zz) (:id |Ra5vJPL1wz) (:text "|\"主页") (:type :leaf)
                              |r $ {} (:at 1592495067179) (:by |B1y7Rc-Zz) (:id |8Q0bgSCBt) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592495070147) (:by |B1y7Rc-Zz) (:id |8Q0bgSCBtleaf) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1592495249644) (:by |B1y7Rc-Zz) (:id |GW25WeVguO) (:text |:home) (:type :leaf)
                          |r $ {} (:at 1592495046701) (:by |B1y7Rc-Zz) (:id |V6kJ7Cehq) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592495047559) (:by |B1y7Rc-Zz) (:id |SHw6PUnbOU) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592495047831) (:by |B1y7Rc-Zz) (:id |DyjYWgsP9u) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592495050670) (:by |B1y7Rc-Zz) (:id |BD-zxdy6Fg) (:text |:title) (:type :leaf)
                                  |j $ {} (:at 1592583947991) (:by |B1y7Rc-Zz) (:id |Ra5vJPL1wz) (:text "|\"模板") (:type :leaf)
                              |r $ {} (:at 1592495067179) (:by |B1y7Rc-Zz) (:id |8Q0bgSCBt) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592495070147) (:by |B1y7Rc-Zz) (:id |8Q0bgSCBtleaf) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1592495081254) (:by |B1y7Rc-Zz) (:id |GW25WeVguO) (:text |:templates) (:type :leaf)
                  |r $ {} (:at 1592495403819) (:by |B1y7Rc-Zz) (:id |bYEEcXozq) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1592495405182) (:by |B1y7Rc-Zz) (:id |OChLhVTgN) (:text |if) (:type :leaf)
                      |L $ {} (:at 1592495405406) (:by |B1y7Rc-Zz) (:id |p-7lPMdPKL) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592495405700) (:by |B1y7Rc-Zz) (:id |5m844A6wQ8) (:text |=) (:type :leaf)
                          |j $ {} (:at 1592495408807) (:by |B1y7Rc-Zz) (:id |ydXIrLV7d) (:text |:templates) (:type :leaf)
                          |r $ {} (:at 1592495409297) (:by |B1y7Rc-Zz) (:id |fJW5v2vCJ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592495409951) (:by |B1y7Rc-Zz) (:id |kpiyx-5ceB) (:text |:name) (:type :leaf)
                              |j $ {} (:at 1592495411255) (:by |B1y7Rc-Zz) (:id |mFWFiwacgt) (:text |router) (:type :leaf)
                      |T $ {} (:at 1592494969558) (:by |B1y7Rc-Zz) (:id |-9a3dec74d) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592498827042) (:by |B1y7Rc-Zz) (:id |-9a3dec74dleaf) (:text |comp-templates) (:type :leaf)
                          |b $ {} (:at 1592498878204) (:by |B1y7Rc-Zz) (:id |QpGL96UzN) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592498879634) (:by |B1y7Rc-Zz) (:id |0WTvuBgVs) (:text |>>) (:type :leaf)
                              |j $ {} (:at 1592498880610) (:by |B1y7Rc-Zz) (:id |taT76wVCUI) (:text |states) (:type :leaf)
                              |r $ {} (:at 1592498884248) (:by |B1y7Rc-Zz) (:id |T9v_TfRR8A) (:text |:templates) (:type :leaf)
                          |j $ {} (:at 1592498830425) (:by |B1y7Rc-Zz) (:id |QPdZe484IJ) (:text |templates) (:type :leaf)
                          |r $ {} (:at 1592583627262) (:by |B1y7Rc-Zz) (:id |Ft9vkSteb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592583629175) (:by |B1y7Rc-Zz) (:id |zZLF0tcry) (:text |:template-id) (:type :leaf)
                              |j $ {} (:at 1592583630253) (:by |B1y7Rc-Zz) (:id |AcQzAITYoH) (:text |game) (:type :leaf)
                      |j $ {} (:at 1592498908536) (:by |B1y7Rc-Zz) (:id |7mAx_yb2YR) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592578584669) (:by |B1y7Rc-Zz) (:id |sgkMGa3jTV) (:text |let) (:type :leaf)
                          |j $ {} (:at 1592578584867) (:by |B1y7Rc-Zz) (:id |rR1WiRe75f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592578585008) (:by |B1y7Rc-Zz) (:id |H8Sp9IAqnA) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592578589480) (:by |B1y7Rc-Zz) (:id |w3zdSpOKhw) (:text |template) (:type :leaf)
                                  |j $ {} (:at 1592578590097) (:by |B1y7Rc-Zz) (:id |oNHUXxQf0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592578590779) (:by |B1y7Rc-Zz) (:id |1obucYMKwP) (:text |get) (:type :leaf)
                                      |j $ {} (:at 1592578592717) (:by |B1y7Rc-Zz) (:id |vPZpZiAvV) (:text |templates) (:type :leaf)
                                      |r $ {} (:at 1592578593014) (:by |B1y7Rc-Zz) (:id |xqT3cTbOfX) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592578611374) (:by |B1y7Rc-Zz) (:id |bTZHKXNrM3) (:text |:template-id) (:type :leaf)
                                          |j $ {} (:at 1592578612320) (:by |B1y7Rc-Zz) (:id |pnoXQk1CNo) (:text |game) (:type :leaf)
                              |j $ {} (:at 1592581422881) (:by |B1y7Rc-Zz) (:id |xxxlmxLERW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592581433718) (:by |B1y7Rc-Zz) (:id |xxxlmxLERWleaf) (:text |has-next?) (:type :leaf)
                                  |b $ {} (:at 1592581488758) (:by |B1y7Rc-Zz) (:id |sqgKAfVFU3) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637149643650) (:by |B1y7Rc-Zz) (:id |LtoH_Q1Lrk) (:text |->) (:type :leaf)
                                      |j $ {} (:at 1592581491279) (:by |B1y7Rc-Zz) (:id |GmLOBi9ixE) (:text |template) (:type :leaf)
                                      |n $ {} (:at 1592581531873) (:by |B1y7Rc-Zz) (:id |sHTsP0S0JZ) (:text |:slots) (:type :leaf)
                                      |p $ {} (:at 1637152861094) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637152862987) (:by |B1y7Rc-Zz) (:text |.to-map) (:type :leaf)
                                      |r $ {} (:at 1592581496668) (:by |B1y7Rc-Zz) (:id |Qa5fGkE2B-) (:text |vals) (:type :leaf)
                                      |t $ {} (:at 1637153741270) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637153742931) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                      |v $ {} (:at 1592581504125) (:by |B1y7Rc-Zz) (:id |qRu2BFx70) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592581505564) (:by |B1y7Rc-Zz) (:id |5OO3JLspz) (:text |map) (:type :leaf)
                                          |j $ {} (:at 1637153732340) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1637153733467) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                              |L $ {} (:at 1637153733776) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1637153734132) (:by |B1y7Rc-Zz) (:text |x) (:type :leaf)
                                              |T $ {} (:at 1637153734999) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592581508891) (:by |B1y7Rc-Zz) (:id |gKrJMlRot) (:text |:cards) (:type :leaf)
                                                  |j $ {} (:at 1637153737068) (:by |B1y7Rc-Zz) (:text |x) (:type :leaf)
                                      |x $ {} (:at 1592581512091) (:by |B1y7Rc-Zz) (:id |qWZTUJ2MS) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592581513260) (:by |B1y7Rc-Zz) (:id |qWZTUJ2MSleaf) (:text |every?) (:type :leaf)
                                          |j $ {} (:at 1592581513924) (:by |B1y7Rc-Zz) (:id |68PRFsSDuP) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592581514186) (:by |B1y7Rc-Zz) (:id |WLldy7RujH) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1592581514756) (:by |B1y7Rc-Zz) (:id |ftPRT7GsZj) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592581518520) (:by |B1y7Rc-Zz) (:id |bx5h5knmdq) (:text |xs) (:type :leaf)
                                              |r $ {} (:at 1637150804706) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1637150805305) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                                                  |T $ {} (:at 1592581519892) (:by |B1y7Rc-Zz) (:id |Wl0jBUnKeu) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1637150804066) (:by |B1y7Rc-Zz) (:id |Wl0jBUnKeuleaf) (:text |empty?) (:type :leaf)
                                                      |j $ {} (:at 1592581523884) (:by |B1y7Rc-Zz) (:id |k8ZQHqyezI) (:text |xs) (:type :leaf)
                          |r $ {} (:at 1592578615767) (:by |B1y7Rc-Zz) (:id |7GVg6eu3lG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1592578617564) (:by |B1y7Rc-Zz) (:id |4VeqR4laS) (:text |if) (:type :leaf)
                              |T $ {} (:at 1592578618254) (:by |B1y7Rc-Zz) (:id |WbD4Ol14lK) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1592578619207) (:by |B1y7Rc-Zz) (:id |cVHr5vEQC6) (:text |some?) (:type :leaf)
                                  |T $ {} (:at 1592578616181) (:by |B1y7Rc-Zz) (:id |7GVg6eu3lGleaf) (:text |template) (:type :leaf)
                              |j $ {} (:at 1592578619769) (:by |B1y7Rc-Zz) (:id |UzxekYRqV8) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592578620777) (:by |B1y7Rc-Zz) (:id |UzxekYRqV8leaf) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1592578622219) (:by |B1y7Rc-Zz) (:id |KXNm8l6two) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592578622563) (:by |B1y7Rc-Zz) (:id |71AjVEew2) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1592578667442) (:by |B1y7Rc-Zz) (:id |T0qzFXGM8I) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592578668749) (:by |B1y7Rc-Zz) (:id |9L6CE5GCAS) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1592578668938) (:by |B1y7Rc-Zz) (:id |nS35mpw0e4) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1592578674038) (:by |B1y7Rc-Zz) (:id |vNSDcuPCl) (:text |merge) (:type :leaf)
                                              |T $ {} (:at 1592578672027) (:by |B1y7Rc-Zz) (:id |9oBpVAJnix) (:text |ui/expand) (:type :leaf)
                                              |b $ {} (:at 1592578683765) (:by |B1y7Rc-Zz) (:id |5kT6ibKsZg) (:text |ui/column) (:type :leaf)
                                              |j $ {} (:at 1592578674568) (:by |B1y7Rc-Zz) (:id |9_O-T8Qbvb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592578674907) (:by |B1y7Rc-Zz) (:id |htWFyi-cT3) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1592578675097) (:by |B1y7Rc-Zz) (:id |rpRkZessb) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592578676128) (:by |B1y7Rc-Zz) (:id |6lsvtQpSWm) (:text |:padding) (:type :leaf)
                                                      |j $ {} (:at 1592578676496) (:by |B1y7Rc-Zz) (:id |n-7E72dhiy) (:text |16) (:type :leaf)
                                  |r $ {} (:at 1592581355851) (:by |B1y7Rc-Zz) (:id |tBEkioMJ9X) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1592581360574) (:by |B1y7Rc-Zz) (:id |PkefZfGQ21) (:text |div) (:type :leaf)
                                      |L $ {} (:at 1592581360927) (:by |B1y7Rc-Zz) (:id |ghFrOf5WEV) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592581361275) (:by |B1y7Rc-Zz) (:id |F3DMOBtFYZ) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1592581361482) (:by |B1y7Rc-Zz) (:id |Cqbq4VhgKu) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592581362282) (:by |B1y7Rc-Zz) (:id |s66_KpIscs) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1592581411971) (:by |B1y7Rc-Zz) (:id |RxTurNl0xk) (:text |ui/row-middle) (:type :leaf)
                                      |T $ {} (:at 1592578685337) (:by |B1y7Rc-Zz) (:id |8XtwI-w08) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592578691491) (:by |B1y7Rc-Zz) (:id |8XtwI-w08leaf) (:text |comp-template-preview) (:type :leaf)
                                          |j $ {} (:at 1592578694948) (:by |B1y7Rc-Zz) (:id |7AAWf8RJNU) (:text |template) (:type :leaf)
                                      |j $ {} (:at 1592581366549) (:by |B1y7Rc-Zz) (:id |fauaIBKwn) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592581368012) (:by |B1y7Rc-Zz) (:id |fauaIBKwnleaf) (:text |=<) (:type :leaf)
                                          |j $ {} (:at 1592581369139) (:by |B1y7Rc-Zz) (:id |4jvhkrHHo) (:text |16) (:type :leaf)
                                          |r $ {} (:at 1592581369736) (:by |B1y7Rc-Zz) (:id |ASeT2en5gk) (:text |nil) (:type :leaf)
                                      |r $ {} (:at 1592581533119) (:by |B1y7Rc-Zz) (:id |rpIcrCl_j) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1592581534683) (:by |B1y7Rc-Zz) (:id |UPhW_pAtRi) (:text |if) (:type :leaf)
                                          |L $ {} (:at 1592581535590) (:by |B1y7Rc-Zz) (:id |yss9S_aGn8) (:text |has-next?) (:type :leaf)
                                          |T $ {} (:at 1592581370280) (:by |B1y7Rc-Zz) (:id |WMHq_BWvr) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592581371206) (:by |B1y7Rc-Zz) (:id |WMHq_BWvrleaf) (:text |button) (:type :leaf)
                                              |j $ {} (:at 1592581371443) (:by |B1y7Rc-Zz) (:id |XySM_uApKZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592581372771) (:by |B1y7Rc-Zz) (:id |miRWCPP_7_) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1592581373045) (:by |B1y7Rc-Zz) (:id |DipJBPiCWW) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592581373812) (:by |B1y7Rc-Zz) (:id |YnI4rsQDqE) (:text |:style) (:type :leaf)
                                                      |j $ {} (:at 1592584118680) (:by |B1y7Rc-Zz) (:id |ryxXP_muYL) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1592584121486) (:by |B1y7Rc-Zz) (:id |4R-HkkTGb) (:text |merge) (:type :leaf)
                                                          |T $ {} (:at 1592581375137) (:by |B1y7Rc-Zz) (:id |_bcVgnUYJ0) (:text |ui/button) (:type :leaf)
                                                          |j $ {} (:at 1592584122503) (:by |B1y7Rc-Zz) (:id |D9rw4w-HqV) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592584122841) (:by |B1y7Rc-Zz) (:id |IUGFRcbwi) (:text |{}) (:type :leaf)
                                                              |j $ {} (:at 1592584123137) (:by |B1y7Rc-Zz) (:id |3K0JyBleT) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592584124802) (:by |B1y7Rc-Zz) (:id |MTL7Tl409m) (:text |:color) (:type :leaf)
                                                                  |j $ {} (:at 1592584125536) (:by |B1y7Rc-Zz) (:id |-CyeEADQQd) (:text |:white) (:type :leaf)
                                                              |r $ {} (:at 1592584126324) (:by |B1y7Rc-Zz) (:id |F3V03btB1d) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592584130074) (:by |B1y7Rc-Zz) (:id |F3V03btB1dleaf) (:text |:background-color) (:type :leaf)
                                                                  |j $ {} (:at 1592584130610) (:by |B1y7Rc-Zz) (:id |9-PE5ZyY4f) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1592584131036) (:by |B1y7Rc-Zz) (:id |y7qDoLVMqe) (:text |hsl) (:type :leaf)
                                                                      |j $ {} (:at 1592584132049) (:by |B1y7Rc-Zz) (:id |mG_DIACOO) (:text |200) (:type :leaf)
                                                                      |r $ {} (:at 1592584132481) (:by |B1y7Rc-Zz) (:id |0PYSUlJUt) (:text |90) (:type :leaf)
                                                                      |v $ {} (:at 1592584144592) (:by |B1y7Rc-Zz) (:id |A4TjU7nA-) (:text |60) (:type :leaf)
                                                  |r $ {} (:at 1592581377498) (:by |B1y7Rc-Zz) (:id |Eh_VV0vmP) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592581379460) (:by |B1y7Rc-Zz) (:id |Eh_VV0vmPleaf) (:text |:inner-text) (:type :leaf)
                                                      |j $ {} (:at 1592584047393) (:by |B1y7Rc-Zz) (:id |RXyk6zxf1b) (:text "|\"拼接句子") (:type :leaf)
                                                  |v $ {} (:at 1592581386055) (:by |B1y7Rc-Zz) (:id |kXXvkiIFQl) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592581388346) (:by |B1y7Rc-Zz) (:id |kXXvkiIFQlleaf) (:text |:on-click) (:type :leaf)
                                                      |j $ {} (:at 1592581388639) (:by |B1y7Rc-Zz) (:id |GTx83UXbub) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592581388914) (:by |B1y7Rc-Zz) (:id |ZUe7ZT-FDW) (:text |fn) (:type :leaf)
                                                          |j $ {} (:at 1592581389133) (:by |B1y7Rc-Zz) (:id |Ql5dg8MSs) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592581389286) (:by |B1y7Rc-Zz) (:id |Ql9sw-Mcyj) (:text |e) (:type :leaf)
                                                              |j $ {} (:at 1592581389743) (:by |B1y7Rc-Zz) (:id |NdgXuTbAeF) (:text |d!) (:type :leaf)
                                                          |r $ {} (:at 1592581390798) (:by |B1y7Rc-Zz) (:id |8M41VQRj-A) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592581674378) (:by |B1y7Rc-Zz) (:id |8M41VQRj-Aleaf) (:text |d!) (:type :leaf)
                                                              |j $ {} (:at 1592581687088) (:by |B1y7Rc-Zz) (:id |tHaiLc_P_) (:text |:message/show-result) (:type :leaf)
                                                              |r $ {} (:at 1592581680758) (:by |B1y7Rc-Zz) (:id |xv5KDseHR) (:text |nil) (:type :leaf)
                                          |j $ {} (:at 1592581536555) (:by |B1y7Rc-Zz) (:id |LcOosfw5c) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592581538132) (:by |B1y7Rc-Zz) (:id |LcOosfw5cleaf) (:text |<>) (:type :leaf)
                                              |j $ {} (:at 1592584070509) (:by |B1y7Rc-Zz) (:id |5cs-wASJrK) (:text "|\"卡片种类不足") (:type :leaf)
                                              |r $ {} (:at 1592584056167) (:by |B1y7Rc-Zz) (:id |lkSSl8T5Z) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592584056502) (:by |B1y7Rc-Zz) (:id |IiHPHIRBa3) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1592584056798) (:by |B1y7Rc-Zz) (:id |-7SPvKWE7R) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592584059213) (:by |B1y7Rc-Zz) (:id |HPMQLbUnRy) (:text |:color) (:type :leaf)
                                                      |j $ {} (:at 1592584059484) (:by |B1y7Rc-Zz) (:id |k7v3LJdP2O) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592584059829) (:by |B1y7Rc-Zz) (:id |G92c_E4hW_) (:text |hsl) (:type :leaf)
                                                          |j $ {} (:at 1592584088597) (:by |B1y7Rc-Zz) (:id |CSZxmqNkI) (:text |10) (:type :leaf)
                                                          |r $ {} (:at 1592584091453) (:by |B1y7Rc-Zz) (:id |YYBVDh9rRO) (:text |80) (:type :leaf)
                                                          |v $ {} (:at 1592584103096) (:by |B1y7Rc-Zz) (:id |hqMpoq2gDo) (:text |76) (:type :leaf)
                                  |t $ {} (:at 1592578927610) (:by |B1y7Rc-Zz) (:id |TLCH7Bqdcl) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592578928212) (:by |B1y7Rc-Zz) (:id |TLCH7Bqdclleaf) (:text |=<) (:type :leaf)
                                      |j $ {} (:at 1592578929763) (:by |B1y7Rc-Zz) (:id |BdJIzpJem3) (:text |nil) (:type :leaf)
                                      |r $ {} (:at 1592578931546) (:by |B1y7Rc-Zz) (:id |JQOPGe8vua) (:text |20) (:type :leaf)
                                  |v $ {} (:at 1592578780593) (:by |B1y7Rc-Zz) (:id |YLBByajssO) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592578785917) (:by |B1y7Rc-Zz) (:id |YLBByajssOleaf) (:text |list->) (:type :leaf)
                                      |j $ {} (:at 1592578786210) (:by |B1y7Rc-Zz) (:id |fa3zOaROY) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592578873570) (:by |B1y7Rc-Zz) (:id |waGFD_cUM2) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1592578874435) (:by |B1y7Rc-Zz) (:id |v3dx-oDRk8) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592578878889) (:by |B1y7Rc-Zz) (:id |2xoteeh1F) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1592578880349) (:by |B1y7Rc-Zz) (:id |8ILjne639d) (:text |ui/row) (:type :leaf)
                                      |r $ {} (:at 1592578789523) (:by |B1y7Rc-Zz) (:id |S75NpV44kR) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637002086759) (:by |B1y7Rc-Zz) (:id |S75NpV44kRleaf) (:text |->) (:type :leaf)
                                          |b $ {} (:at 1592578867157) (:by |B1y7Rc-Zz) (:id |ttUSNUtoaI) (:text |template) (:type :leaf)
                                          |j $ {} (:at 1592578811380) (:by |B1y7Rc-Zz) (:id |vk3tenLts) (:text |:slots) (:type :leaf)
                                          |l $ {} (:at 1637002090410) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637002091715) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                          |n $ {} (:at 1592578839247) (:by |B1y7Rc-Zz) (:id |pHzuzhHAW) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637150765496) (:by |B1y7Rc-Zz) (:id |pHzuzhHAWleaf) (:text |.sort-by) (:type :leaf)
                                              |j $ {} (:at 1637150766622) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1637150767956) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                  |L $ {} (:at 1637150768357) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1637153803094) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                                  |T $ {} (:at 1637150769953) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592578843951) (:by |B1y7Rc-Zz) (:id |hfrVi4Q40) (:text |:order) (:type :leaf)
                                                      |j $ {} (:at 1637153805720) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1637153806706) (:by |B1y7Rc-Zz) (:text |last) (:type :leaf)
                                                          |T $ {} (:at 1637153852935) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                          |r $ {} (:at 1592578818349) (:by |B1y7Rc-Zz) (:id |Zu_av0fFWc) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637002111308) (:by |B1y7Rc-Zz) (:id |hlGN0hOhg) (:text |map) (:type :leaf)
                                              |j $ {} (:at 1592578819282) (:by |B1y7Rc-Zz) (:id |SM5vREYplZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592578819595) (:by |B1y7Rc-Zz) (:id |dSWmOMfPk) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1592578819803) (:by |B1y7Rc-Zz) (:id |GkJhecJ7YN) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1637002122609) (:by |B1y7Rc-Zz) (:id |Ho1LF8t7W9) (:text |pair) (:type :leaf)
                                                  |r $ {} (:at 1637002113498) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1637002115737) (:by |B1y7Rc-Zz) (:text |let[]) (:type :leaf)
                                                      |L $ {} (:at 1637002116057) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1637002117088) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                                          |j $ {} (:at 1637002118290) (:by |B1y7Rc-Zz) (:text |slot) (:type :leaf)
                                                      |P $ {} (:at 1637002119482) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                                      |T $ {} (:at 1592578846064) (:by |B1y7Rc-Zz) (:id |2wiGaVjd0) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592578846799) (:by |B1y7Rc-Zz) (:id |2wiGaVjd0leaf) (:text |[]) (:type :leaf)
                                                          |j $ {} (:at 1592578847204) (:by |B1y7Rc-Zz) (:id |vrxYA7Bvpq) (:text |k) (:type :leaf)
                                                          |r $ {} (:at 1592579065754) (:by |B1y7Rc-Zz) (:id |sHZw1K0vDk) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592579067884) (:by |B1y7Rc-Zz) (:id |ezpRwIODO3) (:text |comp-slot) (:type :leaf)
                                                              |b $ {} (:at 1592579388938) (:by |B1y7Rc-Zz) (:id |o3TxLIzhau) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592579389393) (:by |B1y7Rc-Zz) (:id |RKAoj5yov) (:text |>>) (:type :leaf)
                                                                  |j $ {} (:at 1592579390380) (:by |B1y7Rc-Zz) (:id |HmmdxBU31g) (:text |states) (:type :leaf)
                                                                  |r $ {} (:at 1592579394843) (:by |B1y7Rc-Zz) (:id |WA7tcFVhVI) (:text |k) (:type :leaf)
                                                              |j $ {} (:at 1592579071237) (:by |B1y7Rc-Zz) (:id |8szsQmqL7) (:text |slot) (:type :leaf)
                                                              |r $ {} (:at 1592579073580) (:by |B1y7Rc-Zz) (:id |ZhBjiYk3iL) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592579073904) (:by |B1y7Rc-Zz) (:id |02YQuRELf) (:text |:id) (:type :leaf)
                                                                  |j $ {} (:at 1592579074998) (:by |B1y7Rc-Zz) (:id |sOImTH-D79) (:text |template) (:type :leaf)
                                                              |v $ {} (:at 1592580347248) (:by |B1y7Rc-Zz) (:id |iPGClrB7E) (:type :expr)
                                                                :data $ {}
                                                                  |D $ {} (:at 1592580348460) (:by |B1y7Rc-Zz) (:id |LcDsnzGK5C) (:text |:id) (:type :leaf)
                                                                  |T $ {} (:at 1592580331726) (:by |B1y7Rc-Zz) (:id |ZzRUJy-M3) (:text |user) (:type :leaf)
                              |r $ {} (:at 1592578625961) (:by |B1y7Rc-Zz) (:id |RS48r9JO7N) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592578627338) (:by |B1y7Rc-Zz) (:id |RS48r9JO7Nleaf) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1592578627549) (:by |B1y7Rc-Zz) (:id |wHbZUOVPOG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592578627829) (:by |B1y7Rc-Zz) (:id |q5ppv9cwzz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1592578628072) (:by |B1y7Rc-Zz) (:id |kGdaY_vfH) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592578629845) (:by |B1y7Rc-Zz) (:id |noG1EtUKDo) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1592578630076) (:by |B1y7Rc-Zz) (:id |9ongZx2Q5) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592578630987) (:by |B1y7Rc-Zz) (:id |bQYnDEOW_K) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1592578631215) (:by |B1y7Rc-Zz) (:id |JwFqA9f4zN) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592578632781) (:by |B1y7Rc-Zz) (:id |gLP5vc0OY) (:text |:padding) (:type :leaf)
                                                  |j $ {} (:at 1592578633078) (:by |B1y7Rc-Zz) (:id |04LLHMaXWl) (:text |16) (:type :leaf)
                                              |r $ {} (:at 1592578642840) (:by |B1y7Rc-Zz) (:id |RmcUR9Bhmy) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592578645019) (:by |B1y7Rc-Zz) (:id |RmcUR9Bhmyleaf) (:text |:font-family) (:type :leaf)
                                                  |j $ {} (:at 1592578648221) (:by |B1y7Rc-Zz) (:id |IRZY_XGxK) (:text |ui/font-fancy) (:type :leaf)
                                              |v $ {} (:at 1592578649065) (:by |B1y7Rc-Zz) (:id |CB_zAIEhm) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592578651602) (:by |B1y7Rc-Zz) (:id |CB_zAIEhmleaf) (:text |:font-weight) (:type :leaf)
                                                  |j $ {} (:at 1592578652423) (:by |B1y7Rc-Zz) (:id |0cnK_3qf6y) (:text |300) (:type :leaf)
                                  |r $ {} (:at 1592578634379) (:by |B1y7Rc-Zz) (:id |JkYwLKsU6P) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592578634831) (:by |B1y7Rc-Zz) (:id |JkYwLKsU6Pleaf) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1592631977880) (:by |B1y7Rc-Zz) (:id |a6JinzFcCS) (:text "|\"没有选择模板, 或者模板已不存在") (:type :leaf)
          |pattern-any $ {} (:at 1637150331139) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637150331139) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1637150331139) (:by |B1y7Rc-Zz) (:text |pattern-any) (:type :leaf)
              |r $ {} (:at 1637150331139) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637150335645) (:by |B1y7Rc-Zz) (:text |new) (:type :leaf)
                  |j $ {} (:at 1637150339910) (:by |B1y7Rc-Zz) (:text |js/RegExp) (:type :leaf)
                  |r $ {} (:at 1637150341480) (:by |B1y7Rc-Zz) (:text "|\".") (:type :leaf)
                  |v $ {} (:at 1637150342848) (:by |B1y7Rc-Zz) (:text "|\"g") (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |BkUXGcUegABW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |S1DXG98elCSb) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |HkO7fcLel0SZ) (:text |app.comp.workspace) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |S1HVf5UxlRHZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HJLNzq8glABb) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |BywNMcUleAHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk_4zqLggASb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1637150222753) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkcEM9IgxCSZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJsNzqLleASW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |ry3NM5IegRSW) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkTNfcLeeRBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |HkCNz98el0Bb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |HJySMq8xgRSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547394445) (:by |root) (:id |HkeBG5Lgl0SW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkWrzqIxx0B-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |S1GrG5LegAHZ) (:text |ui) (:type :leaf)
                |w $ {} (:at 1523120376505) (:by |root) (:id |BkxlWtdUjM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1523120376949) (:by |root) (:id |BkxlWtdUjMleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120379036) (:by |root) (:id |Sk--WFuIoG) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1523120382218) (:by |root) (:id |By4XbFu8oG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1523120382545) (:by |root) (:id |r1DWtdUjM) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1523120382719) (:by |root) (:id |SJEUbFOLjG) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120383255) (:by |root) (:id |BkGPZKu8oM) (:text |=<) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |SkVQg5h1z) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |Bk2XMq8lgCHZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540962179719) (:by |root) (:id |HJp7zc8xxArZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1AmGcLexRH-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyJNG5IexArb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rkxNGqLxg0rZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BkbEz9LegRr-) (:text |defcomp) (:type :leaf)
                        |l $ {} (:at 1592498898791) (:by |B1y7Rc-Zz) (:id |8TsVRF2zSJ) (:text |>>) (:type :leaf)
                        |n $ {} (:at 1592495137330) (:by |B1y7Rc-Zz) (:id |VvYb2o146V) (:text |list->) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |BJM4fcLlxCrb) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SyQ4McIex0HZ) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HkNEM9Lee0HZ) (:text |div) (:type :leaf)
                        |y $ {} (:at 1592579265517) (:by |B1y7Rc-Zz) (:id |2AJYHvz4Qt) (:text |a) (:type :leaf)
                        |yT $ {} (:at 1592581401540) (:by |B1y7Rc-Zz) (:id |wtMYXKX8a) (:text |button) (:type :leaf)
                |y $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |3JW2PGwjK4) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |3Q4lXqy0N7) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |Y_HhVDj3zn) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1536561758845) (:by |B1y7Rc-Zz) (:id |D0d_mzNKRn) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1536561761903) (:by |B1y7Rc-Zz) (:id |sJXt922sWs) (:text |config) (:type :leaf)
                |yT $ {} (:at 1592498821520) (:by |B1y7Rc-Zz) (:id |XCUWEbD9-9) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592498821520) (:by |B1y7Rc-Zz) (:id |JOjsVZzY4g) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592498821520) (:by |B1y7Rc-Zz) (:id |3oor_QZq_x) (:text |app.comp.templates) (:type :leaf)
                    |r $ {} (:at 1592498821520) (:by |B1y7Rc-Zz) (:id |aoLvwCZpe6) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1592498821520) (:by |B1y7Rc-Zz) (:id |fWeY0QWOBG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1592498821520) (:by |B1y7Rc-Zz) (:id |fqGzYV0ftB) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1592498868900) (:by |B1y7Rc-Zz) (:id |4AOaWNIpRc) (:text |comp-templates) (:type :leaf)
                        |r $ {} (:at 1592578707989) (:by |B1y7Rc-Zz) (:id |8qwmUxtrNT) (:text |comp-template-preview) (:type :leaf)
                |yj $ {} (:at 1592579303636) (:by |B1y7Rc-Zz) (:id |TeFPR7OSSa) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592579303904) (:by |B1y7Rc-Zz) (:id |TeFPR7OSSaleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592579307031) (:by |B1y7Rc-Zz) (:id |iNRg56seYA) (:text |respo-alerts.core) (:type :leaf)
                    |r $ {} (:at 1592579307783) (:by |B1y7Rc-Zz) (:id |Jo5ecyaWI) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1592579307964) (:by |B1y7Rc-Zz) (:id |7HaFJGBnRc) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1592579308151) (:by |B1y7Rc-Zz) (:id |SJVn6dbwGb) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1592579311168) (:by |B1y7Rc-Zz) (:id |wQQfdyLh3b) (:text |use-prompt) (:type :leaf)
                |yv $ {} (:at 1592583269997) (:by |B1y7Rc-Zz) (:id |1k75b0rrX3) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592583270382) (:by |B1y7Rc-Zz) (:id |1k75b0rrX3leaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592583272566) (:by |B1y7Rc-Zz) (:id |NqACUrnIqp) (:text |app.comp) (:type :leaf)
                    |r $ {} (:at 1592583273342) (:by |B1y7Rc-Zz) (:id |eo5yyO-3-n) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1592583273508) (:by |B1y7Rc-Zz) (:id |uyMyuVHIS5) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1592583274600) (:by |B1y7Rc-Zz) (:id |9ugZeNgdGq) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1592583276670) (:by |B1y7Rc-Zz) (:id |nG34mqmyVJ) (:text |comp-tabs) (:type :leaf)
                        |r $ {} (:at 1592583368098) (:by |B1y7Rc-Zz) (:id |q-t-2s_zqp) (:text |comp-placeholder) (:type :leaf)
                |yx $ {} (:at 1592584857677) (:by |B1y7Rc-Zz) (:id |f19ZB5aUBF) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592584857977) (:by |B1y7Rc-Zz) (:id |f19ZB5aUBFleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592584860633) (:by |B1y7Rc-Zz) (:id |319OGQaOW) (:text |feather.core) (:type :leaf)
                    |r $ {} (:at 1592584862964) (:by |B1y7Rc-Zz) (:id |macI7Eoa2W) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1592584863156) (:by |B1y7Rc-Zz) (:id |J8dcC6RTR) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1592584863373) (:by |B1y7Rc-Zz) (:id |psG0eZy-OF) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1592584865637) (:by |B1y7Rc-Zz) (:id |bPd3JME63z) (:text |comp-icon) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |SJ1Uz9LeeAB-) (:type :expr)
          :data $ {}
      |app.config $ {}
        :defs $ {}
          |dev? $ {} (:at 1521911283590) (:by |root) (:id |rJe2eIb4qG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521911286581) (:by |root) (:id |SkZ2x8-45f) (:text |def) (:type :leaf)
              |j $ {} (:at 1521911283590) (:by |root) (:id |SJzhl8WEcf) (:text |dev?) (:type :leaf)
              |r $ {} (:at 1637149470763) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1637149471194) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                  |L $ {} (:at 1637149472296) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                  |T $ {} (:at 1637149467617) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637149469287) (:by |B1y7Rc-Zz) (:text |get-env) (:type :leaf)
                      |j $ {} (:at 1637149470258) (:by |B1y7Rc-Zz) (:text "|\"mode") (:type :leaf)
                      |n $ {} (:at 1658772522859) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
          |site $ {} (:at 1500541255553) (:by nil) (:id |ryy9lUWg0BW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Syx9g8-l0B-) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |Hy-9x8beASZ) (:text |site) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ByG9eLZlAB-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1Q5x8Zl0Hb) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |H1w9gIblRHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rydqx8blRHW) (:text |:port) (:type :leaf)
                      |j $ {} (:at 1592493327873) (:by |B1y7Rc-Zz) (:id |rJF9g8-gCHZ) (:text |11023) (:type :leaf)
                  |t $ {} (:at 1527867502467) (:by |root) (:id |BkeUud1ye7) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527867504737) (:by |root) (:id |BkeUud1ye7leaf) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1592493333666) (:by |B1y7Rc-Zz) (:id |H1zKduykx7) (:text "|\"Patlepat") (:type :leaf)
                  |u $ {} (:at 1527867511986) (:by |root) (:id |r1gxKOykeQ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527867512819) (:by |root) (:id |r1gxKOykeQleaf) (:text |:icon) (:type :leaf)
                      |j $ {} (:at 1592493348394) (:by |B1y7Rc-Zz) (:id |B1SY_yJx7) (:text "|\"http://cdn.tiye.me/logo/topix.png") (:type :leaf)
                  |yr $ {} (:at 1535565550489) (:by |B1y7Rc-Zz) (:id |fLHGwxYEcw) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535565552318) (:by |B1y7Rc-Zz) (:id |fLHGwxYEcwleaf) (:text |:theme) (:type :leaf)
                      |j $ {} (:at 1535565554474) (:by |B1y7Rc-Zz) (:id |iZkrTQHtV) (:text "|\"#eeeeff") (:type :leaf)
                  |yv $ {} (:at 1544855275779) (:by |B1y7Rc-Zz) (:id |p3x2NvQE8A) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544855275779) (:by |B1y7Rc-Zz) (:id |uZPBtv98eu) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1592493356435) (:by |B1y7Rc-Zz) (:id |ADQo0wpedu) (:text "|\"patlepat") (:type :leaf)
                  |yx $ {} (:at 1544855286260) (:by |B1y7Rc-Zz) (:id |FdTJPwf8BB) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544855289453) (:by |B1y7Rc-Zz) (:id |FdTJPwf8BBleaf) (:text |:storage-file) (:type :leaf)
                      |j $ {} (:at 1637153455153) (:by |B1y7Rc-Zz) (:id |LoPUWHpqD7) (:text "|\"storage.cirru") (:type :leaf)
          |slot-matcher $ {} (:at 1592499548689) (:by |B1y7Rc-Zz) (:id |XmFNO6vSTK) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592499551104) (:by |B1y7Rc-Zz) (:id |0_zSdVVIZy) (:text |def) (:type :leaf)
              |j $ {} (:at 1592499548689) (:by |B1y7Rc-Zz) (:id |M5oXsoqpav) (:text |slot-matcher) (:type :leaf)
              |r $ {} (:at 1637150822520) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1637150824411) (:by |B1y7Rc-Zz) (:text |new) (:type :leaf)
                  |L $ {} (:at 1637150826526) (:by |B1y7Rc-Zz) (:text |js/RegExp) (:type :leaf)
                  |T $ {} (:at 1637158154314) (:by |B1y7Rc-Zz) (:id |NPr_7Gd9wd) (:text |slot-pattern) (:type :leaf)
          |slot-pattern $ {} (:at 1637158155163) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637158155163) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1637158155163) (:by |B1y7Rc-Zz) (:text |slot-pattern) (:type :leaf)
              |r $ {} (:at 1637158156594) (:by |B1y7Rc-Zz) (:text "|\"\\{[\\w\\s\\u4e00-\\u9fa5]+\\}") (:type :leaf)
        :ns $ {} (:at 1527788708227) (:by |root) (:id |HJghs43Tk7) (:type :expr)
          :data $ {}
            |T $ {} (:at 1527788708227) (:by |root) (:id |HJb3jEn6kX) (:text |ns) (:type :leaf)
            |j $ {} (:at 1527788708227) (:by |root) (:id |BJfhoN3pym) (:text |app.config) (:type :leaf)
        :proc $ {} (:at 1527788708227) (:by |root) (:id |ByX2iV3p1m) (:type :expr)
          :data $ {}
      |app.schema $ {}
        :defs $ {}
          |card $ {} (:at 1592493721463) (:by |B1y7Rc-Zz) (:id |4ppboKuFJD) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592493721463) (:by |B1y7Rc-Zz) (:id |BPGNJ2N2mr) (:text |def) (:type :leaf)
              |j $ {} (:at 1592493721463) (:by |B1y7Rc-Zz) (:id |19DhFF2E1v) (:text |card) (:type :leaf)
              |r $ {} (:at 1592493721463) (:by |B1y7Rc-Zz) (:id |XnFqv7SIOA) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592493722746) (:by |B1y7Rc-Zz) (:id |QNbh6wAOa) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1592493723161) (:by |B1y7Rc-Zz) (:id |9KhX3dBjA) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493723597) (:by |B1y7Rc-Zz) (:id |zQ8qYQE4GY) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1592493736459) (:by |B1y7Rc-Zz) (:id |0aJvW1wAZP) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1592493737139) (:by |B1y7Rc-Zz) (:id |q8eNWOPsR) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493738772) (:by |B1y7Rc-Zz) (:id |q8eNWOPsRleaf) (:text |:text) (:type :leaf)
                      |j $ {} (:at 1592493739128) (:by |B1y7Rc-Zz) (:id |BfDzusGTdC) (:text "|\"") (:type :leaf)
                  |v $ {} (:at 1592493739643) (:by |B1y7Rc-Zz) (:id |SNodLKbTK_) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493744701) (:by |B1y7Rc-Zz) (:id |SNodLKbTK_leaf) (:text |:author-id) (:type :leaf)
                      |j $ {} (:at 1592493745723) (:by |B1y7Rc-Zz) (:id |Kn_WdS9C0j) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1592579329821) (:by |B1y7Rc-Zz) (:id |YZqTLOSG0Y) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592579330620) (:by |B1y7Rc-Zz) (:id |YZqTLOSG0Yleaf) (:text |:time) (:type :leaf)
                      |j $ {} (:at 1592579331513) (:by |B1y7Rc-Zz) (:id |F9g34HOdW0) (:text |nil) (:type :leaf)
          |database $ {} (:at 1500541255553) (:by nil) (:id |S1c5lLblCBZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |BkjcxUbgAH-) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ryhqlIZxRSb) (:text |database) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |S169e8WeAH-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJCqxL-gASW) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |SJJolIbeArb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rkgjlUZxArb) (:text |:sessions) (:type :leaf)
                      |j $ {} (:at 1538886498428) (:by |root) (:id |RC6TbFtiBd) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1538886499001) (:by |root) (:id |u-mi7TeZu) (:text |do) (:type :leaf)
                          |L $ {} (:at 1538886500387) (:by |root) (:id |DUAFs31KF4) (:text |session) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |H1WsxIbeCSW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |r1GseIWx0S-) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |Symjg8bg0BZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HJ4ix8beAB-) (:text |:users) (:type :leaf)
                      |j $ {} (:at 1538886501540) (:by |root) (:id |Rx2kJHudR) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1538886502106) (:by |root) (:id |-QMTWQpKkD) (:text |do) (:type :leaf)
                          |L $ {} (:at 1538886502625) (:by |root) (:id |2DKXhsjt7P) (:text |user) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |r1BieLbe0rZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |BJUjl8bg0SW) (:text |{}) (:type :leaf)
                  |v $ {} (:at 1592493484987) (:by |B1y7Rc-Zz) (:id |lUxeiT_2OV) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493494859) (:by |B1y7Rc-Zz) (:id |lUxeiT_2OVleaf) (:text |:messages) (:type :leaf)
                      |j $ {} (:at 1592493506796) (:by |B1y7Rc-Zz) (:id |r39w-YBH_X) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1592493508049) (:by |B1y7Rc-Zz) (:id |yQjJv1AXhK) (:text |do) (:type :leaf)
                          |L $ {} (:at 1592493509233) (:by |B1y7Rc-Zz) (:id |IpXjk3B4X) (:text |message) (:type :leaf)
                          |T $ {} (:at 1592493495211) (:by |B1y7Rc-Zz) (:id |SCyOj57G4) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592493495596) (:by |B1y7Rc-Zz) (:id |cQBXUcf2nL) (:text |{}) (:type :leaf)
                  |x $ {} (:at 1592493496975) (:by |B1y7Rc-Zz) (:id |6JALoMy0k5) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493601406) (:by |B1y7Rc-Zz) (:id |6JALoMy0k5leaf) (:text |:templates) (:type :leaf)
                      |j $ {} (:at 1592493601704) (:by |B1y7Rc-Zz) (:id |gwAB5eeihB) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592493603869) (:by |B1y7Rc-Zz) (:id |FMQpI2EWQj) (:text |do) (:type :leaf)
                          |j $ {} (:at 1592493606201) (:by |B1y7Rc-Zz) (:id |t0WSlv8Zi) (:text |template) (:type :leaf)
                          |r $ {} (:at 1592493606491) (:by |B1y7Rc-Zz) (:id |9Dm0PtviQ1) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592493606782) (:by |B1y7Rc-Zz) (:id |j3WtWJFIhw) (:text |{}) (:type :leaf)
                  |y $ {} (:at 1592578315262) (:by |B1y7Rc-Zz) (:id |wGuCQhPb8) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592578317873) (:by |B1y7Rc-Zz) (:id |wGuCQhPb8leaf) (:text |:game) (:type :leaf)
                      |j $ {} (:at 1592578318212) (:by |B1y7Rc-Zz) (:id |WEDPc-qK5t) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592578319301) (:by |B1y7Rc-Zz) (:id |p9ZUqWcPm) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1592578319499) (:by |B1y7Rc-Zz) (:id |ocqUSDnwvQ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592578327440) (:by |B1y7Rc-Zz) (:id |lUhGDgRAFG) (:text |:template-id) (:type :leaf)
                              |j $ {} (:at 1592578325362) (:by |B1y7Rc-Zz) (:id |LRT3Xfl_U) (:text |nil) (:type :leaf)
          |message $ {} (:at 1592493512390) (:by |B1y7Rc-Zz) (:id |6f81yLec5q) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592493512390) (:by |B1y7Rc-Zz) (:id |K1vjzxBJYL) (:text |def) (:type :leaf)
              |j $ {} (:at 1592493512390) (:by |B1y7Rc-Zz) (:id |kxWLN1bhCh) (:text |message) (:type :leaf)
              |r $ {} (:at 1592493512390) (:by |B1y7Rc-Zz) (:id |fxmr1bwhrc) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592493514156) (:by |B1y7Rc-Zz) (:id |g3d5gQBjq) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1592493514422) (:by |B1y7Rc-Zz) (:id |XZKdmlVPrO) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493514822) (:by |B1y7Rc-Zz) (:id |oApmg0K8ZQ) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1592493516663) (:by |B1y7Rc-Zz) (:id |OZ-LGbTiZ) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1592493517070) (:by |B1y7Rc-Zz) (:id |UCyAIiyA4) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493752965) (:by |B1y7Rc-Zz) (:id |UCyAIiyA4leaf) (:text |:author-id) (:type :leaf)
                      |j $ {} (:at 1592493521103) (:by |B1y7Rc-Zz) (:id |3tgStnuu4m) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1592493522516) (:by |B1y7Rc-Zz) (:id |WRFvENwAtU) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493523896) (:by |B1y7Rc-Zz) (:id |WRFvENwAtUleaf) (:text |:text) (:type :leaf)
                      |j $ {} (:at 1592493529654) (:by |B1y7Rc-Zz) (:id |WeYKOvWjpO) (:text "|\"") (:type :leaf)
                  |x $ {} (:at 1592493538804) (:by |B1y7Rc-Zz) (:id |XAoM4vLE94) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493539962) (:by |B1y7Rc-Zz) (:id |XAoM4vLE94leaf) (:text |:type) (:type :leaf)
                      |j $ {} (:at 1592493563793) (:by |B1y7Rc-Zz) (:id |8vEmR1jh5) (:text |:message) (:type :leaf)
                  |y $ {} (:at 1592495935046) (:by |B1y7Rc-Zz) (:id |TnKIZE9V5U) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592495935683) (:by |B1y7Rc-Zz) (:id |TnKIZE9V5Uleaf) (:text |:time) (:type :leaf)
                      |j $ {} (:at 1592495936723) (:by |B1y7Rc-Zz) (:id |v80gszNUSZ) (:text |nil) (:type :leaf)
                  |yT $ {} (:at 1592630872328) (:by |B1y7Rc-Zz) (:id |7uuiLE6Di) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592630875396) (:by |B1y7Rc-Zz) (:id |7uuiLE6Dileaf) (:text |:blotted?) (:type :leaf)
                      |j $ {} (:at 1637150084652) (:by |B1y7Rc-Zz) (:text |false) (:type :leaf)
          |router $ {} (:at 1500541255553) (:by nil) (:id |BJaugUbeABb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SJR_lI-xRBZ) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |BJyFl8-l0B-) (:text |router) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |HyeKlU-gCHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |HJbYl8bxCr-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HyzFe8blRHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |BJQtlI-x0rW) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Bk4teL-lRS-) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |SyrYlL-lRBZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S1IYxUWlCBW) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |SJPKlIbeCBZ) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |Hy_tgU-eAHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rJtFx8ZeRr-) (:text |:data) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |SJ9KlUZeCSb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |HJstxIbeAS-) (:text |{}) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |Sk2YxIbg0Hb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |B1aYe8Wg0rW) (:text |:router) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |B1CteIWlCrZ) (:text |nil) (:type :leaf)
          |session $ {} (:at 1500541255553) (:by nil) (:id |HyiseLZlCB-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |S1hseLZlCBW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |rJpslIZxAHW) (:text |session) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |SkCilU-eCSZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |B11neI-gAH-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |Byx2e8-e0rZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rybnxUWe0BZ) (:text |:user-id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |ryf2xIbxAHZ) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |B1m2eIbxAHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S143xIblCrZ) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |S1ShgL-l0rZ) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |HJU2gU-lRrb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HyPheIZxCSZ) (:text |:nickname) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |B1_hx8ZeRrW) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |rkthlU-gCHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HycngIbeCrb) (:text |:router) (:type :leaf)
                      |j $ {} (:at 1538886507054) (:by |root) (:id |6GeGDz-Mrh) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1538886507646) (:by |root) (:id |sM5ZFH9Ojs) (:text |do) (:type :leaf)
                          |L $ {} (:at 1538886508475) (:by |root) (:id |Ot9nzPxAuB) (:text |router) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |HyjhgL-xArW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |Hy23gUZgRH-) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by nil) (:id |H1T2eUZeAH-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1C3lUWgCHb) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |HJkalLZxArW) (:text |:home) (:type :leaf)
                              |r $ {} (:at 1500541255553) (:by nil) (:id |HyxTeL-gRSb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |B1baxLZeCr-) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |SyGpe8WgAHZ) (:text |nil) (:type :leaf)
                              |v $ {} (:at 1500541255553) (:by nil) (:id |rk7TlUWl0SW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |Bk4pe8ZgCBZ) (:text |:router) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |rJB6l8-g0H-) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by nil) (:id |SyL6eIbgRr-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1529230759501) (:by |root) (:id |HyPTeIZx0SZ) (:text |:messages) (:type :leaf)
                      |j $ {} (:at 1529230760396) (:by |root) (:id |HJGlhSh7Z7) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529230760716) (:by |root) (:id |SyWg2HnQZQ) (:text |{}) (:type :leaf)
          |slot $ {} (:at 1592493655670) (:by |B1y7Rc-Zz) (:id |9lqW_dCSOl) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592493655670) (:by |B1y7Rc-Zz) (:id |T1YrMzWcLV) (:text |def) (:type :leaf)
              |j $ {} (:at 1592493655670) (:by |B1y7Rc-Zz) (:id |55sheVF_RK) (:text |slot) (:type :leaf)
              |r $ {} (:at 1592493655670) (:by |B1y7Rc-Zz) (:id |lK-viIeCzv) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592493656704) (:by |B1y7Rc-Zz) (:id |brqe4NtAN) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1592493657245) (:by |B1y7Rc-Zz) (:id |ktvMY7Krx) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493658939) (:by |B1y7Rc-Zz) (:id |HSog6ZXUXR) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1592493659777) (:by |B1y7Rc-Zz) (:id |e-Gp9Heuye) (:text |nil) (:type :leaf)
                  |n $ {} (:at 1592499446388) (:by |B1y7Rc-Zz) (:id |OV0kVKbHtO) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592499448152) (:by |B1y7Rc-Zz) (:id |OV0kVKbHtOleaf) (:text |:order) (:type :leaf)
                      |j $ {} (:at 1592499448603) (:by |B1y7Rc-Zz) (:id |G1NuSnc0w_) (:text |0) (:type :leaf)
                  |p $ {} (:at 1592500047288) (:by |B1y7Rc-Zz) (:id |0C_2t9PwV6) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592500049627) (:by |B1y7Rc-Zz) (:id |0C_2t9PwV6leaf) (:text |:text) (:type :leaf)
                      |j $ {} (:at 1592500055053) (:by |B1y7Rc-Zz) (:id |5-OyMYT0-) (:text "|\"") (:type :leaf)
                  |r $ {} (:at 1592493660466) (:by |B1y7Rc-Zz) (:id |C2ZWcJri2-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493707827) (:by |B1y7Rc-Zz) (:id |C2ZWcJri2-leaf) (:text |:cards) (:type :leaf)
                      |j $ {} (:at 1592493719576) (:by |B1y7Rc-Zz) (:id |TSG0edvzH) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1592493720147) (:by |B1y7Rc-Zz) (:id |RMgDViGLAG) (:text |do) (:type :leaf)
                          |L $ {} (:at 1592493721064) (:by |B1y7Rc-Zz) (:id |FDrC4DupdK) (:text |card) (:type :leaf)
                          |T $ {} (:at 1592493708186) (:by |B1y7Rc-Zz) (:id |whtsl2uCn) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592493708600) (:by |B1y7Rc-Zz) (:id |lihPyMog5m) (:text |{}) (:type :leaf)
          |template $ {} (:at 1592493607844) (:by |B1y7Rc-Zz) (:id |G7xbGDdJz0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592493607844) (:by |B1y7Rc-Zz) (:id |t_U8lBJ7SK) (:text |def) (:type :leaf)
              |j $ {} (:at 1592493607844) (:by |B1y7Rc-Zz) (:id |vb5u38FvAM) (:text |template) (:type :leaf)
              |r $ {} (:at 1592493607844) (:by |B1y7Rc-Zz) (:id |WTAKBZz8ws) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592493609049) (:by |B1y7Rc-Zz) (:id |WKpfT-QJX) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1592493609352) (:by |B1y7Rc-Zz) (:id |qcbqmEE7Fj) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493610494) (:by |B1y7Rc-Zz) (:id |LFS96IeOF) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1592493611672) (:by |B1y7Rc-Zz) (:id |xhOJDE7w3x) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1592493612103) (:by |B1y7Rc-Zz) (:id |7DY51V1fK) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493612906) (:by |B1y7Rc-Zz) (:id |7DY51V1fKleaf) (:text |:text) (:type :leaf)
                      |j $ {} (:at 1592493613215) (:by |B1y7Rc-Zz) (:id |a3E60dUYzf) (:text "|\"") (:type :leaf)
                  |t $ {} (:at 1592499504127) (:by |B1y7Rc-Zz) (:id |xBiBC5PN8) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592499508349) (:by |B1y7Rc-Zz) (:id |xBiBC5PN8leaf) (:text |:pieces) (:type :leaf)
                      |j $ {} (:at 1592499508940) (:by |B1y7Rc-Zz) (:id |iWN4qzBrQt) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592499509133) (:by |B1y7Rc-Zz) (:id |tpWjAKPtac) (:text |[]) (:type :leaf)
                  |v $ {} (:at 1592493613752) (:by |B1y7Rc-Zz) (:id |S-pVxW9KEo) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592493627935) (:by |B1y7Rc-Zz) (:id |S-pVxW9KEoleaf) (:text |:slots) (:type :leaf)
                      |j $ {} (:at 1592493629408) (:by |B1y7Rc-Zz) (:id |Ln-CVrU_3e) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1592493650752) (:by |B1y7Rc-Zz) (:id |kk_MIFiqN) (:text |do) (:type :leaf)
                          |L $ {} (:at 1592493655312) (:by |B1y7Rc-Zz) (:id |Mm3ubRzx5) (:text |slot) (:type :leaf)
                          |T $ {} (:at 1592499923162) (:by |B1y7Rc-Zz) (:id |6ImGThcqR) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592493648623) (:by |B1y7Rc-Zz) (:id |nfe09c-Ex) (:text |{}) (:type :leaf)
          |user $ {} (:at 1500541255553) (:by nil) (:id |BJKwxIbx0rZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Hy9weU-x0SW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |r1jDx8bx0SZ) (:text |user) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rkhPxUWx0r-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rkpPl8ZlRrW) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HkAPxIZxRB-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |ryJul8beCrb) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HJlOxIWgRBW) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |HkbdlLZlRSW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |r1M_gIWxCSZ) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |rk7_eIbxRB-) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |B14ug8bg0rb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HySOgLWeASW) (:text |:nickname) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |ByIue8Ze0B-) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |H1PulIbx0Hb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |SyudlUWeCBW) (:text |:avatar) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |rJYdlLbe0BW) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by nil) (:id |HJcOxIbgAHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S1jOeUbxArW) (:text |:password) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Hynug8bxCSZ) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |B1Swe8bxAr-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |Bk8PgIbeCr-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |SyDDxIWeRrb) (:text |app.schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |SJuPg8bxRH-) (:type :expr)
          :data $ {}
      |app.server $ {}
        :defs $ {}
          |*client-caches $ {} (:at 1500541255553) (:by nil) (:id |S1VrmlLWxAr-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637001493171) (:by |B1y7Rc-Zz) (:id |HyrB7gIWeCrb) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |S1UH7xLWl0BZ) (:text |*client-caches) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rkFH7l8bl0Bb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rk5SXeI-x0BW) (:text |{}) (:type :leaf)
          |*initial-db $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |*initial-db) (:type :leaf)
              |r $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |path-exists?) (:type :leaf)
                      |j $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |w-log) (:type :leaf)
                          |j $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                  |r $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |j $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text "|\"Found local EDN data") (:type :leaf)
                      |r $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                          |j $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |schema/database) (:type :leaf)
                          |r $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                              |j $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |read-file) (:type :leaf)
                                  |j $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                  |v $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |j $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text "|\"Found no data") (:type :leaf)
                      |r $ {} (:at 1637149855678) (:by |B1y7Rc-Zz) (:text |schema/database) (:type :leaf)
          |*reader-reel $ {} (:at 1500541255553) (:by nil) (:id |SkrNzg8-eAHb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637001502519) (:by |B1y7Rc-Zz) (:id |HkU4MeUWgRrb) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |r1wVflUZx0BW) (:text |*reader-reel) (:type :leaf)
              |r $ {} (:at 1507829929366) (:by |root) (:id |ryzvXS0h3b) (:text |@*reel) (:type :leaf)
          |*reel $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
              |r $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                  |j $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:text |reel-schema) (:type :leaf)
                  |r $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:text |:base) (:type :leaf)
                          |j $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
                      |r $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                          |j $ {} (:at 1637149935258) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
          |dispatch! $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
              |v $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                          |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |generate-id!) (:type :leaf)
                      |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                          |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                              |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                  |r $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text "|\"Dispatch!") (:type :leaf)
                          |r $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                              |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |v $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                          |x $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                          |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |r $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |:effect/persist) (:type :leaf)
                      |r $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
                      |v $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |reel-reducer) (:type :leaf)
                              |j $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                              |r $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
                              |v $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                              |x $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                              |y $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |yT $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                              |yj $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                              |yr $ {} (:at 1637149873561) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
          |get-backup-path! $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |get-backup-path!) (:type :leaf)
              |r $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                          |j $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |.extract) (:type :leaf)
                              |j $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                  |r $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |join-path) (:type :leaf)
                      |j $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text "|\"backups") (:type :leaf)
                      |v $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |:month) (:type :leaf)
                              |j $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                      |x $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |:day) (:type :leaf)
                              |j $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                          |r $ {} (:at 1637001552088) (:by |B1y7Rc-Zz) (:text "|\"-snapshot.cirru") (:type :leaf)
          |main! $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |main!) (:type :leaf)
              |r $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
              |x $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                          |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |get-env) (:type :leaf)
                              |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text "|\"port") (:type :leaf)
                      |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                          |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                              |r $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |parse-float) (:type :leaf)
                                  |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                              |v $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                                  |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |run-server!) (:type :leaf)
                      |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                  |v $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text "|\"Server started on port:") (:type :leaf)
                          |r $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
              |y $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                  |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                      |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text "|\"init it before doing multi-threading") (:type :leaf)
                  |r $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |identity) (:type :leaf)
                      |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
              |yT $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                  |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |200) (:type :leaf)
                  |r $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |r $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |render-loop!) (:type :leaf)
              |yj $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                  |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |600000) (:type :leaf)
                  |r $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |r $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |yr $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |on-control-c) (:type :leaf)
                  |j $ {} (:at 1637001605278) (:by |B1y7Rc-Zz) (:text |on-exit!) (:type :leaf)
          |on-exit! $ {} (:at 1637001617291) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637001617291) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637001617291) (:by |B1y7Rc-Zz) (:text |on-exit!) (:type :leaf)
              |r $ {} (:at 1637001617291) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1637001617291) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001617291) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |x $ {} (:at 1637001617291) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001617291) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                  |j $ {} (:at 1637001617291) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |r $ {} (:at 1637001617291) (:by |B1y7Rc-Zz) (:text "|\"exit code is...") (:type :leaf)
              |y $ {} (:at 1637001617291) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001617291) (:by |B1y7Rc-Zz) (:text |quit!) (:type :leaf)
                  |j $ {} (:at 1637001617291) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
          |persist-db! $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |r $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
                          |j $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                              |j $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                  |j $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                                      |j $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                                  |r $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                  |v $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |storage-path) (:type :leaf)
                          |j $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                      |r $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |backup-path) (:type :leaf)
                          |j $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |get-backup-path!) (:type :leaf)
                  |r $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                      |j $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |storage-path) (:type :leaf)
                      |r $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
                  |v $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                      |j $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |backup-path) (:type :leaf)
                      |r $ {} (:at 1637149899417) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
          |reload! $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text "|\"Code updated..") (:type :leaf)
              |x $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                      |j $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                  |r $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |raise) (:type :leaf)
                      |j $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text "|\"reloading only happens in dev mode") (:type :leaf)
              |y $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!) (:type :leaf)
              |yT $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |refresh-reel) (:type :leaf)
                      |j $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                      |r $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
                      |v $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
              |yj $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
                  |j $ {} (:at 1637001626514) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
          |render-loop! $ {} (:at 1500541255553) (:by nil) (:id |ry9MzxLZxAHZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |HksGfeIWx0Bb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |SJhGfeIWeAHZ) (:text |render-loop!) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |H1pzfgUZxRr-) (:type :expr)
                :data $ {}
              |v $ {} (:at 1500541255553) (:by nil) (:id |BJCGfg8ZgRrb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1544811365548) (:by |B1y7Rc-Zz) (:id |Byy7MeU-e0Bb) (:text |when) (:type :leaf)
                  |j $ {} (:at 1507829942161) (:by |root) (:id |BJlR2dXahb) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1507829942884) (:by |root) (:id |Skb0n_Xpnb) (:text |not) (:type :leaf)
                      |T $ {} (:at 1500541255553) (:by nil) (:id |rylQGeLbgArW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507829941197) (:by |root) (:id |rJb7zeUbx0Bb) (:text |identical?) (:type :leaf)
                          |j $ {} (:at 1507830005566) (:by |root) (:id |HkzmGlIbe0SZ) (:text |@*reader-reel) (:type :leaf)
                          |r $ {} (:at 1507808466061) (:by |root) (:id |BJfD04An2W) (:text |@*reel) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |HJ8QGlIWxRrZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |Byw7zlIWxRSZ) (:text |reset!) (:type :leaf)
                      |j $ {} (:at 1507829950396) (:by |root) (:id |S1OmzeLZeRS-) (:text |*reader-reel) (:type :leaf)
                      |r $ {} (:at 1507808466061) (:by |root) (:id |BJfD04An2W) (:text |@*reel) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |HkCQfg8-g0HZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507806914566) (:by |root) (:id |H11NMgLZx0SZ) (:text |sync-clients!) (:type :leaf)
                      |j $ {} (:at 1507829954052) (:by |root) (:id |H1e4fgLZeRH-) (:text |@*reader-reel) (:type :leaf)
          |run-server! $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |run-server!) (:type :leaf)
              |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
              |v $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |wss-serve!) (:type :leaf)
                  |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |&{}) (:type :leaf)
                      |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                      |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                  |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                      |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |key-match) (:type :leaf)
                          |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                          |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |:connect) (:type :leaf)
                                  |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |:session/connect) (:type :leaf)
                                      |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |v $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text "|\"New client.") (:type :leaf)
                          |v $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |:message) (:type :leaf)
                                  |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |msg) (:type :leaf)
                              |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                                  |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                          |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                                              |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |msg) (:type :leaf)
                                  |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                                      |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                                          |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                      |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                          |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text "|\"unknown action:") (:type :leaf)
                                          |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                      |v $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                                          |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                              |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                                                  |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                              |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                                  |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                              |v $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                          |x $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |:disconnect) (:type :leaf)
                                  |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text "|\"Client closed!") (:type :leaf)
                                  |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |:session/disconnect) (:type :leaf)
                                      |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |v $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                          |y $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |_) (:type :leaf)
                              |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                  |j $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text "|\"unknown data:") (:type :leaf)
                                  |r $ {} (:at 1637001647818) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
          |storage-file $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
              |r $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text |empty?) (:type :leaf)
                      |j $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                  |r $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                      |j $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                          |j $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |v $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                      |j $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text "|\"/") (:type :leaf)
                      |v $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                          |j $ {} (:at 1637001659562) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
          |sync-clients! $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
              |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
              |v $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |wss-each!) (:type :leaf)
                  |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                      |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                          |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                  |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                                      |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
                              |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                                  |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |:records) (:type :leaf)
                                      |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
                              |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                  |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |get-in) (:type :leaf)
                                      |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                      |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                          |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |v $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |old-store) (:type :leaf)
                                  |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                      |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |get) (:type :leaf)
                                          |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |@*client-caches) (:type :leaf)
                                          |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                              |x $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
                                  |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |twig-container) (:type :leaf)
                                      |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                      |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |v $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                              |y $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |diff-twig) (:type :leaf)
                                      |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |old-store) (:type :leaf)
                                      |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
                                      |v $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |:key) (:type :leaf)
                                              |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                          |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                              |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                              |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                              |v $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                  |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text "|\"Changes for") (:type :leaf)
                                  |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text "|\":") (:type :leaf)
                                  |x $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |y $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                          |v $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |not=) (:type :leaf)
                                  |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |wss-send!) (:type :leaf)
                                      |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                                          |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                                                  |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |:patch) (:type :leaf)
                                              |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                                  |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |swap!) (:type :leaf)
                                      |j $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |*client-caches) (:type :leaf)
                                      |r $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                      |v $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |x $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
              |x $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001672114) (:by |B1y7Rc-Zz) (:text |new-twig-loop!) (:type :leaf)
        :ns $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |app.server) (:type :leaf)
            |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:require) (:type :leaf)
                |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |app.schema) (:type :leaf)
                    |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |schema) (:type :leaf)
                |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |app.updater) (:type :leaf)
                    |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
                |v $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |cumulo-reel.core) (:type :leaf)
                    |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |reel-reducer) (:type :leaf)
                        |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |refresh-reel) (:type :leaf)
                        |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |reel-schema) (:type :leaf)
                |x $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |app.config) (:type :leaf)
                    |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |config) (:type :leaf)
                |y $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |app.twig.container) (:type :leaf)
                    |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |twig-container) (:type :leaf)
                |yT $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |recollect.diff) (:type :leaf)
                    |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |diff-twig) (:type :leaf)
                |yj $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |wss.core) (:type :leaf)
                    |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |wss-serve!) (:type :leaf)
                        |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |wss-send!) (:type :leaf)
                        |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |wss-each!) (:type :leaf)
                |yr $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |recollect.twig) (:type :leaf)
                    |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |new-twig-loop!) (:type :leaf)
                        |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!) (:type :leaf)
                |yv $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |app.$meta) (:type :leaf)
                    |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                |yx $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |calcit.std.fs) (:type :leaf)
                    |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |path-exists?) (:type :leaf)
                        |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                |yy $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |calcit.std.time) (:type :leaf)
                    |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                |yyT $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |calcit.std.date) (:type :leaf)
                    |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |Date) (:type :leaf)
                        |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                |yyj $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |calcit.std.path) (:type :leaf)
                    |j $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1637001687681) (:by |B1y7Rc-Zz) (:text |join-path) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |rJ5I-xLblCH-) (:type :expr)
          :data $ {}
      |app.twig.container $ {}
        :defs $ {}
          |twig-container $ {} (:at 1500541255553) (:by nil) (:id |ByY-eUZeAr-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637149372861) (:by |B1y7Rc-Zz) (:id |BJ5bxLZlRBZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |Hkibe8Wl0S-) (:text |twig-container) (:type :leaf)
              |n $ {} (:at 1500541255553) (:by nil) (:id |Sk-PI_qp1z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Hkzzg8WlRBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |ByXzxL-lCH-) (:text |session) (:type :leaf)
                  |r $ {} (:at 1507828952210) (:by |root) (:id |rklw6NmanW) (:text |records) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ryl38_qaJf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |ByHzl8bgCSZ) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HyUflIWgRrZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by nil) (:id |HywGl8-gCHW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |H1_MlIbg0SW) (:text |logged-in?) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |B1FGxLWeRHW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |ry5fe8ZlRS-) (:text |some?) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by nil) (:id |BkiGlU-e0B-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |BJnGeLZlAHb) (:text |:user-id) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |HJTMlI-eAB-) (:text |session) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |rJ0GgLZlCS-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |BkkQeLZlCHW) (:text |router) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |SkemlIWxRBb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |SJWmlLWeRHZ) (:text |:router) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |HJzXlLWxAHZ) (:text |session) (:type :leaf)
                      |r $ {} (:at 1507830626848) (:by |root) (:id |ryowoQp2W) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507830630278) (:by |root) (:id |ryowoQp2Wleaf) (:text |base-data) (:type :leaf)
                          |j $ {} (:at 1507830631302) (:by |root) (:id |r1lyujmp3b) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507830631896) (:by |root) (:id |By1djQTnb) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1507830632113) (:by |root) (:id |ryGxdimT2-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830641027) (:by |root) (:id |Sy-guiXp2b) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1507830639219) (:by |root) (:id |ByBusQ6hW) (:text |logged-in?) (:type :leaf)
                              |n $ {} (:at 1507830674443) (:by |root) (:id |ByecqsQ6nW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830677551) (:by |root) (:id |ByecqsQ6nWleaf) (:text |:session) (:type :leaf)
                                  |j $ {} (:at 1507830679311) (:by |root) (:id |BJlA5oXpn-) (:text |session) (:type :leaf)
                              |v $ {} (:at 1507830649968) (:by |root) (:id |SyxMtsm62Z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830655148) (:by |root) (:id |SyxMtsm62Zleaf) (:text |:reel-length) (:type :leaf)
                                  |j $ {} (:at 1507830655987) (:by |root) (:id |B1xuKj7p3-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507830657551) (:by |root) (:id |S1dKjma2Z) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1507830658789) (:by |root) (:id |HkgcFsXT3b) (:text |records) (:type :leaf)
                      |v $ {} (:at 1592496460316) (:by |B1y7Rc-Zz) (:id |pmX7O7aiS) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592496464231) (:by |B1y7Rc-Zz) (:id |pmX7O7aiSleaf) (:text |users) (:type :leaf)
                          |j $ {} (:at 1592496465321) (:by |B1y7Rc-Zz) (:id |zRFha1CASV) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592496467335) (:by |B1y7Rc-Zz) (:id |WrjKDG_3HR) (:text |:users) (:type :leaf)
                              |j $ {} (:at 1592496468248) (:by |B1y7Rc-Zz) (:id |IZr5BQ39EC) (:text |db) (:type :leaf)
                  |r $ {} (:at 1507830661017) (:by |root) (:id |BkxpKj76h-) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1507830661999) (:by |root) (:id |H1W6KoQ6hZ) (:text |merge) (:type :leaf)
                      |L $ {} (:at 1507830664014) (:by |root) (:id |rJVCFjmp2b) (:text |base-data) (:type :leaf)
                      |T $ {} (:at 1500541255553) (:by nil) (:id |HJQmlU-e0rW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |rJVmgLZlAr-) (:text |if) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by |root) (:id |r1S7gUZlArb) (:text |logged-in?) (:type :leaf)
                          |r $ {} (:at 1500541255553) (:by nil) (:id |HJUQxIbx0rZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |rJPQl8ZgCHb) (:text |{}) (:type :leaf)
                              |v $ {} (:at 1500541255553) (:by nil) (:id |B107eU-lCHZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |Hy1VxUbeCS-) (:text |:user) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by nil) (:id |HJlNxUbx0r-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541255553) (:by |root) (:id |SyZVxIZeCS-) (:text |twig-user) (:type :leaf)
                                      |j $ {} (:at 1500541255553) (:by nil) (:id |HyG4lIZlRHW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541255553) (:by |root) (:id |HkXVeL-l0Sb) (:text |get-in) (:type :leaf)
                                          |j $ {} (:at 1500541255553) (:by |root) (:id |rJ4Nx8WeCrb) (:text |db) (:type :leaf)
                                          |r $ {} (:at 1500541255553) (:by nil) (:id |HkrVgLZg0B-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541255553) (:by |root) (:id |ByIEeLbxCHb) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1500541255553) (:by |root) (:id |H1v4xIWxArZ) (:text |:users) (:type :leaf)
                                              |r $ {} (:at 1500541255553) (:by nil) (:id |HJ_VxL-xRr-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541255553) (:by |root) (:id |rJYNgUbgCBb) (:text |:user-id) (:type :leaf)
                                                  |j $ {} (:at 1500541255553) (:by |root) (:id |ryqNeLZeCHb) (:text |session) (:type :leaf)
                              |x $ {} (:at 1500541255553) (:by nil) (:id |SJsEe8ZgCBZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |HJ2EeUWe0SZ) (:text |:router) (:type :leaf)
                                  |j $ {} (:at 1524070628251) (:by |root) (:id |ryh1FgBhM) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1524070634499) (:by |root) (:id |rJbWgKgBhz) (:text |assoc) (:type :leaf)
                                      |T $ {} (:at 1500541255553) (:by |root) (:id |BJaEl8ZxCS-) (:text |router) (:type :leaf)
                                      |j $ {} (:at 1524070635855) (:by |root) (:id |rygQeYlH3G) (:text |:data) (:type :leaf)
                                      |r $ {} (:at 1524070636122) (:by |root) (:id |r1VNlFlHnz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637149412183) (:by |B1y7Rc-Zz) (:id |BJ74eFlB2z) (:text |case-default) (:type :leaf)
                                          |j $ {} (:at 1524070641804) (:by |root) (:id |HybcgKxB2G) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524070642493) (:by |root) (:id |S1g9etlS2M) (:text |:name) (:type :leaf)
                                              |j $ {} (:at 1524070643351) (:by |root) (:id |HJilKgSnf) (:text |router) (:type :leaf)
                                          |l $ {} (:at 1637149413316) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637149413668) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |n $ {} (:at 1525108994160) (:by |root) (:id |BJxq-bAE6z) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525108995413) (:by |root) (:id |BJxq-bAE6zleaf) (:text |:home) (:type :leaf)
                                              |j $ {} (:at 1525108999855) (:by |root) (:id |BkgzZ0NaG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525109002003) (:by |root) (:id |Hyh-ZCETz) (:text |:pages) (:type :leaf)
                                                  |j $ {} (:at 1525109002404) (:by |root) (:id |BkWzG-CVpM) (:text |db) (:type :leaf)
                                          |r $ {} (:at 1524070643948) (:by |root) (:id |Bke3gKgB3z) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524070646898) (:by |root) (:id |Skb6etxBhG) (:text |:profile) (:type :leaf)
                                              |j $ {} (:at 1524070654495) (:by |root) (:id |ryLWFernz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524070662619) (:by |root) (:id |B1zJ-teBnM) (:text |twig-members) (:type :leaf)
                                                  |j $ {} (:at 1524070665615) (:by |root) (:id |B1MzFxBhz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524070670477) (:by |root) (:id |Bk-MYxShG) (:text |:sessions) (:type :leaf)
                                                      |j $ {} (:at 1524070672563) (:by |root) (:id |SyPMtxH2G) (:text |db) (:type :leaf)
                                                  |r $ {} (:at 1524070673171) (:by |root) (:id |HyWFMYxB3G) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524070674094) (:by |root) (:id |HyWFMYxB3Gleaf) (:text |:users) (:type :leaf)
                                                      |j $ {} (:at 1524070675166) (:by |root) (:id |HyVcztlS2f) (:text |db) (:type :leaf)
                              |y $ {} (:at 1523120222572) (:by |root) (:id |H1DPud8iG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1523120223864) (:by |root) (:id |H1DPud8iGleaf) (:text |:count) (:type :leaf)
                                  |j $ {} (:at 1523120229051) (:by |root) (:id |rygpP_OUif) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1523120230136) (:by |root) (:id |HkaDOd8iM) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1523120230346) (:by |root) (:id |SJrAwd_8oM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1523120232122) (:by |root) (:id |rJVAwd_8if) (:text |:sessions) (:type :leaf)
                                          |j $ {} (:at 1523120232500) (:by |root) (:id |BJreO_d8of) (:text |db) (:type :leaf)
                              |yT $ {} (:at 1524279105545) (:by |root) (:id |rycrDmO2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1533834715393) (:by |B1y7Rc-Zz) (:id |rycrDmO2fleaf) (:text |:color) (:type :leaf)
                                  |j $ {} (:at 1524279111422) (:by |root) (:id |Hyx1LP7d3z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001761275) (:by |B1y7Rc-Zz) (:id |ryJUwQd2f) (:text |rand-hex-color!) (:type :leaf)
                              |yj $ {} (:at 1592496429142) (:by |B1y7Rc-Zz) (:id |GRPO7V1o2) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592496430518) (:by |B1y7Rc-Zz) (:id |GRPO7V1o2leaf) (:text |:messages) (:type :leaf)
                                  |j $ {} (:at 1592496452108) (:by |B1y7Rc-Zz) (:id |S3F_hp64O) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1637001999033) (:by |B1y7Rc-Zz) (:id |0V5NwO0JX3) (:text |->) (:type :leaf)
                                      |T $ {} (:at 1592496431322) (:by |B1y7Rc-Zz) (:id |Qh4k-nJEEW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592496432695) (:by |B1y7Rc-Zz) (:id |IKhdxnx8Tu) (:text |:messages) (:type :leaf)
                                          |j $ {} (:at 1592496433090) (:by |B1y7Rc-Zz) (:id |hky-XOhUkp) (:text |db) (:type :leaf)
                                      |j $ {} (:at 1592496470740) (:by |B1y7Rc-Zz) (:id |WbvT7F3b4Z) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637002002457) (:by |B1y7Rc-Zz) (:id |WbvT7F3b4Zleaf) (:text |map-kv) (:type :leaf)
                                          |j $ {} (:at 1592496473633) (:by |B1y7Rc-Zz) (:id |qgKXiiW_fN) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592496473889) (:by |B1y7Rc-Zz) (:id |0K8Qmgf-R4) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1592496474682) (:by |B1y7Rc-Zz) (:id |7ADRR8g2N) (:type :expr)
                                                :data $ {}
                                                  |j $ {} (:at 1592496477239) (:by |B1y7Rc-Zz) (:id |6FUuh3dMZw) (:text |k) (:type :leaf)
                                                  |r $ {} (:at 1592496479173) (:by |B1y7Rc-Zz) (:id |HtSNEzU9uS) (:text |message) (:type :leaf)
                                              |r $ {} (:at 1592496481648) (:by |B1y7Rc-Zz) (:id |UWwfXcxnJM) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592496482007) (:by |B1y7Rc-Zz) (:id |UWwfXcxnJMleaf) (:text |[]) (:type :leaf)
                                                  |j $ {} (:at 1592496483024) (:by |B1y7Rc-Zz) (:id |ScAXIkUoA) (:text |k) (:type :leaf)
                                                  |r $ {} (:at 1592496488189) (:by |B1y7Rc-Zz) (:id |C_vKHyTRX) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592496490069) (:by |B1y7Rc-Zz) (:id |sEB0ZCqyKR) (:text |assoc) (:type :leaf)
                                                      |j $ {} (:at 1592496491386) (:by |B1y7Rc-Zz) (:id |WcljNHjSJp) (:text |message) (:type :leaf)
                                                      |r $ {} (:at 1592496492112) (:by |B1y7Rc-Zz) (:id |Ho7QOI8570) (:text |:user) (:type :leaf)
                                                      |v $ {} (:at 1592496549408) (:by |B1y7Rc-Zz) (:id |1PqHWJpKUZ) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1592496550128) (:by |B1y7Rc-Zz) (:id |t9lvHI0HzV) (:text |twig-user) (:type :leaf)
                                                          |T $ {} (:at 1592496492431) (:by |B1y7Rc-Zz) (:id |HvzcuHCdqO) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592496496729) (:by |B1y7Rc-Zz) (:id |sgENmLBW-F) (:text |get) (:type :leaf)
                                                              |j $ {} (:at 1592496497578) (:by |B1y7Rc-Zz) (:id |M5oJMBNNhZ) (:text |users) (:type :leaf)
                                                              |r $ {} (:at 1592496498599) (:by |B1y7Rc-Zz) (:id |RxNHE7SbO7) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1592496502609) (:by |B1y7Rc-Zz) (:id |dsqojBfSyR) (:text |:author-id) (:type :leaf)
                                                                  |j $ {} (:at 1592496619683) (:by |B1y7Rc-Zz) (:id |DsvE6i_yp) (:text |message) (:type :leaf)
                              |yr $ {} (:at 1592497420585) (:by |B1y7Rc-Zz) (:id |P4kOdJ6bgw) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592497425437) (:by |B1y7Rc-Zz) (:id |P4kOdJ6bgwleaf) (:text |:templates) (:type :leaf)
                                  |j $ {} (:at 1592497426325) (:by |B1y7Rc-Zz) (:id |8vv8iyTcI) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592497431583) (:by |B1y7Rc-Zz) (:id |JwWG6QcKwu) (:text |:templates) (:type :leaf)
                                      |j $ {} (:at 1592497431974) (:by |B1y7Rc-Zz) (:id |P4CVSwWvoi) (:text |db) (:type :leaf)
                              |yv $ {} (:at 1592578387450) (:by |B1y7Rc-Zz) (:id |Io38sTdbLT) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592578388987) (:by |B1y7Rc-Zz) (:id |Io38sTdbLTleaf) (:text |:game) (:type :leaf)
                                  |j $ {} (:at 1592578389299) (:by |B1y7Rc-Zz) (:id |armVmWGymw) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592578390611) (:by |B1y7Rc-Zz) (:id |4-HyuCyLQ) (:text |:game) (:type :leaf)
                                      |j $ {} (:at 1592578391282) (:by |B1y7Rc-Zz) (:id |_npuk2rgWK) (:text |db) (:type :leaf)
                          |v $ {} (:at 1637001755506) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001755950) (:by |B1y7Rc-Zz) (:id |ryg7ssXahb) (:text |{}) (:type :leaf)
          |twig-members $ {} (:at 1524070676419) (:by |root) (:id |SkZ3zYeShG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637149387758) (:by |B1y7Rc-Zz) (:id |rJG3GYxHhG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1524070676419) (:by |root) (:id |rymhzFxH3G) (:text |twig-members) (:type :leaf)
              |r $ {} (:at 1524070676419) (:by |root) (:id |Hy4nzKerhG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524070680419) (:by |root) (:id |rygJQFlrnf) (:text |sessions) (:type :leaf)
                  |j $ {} (:at 1524070708862) (:by |root) (:id |r1-QYlSnf) (:text |users) (:type :leaf)
              |v $ {} (:at 1524070683188) (:by |root) (:id |SJxXQKlB2M) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637002021411) (:by |B1y7Rc-Zz) (:id |SJxXQKlB2Mleaf) (:text |->) (:type :leaf)
                  |j $ {} (:at 1524070692906) (:by |root) (:id |rk7F7txBnM) (:text |sessions) (:type :leaf)
                  |r $ {} (:at 1524070693234) (:by |root) (:id |ByNpmYeS3M) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637002023585) (:by |B1y7Rc-Zz) (:id |Hy7T7KeH2z) (:text |map-kv) (:type :leaf)
                      |j $ {} (:at 1524070696021) (:by |root) (:id |rkZg4tlH2M) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070696334) (:by |root) (:id |r1gxVYgrnz) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1524070696681) (:by |root) (:id |HyW4Flr2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070697507) (:by |root) (:id |BJX-4YgrhG) (:text |k) (:type :leaf)
                              |j $ {} (:at 1524070699358) (:by |root) (:id |r1z4tgS3M) (:text |session) (:type :leaf)
                          |r $ {} (:at 1524070700350) (:by |root) (:id |B1WEVFer3z) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070701520) (:by |root) (:id |B1WEVFer3zleaf) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1524070702142) (:by |root) (:id |BJxLVtgH3f) (:text |k) (:type :leaf)
                              |r $ {} (:at 1524070702968) (:by |root) (:id |Hklw4FlH2G) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524070705127) (:by |root) (:id |SkPEYxB3M) (:text |get-in) (:type :leaf)
                                  |j $ {} (:at 1524070714762) (:by |root) (:id |BklA4FeS3G) (:text |users) (:type :leaf)
                                  |r $ {} (:at 1524070715457) (:by |root) (:id |rJZ7BKlBnf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070716715) (:by |root) (:id |r1eXHKxS2z) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1524070717257) (:by |root) (:id |HkMHSYxB2G) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1524070720176) (:by |root) (:id |SkbrHKeBhM) (:text |:user-id) (:type :leaf)
                                          |j $ {} (:at 1524070722292) (:by |root) (:id |rJMOBteH3f) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1524070725752) (:by |root) (:id |r1ZiBKeB3G) (:text |:name) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |rkSex8bg0S-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |SkIleLblAr-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ByDelU-eRSZ) (:text |app.twig.container) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |HkOlxUZlRH-) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |r1txeIZlRSb) (:text |:require) (:type :leaf)
                |r $ {} (:at 1500541255553) (:by nil) (:id |rkZblUblRHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |SkM-lUbxASW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |SJX-gU-e0SW) (:text |app.twig.user) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |Hy4We8bgCB-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by nil) (:id |r1SbgUbg0S-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541255553) (:by |root) (:id |BJ8-x8WeCH-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541255553) (:by |root) (:id |BJv-e8beRSW) (:text |twig-user) (:type :leaf)
                |v $ {} (:at 1524279121206) (:by |root) (:id |HkWtUPm_hM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001768860) (:by |B1y7Rc-Zz) (:id |HkWtUPm_hMleaf) (:text |calcit.std.rand) (:type :leaf)
                    |r $ {} (:at 1637001770326) (:by |B1y7Rc-Zz) (:id |S1ezvwQdnz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1637001770688) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1637001771392) (:by |B1y7Rc-Zz) (:id |rkUvD7u2M) (:text |rand-hex-color!) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |H1ubxLZx0SZ) (:type :expr)
          :data $ {}
      |app.twig.user $ {}
        :defs $ {}
          |twig-user $ {} (:at 1500541255553) (:by nil) (:id |SJxcQeIWxASZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637149382179) (:by |B1y7Rc-Zz) (:id |S1ZqXeIblCH-) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByzcXgUblRBW) (:text |twig-user) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ByuqXg8ZxArZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJY57eLWxAH-) (:text |user) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |Hk99QgIbxAHW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Bkjc7xUZlCSW) (:text |dissoc) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |rJ3qXeIbxRHW) (:text |user) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |rk6cXgLZx0HZ) (:text |:password) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |rJ7t7eU-lRrZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |rkVF7xUWgASZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |rkrFQxUZxRBb) (:text |app.twig.user) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |H1JqQxLblABb) (:type :expr)
          :data $ {}
      |app.updater $ {}
        :defs $ {}
          |updater $ {} (:at 1500541255553) (:by nil) (:id |Hk7nmeIbx0SZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SkV3Qe8WlRHb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |Hkrn7xI-gASZ) (:text |updater) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rk82mlUZxRB-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Byw3XlIZg0B-) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1_hme8WxAr-) (:text |op) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |ByY2QgLbxArZ) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1517930722619) (:by |root) (:id |H1537x8-gABW) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hksn7xL-gASW) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by |root) (:id |SJ22mx8ZeRBb) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1517930695338) (:by |root) (:id |rykROrP8f) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1517930698044) (:by |root) (:id |rklROHw8z) (:text |let) (:type :leaf)
                  |T $ {} (:at 1517930701054) (:by |root) (:id |SJlBRdSPUz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1592496012315) (:by |B1y7Rc-Zz) (:id |6upuVhwQ6) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592496036596) (:by |B1y7Rc-Zz) (:id |6upuVhwQ6leaf) (:text |session) (:type :leaf)
                          |j $ {} (:at 1592496037535) (:by |B1y7Rc-Zz) (:id |v9cYZsbP4w) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592496040023) (:by |B1y7Rc-Zz) (:id |8J5MlJAGt) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1592496040379) (:by |B1y7Rc-Zz) (:id |3o5izM6WV) (:text |db) (:type :leaf)
                              |r $ {} (:at 1592496041126) (:by |B1y7Rc-Zz) (:id |QyeYrq50N) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592496041327) (:by |B1y7Rc-Zz) (:id |aEZMe9oMgH) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1592496043415) (:by |B1y7Rc-Zz) (:id |fmybJaQTO-) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1592496045997) (:by |B1y7Rc-Zz) (:id |e2hknC1PZ) (:text |sid) (:type :leaf)
                      |L $ {} (:at 1592496047205) (:by |B1y7Rc-Zz) (:id |q_h8YGW65) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592496050575) (:by |B1y7Rc-Zz) (:id |q_h8YGW65leaf) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1592496052183) (:by |B1y7Rc-Zz) (:id |EaD8PXXrS) (:type :expr)
                            :data $ {}
                              |j $ {} (:at 1592496058919) (:by |B1y7Rc-Zz) (:id |UvLcDT9zl4) (:text |:user-id) (:type :leaf)
                              |r $ {} (:at 1592496124079) (:by |B1y7Rc-Zz) (:id |6FLEQ-us_I) (:text |session) (:type :leaf)
                      |P $ {} (:at 1592496059815) (:by |B1y7Rc-Zz) (:id |LrBFlElqNv) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592496060939) (:by |B1y7Rc-Zz) (:id |LrBFlElqNvleaf) (:text |user) (:type :leaf)
                          |j $ {} (:at 1592496069433) (:by |B1y7Rc-Zz) (:id |-dJA2ibwGd) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592496061291) (:by |B1y7Rc-Zz) (:id |xwYbWCBkFY) (:text |if) (:type :leaf)
                              |j $ {} (:at 1592496071164) (:by |B1y7Rc-Zz) (:id |SLF0s2ipo) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592496071893) (:by |B1y7Rc-Zz) (:id |OEGctK-Ln) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1592496072948) (:by |B1y7Rc-Zz) (:id |_Alq_SEO8) (:text |user-id) (:type :leaf)
                              |r $ {} (:at 1592496073734) (:by |B1y7Rc-Zz) (:id |OZZAJw-T2-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592496075552) (:by |B1y7Rc-Zz) (:id |OZZAJw-T2-leaf) (:text |get-in) (:type :leaf)
                                  |j $ {} (:at 1592496075910) (:by |B1y7Rc-Zz) (:id |t1zIPOEt9M) (:text |db) (:type :leaf)
                                  |r $ {} (:at 1592496076164) (:by |B1y7Rc-Zz) (:id |iala0FAww) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592496076429) (:by |B1y7Rc-Zz) (:id |Ffrgiaz6qF) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1592496077365) (:by |B1y7Rc-Zz) (:id |TdytSs_LRJ) (:text |:users) (:type :leaf)
                                      |r $ {} (:at 1592496083428) (:by |B1y7Rc-Zz) (:id |f7FSyFHb6) (:text |user-id) (:type :leaf)
                              |v $ {} (:at 1592496085651) (:by |B1y7Rc-Zz) (:id |jNtRfZPsI) (:text |nil) (:type :leaf)
                      |T $ {} (:at 1517930698683) (:by |root) (:id |H1X0OSD8f) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1517930699996) (:by |root) (:id |r14RdHv8M) (:text |f) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |BJ6hmlU-lASb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001804899) (:by |B1y7Rc-Zz) (:id |SJ0h7eUbg0rb) (:text |case-default) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |HJyaXeU-gRBZ) (:text |op) (:type :leaf)
                              |n $ {} (:at 1637001806177) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001813545) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |b $ {} (:at 1637001813910) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001814993) (:by |B1y7Rc-Zz) (:text |&) (:type :leaf)
                                      |j $ {} (:at 1637001815688) (:by |B1y7Rc-Zz) (:text |args) (:type :leaf)
                                  |j $ {} (:at 1637001806177) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001806177) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1637001806177) (:by |B1y7Rc-Zz) (:text "|\"Unknown op:") (:type :leaf)
                                      |r $ {} (:at 1637001806177) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                                  |r $ {} (:at 1637001819356) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1500541255553) (:by nil) (:id |HygpXe8Ze0Sb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |rJZ6XxLWe0HW) (:text |:session/connect) (:type :leaf)
                                  |j $ {} (:at 1517930788022) (:by |root) (:id |SksmtSP8z) (:text |session/connect) (:type :leaf)
                              |v $ {} (:at 1500541255553) (:by nil) (:id |r1KaQgU-xRrW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |B1cTQlUWlASW) (:text |:session/disconnect) (:type :leaf)
                                  |j $ {} (:at 1517930783929) (:by |root) (:id |r1_7FBPIM) (:text |session/disconnect) (:type :leaf)
                              |w $ {} (:at 1529231445104) (:by |root) (:id |Bkx1qO2QZm) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529231483623) (:by |root) (:id |rJ-aIO2Q-Qleaf) (:text |:session/remove-message) (:type :leaf)
                                  |j $ {} (:at 1529231491015) (:by |root) (:id |BkrY_h7ZQ) (:text |session/remove-message) (:type :leaf)
                              |x $ {} (:at 1500541255553) (:by nil) (:id |r1fCQxUWe0rb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |Bkm0mgLZx0S-) (:text |:user/log-in) (:type :leaf)
                                  |j $ {} (:at 1517930780888) (:by |root) (:id |BkBmtrD8M) (:text |user/log-in) (:type :leaf)
                              |y $ {} (:at 1500541255553) (:by nil) (:id |rksRmlIZlCSW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |ry3Cmx8blABb) (:text |:user/sign-up) (:type :leaf)
                                  |j $ {} (:at 1517930777757) (:by |root) (:id |Bke-QtSDUM) (:text |user/sign-up) (:type :leaf)
                              |yT $ {} (:at 1500541255553) (:by nil) (:id |B1V1Nl8Zx0BZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |H1rJ4eIblRr-) (:text |:user/log-out) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |ryvkVgIbg0rW) (:text |user/log-out) (:type :leaf)
                              |yr $ {} (:at 1500541255553) (:by nil) (:id |HyUe4gLbxCr-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |BJDxEeLWgASb) (:text |:router/change) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |r1tl4lIZx0SW) (:text |router/change) (:type :leaf)
                              |yt $ {} (:at 1592495892231) (:by |B1y7Rc-Zz) (:id |gNmy8Epfu) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592495894900) (:by |B1y7Rc-Zz) (:id |gNmy8Epfuleaf) (:text |:message/create) (:type :leaf)
                                  |j $ {} (:at 1592495898662) (:by |B1y7Rc-Zz) (:id |BgEiGVBHi-) (:text |message/create-message) (:type :leaf)
                              |yu $ {} (:at 1592495892231) (:by |B1y7Rc-Zz) (:id |Y4yICsiIz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592496904843) (:by |B1y7Rc-Zz) (:id |gNmy8Epfuleaf) (:text |:message/clear) (:type :leaf)
                                  |j $ {} (:at 1592496911356) (:by |B1y7Rc-Zz) (:id |BgEiGVBHi-) (:text |message/clear) (:type :leaf)
                              |yuD $ {} (:at 1592630837913) (:by |B1y7Rc-Zz) (:id |slX3pmL48q) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592630842207) (:by |B1y7Rc-Zz) (:id |WPL9TYTnZ6) (:text |:message/blot-out) (:type :leaf)
                                  |j $ {} (:at 1592630845467) (:by |B1y7Rc-Zz) (:id |BWnZvqZP0X) (:text |message/blot-out) (:type :leaf)
                              |yuL $ {} (:at 1592632822484) (:by |B1y7Rc-Zz) (:id |Mqd4Xj3nRB) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592632826192) (:by |B1y7Rc-Zz) (:id |Mqd4Xj3nRBleaf) (:text |:message/show-result) (:type :leaf)
                                  |j $ {} (:at 1592632827076) (:by |B1y7Rc-Zz) (:id |NtM-wvLqN1) (:text |message/show-result) (:type :leaf)
                              |yuT $ {} (:at 1592495892231) (:by |B1y7Rc-Zz) (:id |H9iCmTmoj) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592499360366) (:by |B1y7Rc-Zz) (:id |gNmy8Epfuleaf) (:text |:template/create) (:type :leaf)
                                  |j $ {} (:at 1592499367290) (:by |B1y7Rc-Zz) (:id |BgEiGVBHi-) (:text |template/create-template) (:type :leaf)
                              |yuj $ {} (:at 1592495892231) (:by |B1y7Rc-Zz) (:id |mfY_-afKdk) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592577604776) (:by |B1y7Rc-Zz) (:id |gNmy8Epfuleaf) (:text |:template/remove) (:type :leaf)
                                  |j $ {} (:at 1592577607464) (:by |B1y7Rc-Zz) (:id |BgEiGVBHi-) (:text |template/remove-template) (:type :leaf)
                              |yur $ {} (:at 1592495892231) (:by |B1y7Rc-Zz) (:id |WVGbkdhzW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592578345265) (:by |B1y7Rc-Zz) (:id |gNmy8Epfuleaf) (:text |:template/choose) (:type :leaf)
                                  |j $ {} (:at 1592578350793) (:by |B1y7Rc-Zz) (:id |BgEiGVBHi-) (:text |template/choose) (:type :leaf)
                              |yuv $ {} (:at 1592495892231) (:by |B1y7Rc-Zz) (:id |SLwpwO63q) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592579551075) (:by |B1y7Rc-Zz) (:id |gNmy8Epfuleaf) (:text |:template/add-card) (:type :leaf)
                                  |j $ {} (:at 1592579553290) (:by |B1y7Rc-Zz) (:id |BgEiGVBHi-) (:text |template/add-card) (:type :leaf)
                              |yuw $ {} (:at 1592495892231) (:by |B1y7Rc-Zz) (:id |-jcBQweb8) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592584993178) (:by |B1y7Rc-Zz) (:id |gNmy8Epfuleaf) (:text |:template/remove-card) (:type :leaf)
                                  |j $ {} (:at 1592584994649) (:by |B1y7Rc-Zz) (:id |BgEiGVBHi-) (:text |template/remove-card) (:type :leaf)
                  |j $ {} (:at 1517930704255) (:by |root) (:id |HyxOAOHDUM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1517930704937) (:by |root) (:id |HyxOAOHDUMleaf) (:text |f) (:type :leaf)
                      |j $ {} (:at 1517930706635) (:by |root) (:id |SkcC_SvLM) (:text |db) (:type :leaf)
                      |r $ {} (:at 1517930709018) (:by |root) (:id |HJ2RdSPUf) (:text |op-data) (:type :leaf)
                      |v $ {} (:at 1517930725426) (:by |root) (:id |r1JytHD8G) (:text |sid) (:type :leaf)
                      |x $ {} (:at 1517930717948) (:by |root) (:id |S1z4JKSDLG) (:text |op-id) (:type :leaf)
                      |y $ {} (:at 1517930719120) (:by |root) (:id |BkGLkYrDUz) (:text |op-time) (:type :leaf)
                      |yD $ {} (:at 1592496232102) (:by |B1y7Rc-Zz) (:id |pxGQKUjQOa) (:text |session) (:type :leaf)
                      |yb $ {} (:at 1637151201869) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |BJR97lLZlRSZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |ry1omxI-g0r-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ryxjmgIZgArZ) (:text |app.updater) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |SJ-o7eUZlRBZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |SkGj7eUZgCrZ) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:id |S1momeUWgRHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |rkEsmx8Wg0rZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |BySiQgUZxCS-) (:text |app.updater.session) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |S1Ismg8blABW) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |BkDsme8-l0H-) (:text |session) (:type :leaf)
                |r $ {} (:at 1500541255553) (:by nil) (:id |S1uoQlLWe0HW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |r1FoXeI-e0BZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |H19oXxI-xAH-) (:text |app.updater.user) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |HyojQg8WeCH-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |SJ2o7eIWeAHb) (:text |user) (:type :leaf)
                |v $ {} (:at 1500541255553) (:by nil) (:id |BkTsXxUbg0S-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |Sy0sXlLbxRBb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |B1J3XgIZe0SZ) (:text |app.updater.router) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |rkgnmg8-x0BZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |HkZ3XxLZlCSW) (:text |router) (:type :leaf)
                |y $ {} (:at 1529231005993) (:by |root) (:id |Ske8iUnXWm) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1529231006285) (:by |root) (:id |Ske8iUnXWmleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529231007723) (:by |root) (:id |BJXLiI2Qb7) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1529231008972) (:by |root) (:id |SyGuiI3QWX) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1529231009860) (:by |root) (:id |HkZtj8hXZQ) (:text |schema) (:type :leaf)
                |yT $ {} (:at 1529231108810) (:by |root) (:id |rkpWDhQW7) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1529231110305) (:by |root) (:id |rkpWDhQW7leaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529231113905) (:by |root) (:id |HyE0bP3mWQ) (:text |respo-message.updater) (:type :leaf)
                    |r $ {} (:at 1529231114617) (:by |root) (:id |SJ7GMD27bX) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1529231114849) (:by |root) (:id |rJG7Mvn7Z7) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1529231116379) (:by |root) (:id |B1-XMPnX-7) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1529231118760) (:by |root) (:id |SyWVGD2XZQ) (:text |update-messages) (:type :leaf)
                |yj $ {} (:at 1592495880625) (:by |B1y7Rc-Zz) (:id |VLuYB8dqLh) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592495880981) (:by |B1y7Rc-Zz) (:id |VLuYB8dqLhleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592495885548) (:by |B1y7Rc-Zz) (:id |Ch20EXfhs) (:text |app.updater.message) (:type :leaf)
                    |r $ {} (:at 1592495886028) (:by |B1y7Rc-Zz) (:id |BsEZ-baMe1) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1592495887044) (:by |B1y7Rc-Zz) (:id |tc166Et92) (:text |message) (:type :leaf)
                |yr $ {} (:at 1592495880625) (:by |B1y7Rc-Zz) (:id |bOZKadiJ8O) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1592495880981) (:by |B1y7Rc-Zz) (:id |VLuYB8dqLhleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1592499345860) (:by |B1y7Rc-Zz) (:id |Ch20EXfhs) (:text |app.updater.template) (:type :leaf)
                    |r $ {} (:at 1592495886028) (:by |B1y7Rc-Zz) (:id |BsEZ-baMe1) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1592499351991) (:by |B1y7Rc-Zz) (:id |tc166Et92) (:text |template) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |SkfhmgLbxRHb) (:type :expr)
          :data $ {}
      |app.updater.message $ {}
        :configs $ {}
        :defs $ {}
          |blot-out $ {} (:at 1592630848884) (:by |B1y7Rc-Zz) (:id |UqChkb9k34) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592630853659) (:by |B1y7Rc-Zz) (:id |yCFMuINUwI) (:text |defn) (:type :leaf)
              |j $ {} (:at 1592630848884) (:by |B1y7Rc-Zz) (:id |2QYucK4EU4) (:text |blot-out) (:type :leaf)
              |r $ {} (:at 1592630849744) (:by |B1y7Rc-Zz) (:id |J1wPdYFSfJ) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1592630849744) (:by |B1y7Rc-Zz) (:id |NGi1hwQZ4J) (:text |db) (:type :leaf)
                  |r $ {} (:at 1592630849744) (:by |B1y7Rc-Zz) (:id |IkN6OhagVT) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1592630849744) (:by |B1y7Rc-Zz) (:id |5LDJEMfbnX) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1592630849744) (:by |B1y7Rc-Zz) (:id |Sb1jyoOrqW) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1592630849744) (:by |B1y7Rc-Zz) (:id |KoQKSo5zBT) (:text |op-time) (:type :leaf)
                  |yT $ {} (:at 1592630849744) (:by |B1y7Rc-Zz) (:id |qpYvBFupLl) (:text |session) (:type :leaf)
                  |yj $ {} (:at 1592630849744) (:by |B1y7Rc-Zz) (:id |VHcBO7sDLL) (:text |user) (:type :leaf)
              |v $ {} (:at 1592630878707) (:by |B1y7Rc-Zz) (:id |TovdVfHz3) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592630883228) (:by |B1y7Rc-Zz) (:id |TovdVfHz3leaf) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1592630885554) (:by |B1y7Rc-Zz) (:id |uYUb8ywQi) (:text |db) (:type :leaf)
                  |r $ {} (:at 1592630885845) (:by |B1y7Rc-Zz) (:id |ZaTeKV0C0_) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592630886060) (:by |B1y7Rc-Zz) (:id |QuUk2inkCI) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1592630888355) (:by |B1y7Rc-Zz) (:id |M5DaSfu-o) (:text |:messages) (:type :leaf)
                      |r $ {} (:at 1592630890062) (:by |B1y7Rc-Zz) (:id |S0b2sTVOcf) (:text |op-data) (:type :leaf)
                      |v $ {} (:at 1592630893664) (:by |B1y7Rc-Zz) (:id |rFQlLa1Ts-) (:text |:blotted?) (:type :leaf)
                  |v $ {} (:at 1592630895085) (:by |B1y7Rc-Zz) (:id |DybOO5Esa_) (:text |true) (:type :leaf)
          |clear $ {} (:at 1592496914428) (:by |B1y7Rc-Zz) (:id |LlTae-XVlH) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592496922367) (:by |B1y7Rc-Zz) (:id |jcpJTkAFzr) (:text |defn) (:type :leaf)
              |j $ {} (:at 1592496914428) (:by |B1y7Rc-Zz) (:id |Rbs20wTuKi) (:text |clear) (:type :leaf)
              |r $ {} (:at 1592496919634) (:by |B1y7Rc-Zz) (:id |X022KtAtc2) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1592496919634) (:by |B1y7Rc-Zz) (:id |8vTKkrMSjK) (:text |db) (:type :leaf)
                  |r $ {} (:at 1592496919634) (:by |B1y7Rc-Zz) (:id |CuvGmkuDXd) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1592496919634) (:by |B1y7Rc-Zz) (:id |Ms6VFjAs7n) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1592496919634) (:by |B1y7Rc-Zz) (:id |9QNzMXMpP9) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1592496919634) (:by |B1y7Rc-Zz) (:id |GqXonZzETC) (:text |op-time) (:type :leaf)
                  |yT $ {} (:at 1592496919634) (:by |B1y7Rc-Zz) (:id |Lc7Ml1xf3w) (:text |session) (:type :leaf)
                  |yj $ {} (:at 1592496919634) (:by |B1y7Rc-Zz) (:id |3iNBC_EZYx) (:text |user) (:type :leaf)
              |v $ {} (:at 1592496924621) (:by |B1y7Rc-Zz) (:id |_KuIWZ3cs) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592631210719) (:by |B1y7Rc-Zz) (:id |_KuIWZ3csleaf) (:text |update) (:type :leaf)
                  |j $ {} (:at 1592496928460) (:by |B1y7Rc-Zz) (:id |rztSe8u6HL) (:text |db) (:type :leaf)
                  |r $ {} (:at 1592496933119) (:by |B1y7Rc-Zz) (:id |0eOMmfagH) (:text |:messages) (:type :leaf)
                  |v $ {} (:at 1592496933590) (:by |B1y7Rc-Zz) (:id |A96hq4xrMk) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592631213415) (:by |B1y7Rc-Zz) (:id |pNvWcEbU7H) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1592631213720) (:by |B1y7Rc-Zz) (:id |CKtUm55uke) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592631216326) (:by |B1y7Rc-Zz) (:id |o6WKAmrLhr) (:text |messages) (:type :leaf)
                      |r $ {} (:at 1592631306229) (:by |B1y7Rc-Zz) (:id |OvmCpfy13) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1592631308691) (:by |B1y7Rc-Zz) (:id |RpQm8dSxDs) (:text |assoc) (:type :leaf)
                          |T $ {} (:at 1592631217479) (:by |B1y7Rc-Zz) (:id |6GfVqnPoG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001965649) (:by |B1y7Rc-Zz) (:id |6GfVqnPoGleaf) (:text |->) (:type :leaf)
                              |j $ {} (:at 1592631228953) (:by |B1y7Rc-Zz) (:id |nFeVYkFfSD) (:text |messages) (:type :leaf)
                              |n $ {} (:at 1637001968778) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001972147) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |r $ {} (:at 1592631229598) (:by |B1y7Rc-Zz) (:id |vjt6w92Ffu) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637149772247) (:by |B1y7Rc-Zz) (:id |1_H9t-Xep) (:text |.sort-by) (:type :leaf)
                                  |j $ {} (:at 1592631230472) (:by |B1y7Rc-Zz) (:id |0ZVeipnZrt) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631231017) (:by |B1y7Rc-Zz) (:id |6tbV_Q7H7P) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1592631268379) (:by |B1y7Rc-Zz) (:id |Hi8R_dZVrb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001985060) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                      |r $ {} (:at 1592631275844) (:by |B1y7Rc-Zz) (:id |-izDgGKofT) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1637149733732) (:by |B1y7Rc-Zz) (:id |KmD03s3Pv) (:text |negate) (:type :leaf)
                                          |T $ {} (:at 1592631269473) (:by |B1y7Rc-Zz) (:id |HhIof3qBeb) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592631273419) (:by |B1y7Rc-Zz) (:id |HhIof3qBebleaf) (:text |:time) (:type :leaf)
                                              |j $ {} (:at 1637001978406) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1637001980660) (:by |B1y7Rc-Zz) (:id |hRnSD3Ppgv) (:text |last) (:type :leaf)
                                                  |j $ {} (:at 1637001981228) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                              |t $ {} (:at 1592631244059) (:by |B1y7Rc-Zz) (:id |8oGwhGaBgw) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631289035) (:by |B1y7Rc-Zz) (:id |8oGwhGaBgwleaf) (:text |take) (:type :leaf)
                                  |j $ {} (:at 1592631246404) (:by |B1y7Rc-Zz) (:id |YalNL5tCH) (:text |5) (:type :leaf)
                              |w $ {} (:at 1592631299410) (:by |B1y7Rc-Zz) (:id |eMauu60Sx) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001988669) (:by |B1y7Rc-Zz) (:id |eMauu60Sxleaf) (:text |pairs-map) (:type :leaf)
                          |j $ {} (:at 1592631321969) (:by |B1y7Rc-Zz) (:id |OWq_bM9zyC) (:text |op-id) (:type :leaf)
                          |r $ {} (:at 1592631322354) (:by |B1y7Rc-Zz) (:id |JOu5n2mPfd) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631322655) (:by |B1y7Rc-Zz) (:id |efq8hfRT9) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592631322945) (:by |B1y7Rc-Zz) (:id |4NTEUWtwfP) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631323444) (:by |B1y7Rc-Zz) (:id |K6OwOWQ4OS) (:text |:id) (:type :leaf)
                                  |j $ {} (:at 1592631324388) (:by |B1y7Rc-Zz) (:id |HobERDSfEE) (:text |op-id) (:type :leaf)
                              |r $ {} (:at 1592631325490) (:by |B1y7Rc-Zz) (:id |-Vjms0Fz9) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631335495) (:by |B1y7Rc-Zz) (:id |-Vjms0Fz9leaf) (:text |:text) (:type :leaf)
                                  |j $ {} (:at 1592631421615) (:by |B1y7Rc-Zz) (:id |TIiftoaIzT) (:text "|\"清除了消息") (:type :leaf)
                              |v $ {} (:at 1592631347769) (:by |B1y7Rc-Zz) (:id |frUOVDFVl9) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631349938) (:by |B1y7Rc-Zz) (:id |frUOVDFVl9leaf) (:text |:time) (:type :leaf)
                                  |j $ {} (:at 1592631353379) (:by |B1y7Rc-Zz) (:id |2dLpUQq2P6) (:text |op-time) (:type :leaf)
                              |x $ {} (:at 1592631353904) (:by |B1y7Rc-Zz) (:id |zTUtjpomZC) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631355698) (:by |B1y7Rc-Zz) (:id |zTUtjpomZCleaf) (:text |:type) (:type :leaf)
                                  |j $ {} (:at 1592631357923) (:by |B1y7Rc-Zz) (:id |W8qdl5qTH7) (:text |:operation) (:type :leaf)
                              |y $ {} (:at 1592631423805) (:by |B1y7Rc-Zz) (:id |36JJvTR1C5) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631425960) (:by |B1y7Rc-Zz) (:id |36JJvTR1C5leaf) (:text |:author-id) (:type :leaf)
                                  |j $ {} (:at 1592631427286) (:by |B1y7Rc-Zz) (:id |BKrdF6aCo) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631429656) (:by |B1y7Rc-Zz) (:id |Obn3BR_ce_) (:text |:user-id) (:type :leaf)
                                      |j $ {} (:at 1592631433304) (:by |B1y7Rc-Zz) (:id |x_27F0IGJa) (:text |session) (:type :leaf)
          |create-message $ {} (:at 1592495852146) (:by |B1y7Rc-Zz) (:id |W16oBQVheV) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592495852146) (:by |B1y7Rc-Zz) (:id |UmDENKaY5P) (:text |defn) (:type :leaf)
              |j $ {} (:at 1592495852146) (:by |B1y7Rc-Zz) (:id |j_czKyI669) (:text |create-message) (:type :leaf)
              |r $ {} (:at 1592495862700) (:by |B1y7Rc-Zz) (:id |MgwlbBMvGS) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1592495862700) (:by |B1y7Rc-Zz) (:id |40sEPnJJEv) (:text |db) (:type :leaf)
                  |r $ {} (:at 1592495862700) (:by |B1y7Rc-Zz) (:id |3RL_4jQx48) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1592495862700) (:by |B1y7Rc-Zz) (:id |_SwhjwKqbE) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1592495862700) (:by |B1y7Rc-Zz) (:id |gyut_qSE5v) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1592495862700) (:by |B1y7Rc-Zz) (:id |yT7rOY52YK) (:text |op-time) (:type :leaf)
                  |yj $ {} (:at 1592496164337) (:by |B1y7Rc-Zz) (:id |fNZ-IXCtJb) (:text |session) (:type :leaf)
                  |yr $ {} (:at 1592496218869) (:by |B1y7Rc-Zz) (:id |63PF6nA9Y) (:text |user) (:type :leaf)
              |t $ {} (:at 1592495873118) (:by |B1y7Rc-Zz) (:id |dFLd0ng2Z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592495943613) (:by |B1y7Rc-Zz) (:id |3La4LIFYv) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1592495944786) (:by |B1y7Rc-Zz) (:id |A5lmBLUzyu) (:text |db) (:type :leaf)
                  |r $ {} (:at 1592495945634) (:by |B1y7Rc-Zz) (:id |-iZIFLnx5) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592495945848) (:by |B1y7Rc-Zz) (:id |fctaSgmxzY) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1592495947677) (:by |B1y7Rc-Zz) (:id |UNaLev9l24) (:text |:messages) (:type :leaf)
                      |r $ {} (:at 1592495949088) (:by |B1y7Rc-Zz) (:id |1MZZ_NLa4d) (:text |op-id) (:type :leaf)
                  |v $ {} (:at 1592495949515) (:by |B1y7Rc-Zz) (:id |wNIN9wk58D) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592496174017) (:by |B1y7Rc-Zz) (:id |wNIN9wk58Dleaf) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1592496174528) (:by |B1y7Rc-Zz) (:id |O8so2LMMvz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592496175765) (:by |B1y7Rc-Zz) (:id |ShQZX7U_T) (:text |:id) (:type :leaf)
                          |j $ {} (:at 1592496176594) (:by |B1y7Rc-Zz) (:id |0aTT5FK2q1) (:text |op-id) (:type :leaf)
                      |r $ {} (:at 1592496177226) (:by |B1y7Rc-Zz) (:id |HFfY6jOC8) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592496179285) (:by |B1y7Rc-Zz) (:id |HFfY6jOC8leaf) (:text |:text) (:type :leaf)
                          |j $ {} (:at 1592496180536) (:by |B1y7Rc-Zz) (:id |7e0XFjr7wh) (:text |op-data) (:type :leaf)
                      |v $ {} (:at 1592496181158) (:by |B1y7Rc-Zz) (:id |v7HLKPUyF) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592496183428) (:by |B1y7Rc-Zz) (:id |v7HLKPUyFleaf) (:text |:author-id) (:type :leaf)
                          |j $ {} (:at 1592496183790) (:by |B1y7Rc-Zz) (:id |cL7LziF1S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592496221742) (:by |B1y7Rc-Zz) (:id |7MMN9QzLW9) (:text |:user-id) (:type :leaf)
                              |j $ {} (:at 1592496224780) (:by |B1y7Rc-Zz) (:id |hzK6KnNpn3) (:text |session) (:type :leaf)
                      |x $ {} (:at 1592496194828) (:by |B1y7Rc-Zz) (:id |XvLIady-G6) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592496239070) (:by |B1y7Rc-Zz) (:id |XvLIady-G6leaf) (:text |:time) (:type :leaf)
                          |j $ {} (:at 1592496239946) (:by |B1y7Rc-Zz) (:id |AxZef6qL1b) (:text |op-time) (:type :leaf)
                      |y $ {} (:at 1592496247992) (:by |B1y7Rc-Zz) (:id |D7pQLYec-q) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592496249662) (:by |B1y7Rc-Zz) (:id |D7pQLYec-qleaf) (:text |:type) (:type :leaf)
                          |j $ {} (:at 1592496251310) (:by |B1y7Rc-Zz) (:id |jePIjMjqIK) (:text |:message) (:type :leaf)
          |show-result $ {} (:at 1592581701234) (:by |B1y7Rc-Zz) (:id |kksVXuaID9) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592581704999) (:by |B1y7Rc-Zz) (:id |nt3C1f71Yj) (:text |defn) (:type :leaf)
              |j $ {} (:at 1592581701234) (:by |B1y7Rc-Zz) (:id |PXd2U_8wBX) (:text |show-result) (:type :leaf)
              |r $ {} (:at 1592581702088) (:by |B1y7Rc-Zz) (:id |sA3zBb95cE) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1592581702088) (:by |B1y7Rc-Zz) (:id |Z63UjxSRME) (:text |db) (:type :leaf)
                  |r $ {} (:at 1592581702088) (:by |B1y7Rc-Zz) (:id |okAx-Bfe6f) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1592581702088) (:by |B1y7Rc-Zz) (:id |tblSDAcTiM) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1592581702088) (:by |B1y7Rc-Zz) (:id |6YV9TnOTgB) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1592581702088) (:by |B1y7Rc-Zz) (:id |NHb8PPb2fk) (:text |op-time) (:type :leaf)
                  |yT $ {} (:at 1592581702088) (:by |B1y7Rc-Zz) (:id |1LKdMTpsWv) (:text |session) (:type :leaf)
                  |yj $ {} (:at 1592581702088) (:by |B1y7Rc-Zz) (:id |CeVaYahscW) (:text |user) (:type :leaf)
              |t $ {} (:at 1592581710699) (:by |B1y7Rc-Zz) (:id |Nk7k5cazJ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592581716006) (:by |B1y7Rc-Zz) (:id |K4nCd5lse0) (:text |let) (:type :leaf)
                  |j $ {} (:at 1592581716396) (:by |B1y7Rc-Zz) (:id |fEnShshZbt) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592581716537) (:by |B1y7Rc-Zz) (:id |Xe1dNgFe-T) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592581720737) (:by |B1y7Rc-Zz) (:id |Be3ZoOSCO) (:text |template-id) (:type :leaf)
                          |j $ {} (:at 1592581721045) (:by |B1y7Rc-Zz) (:id |A-VQCE-35O) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592581723748) (:by |B1y7Rc-Zz) (:id |P4i6Y4sndj) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1592581724067) (:by |B1y7Rc-Zz) (:id |9M76FDtFas) (:text |db) (:type :leaf)
                              |r $ {} (:at 1592581724427) (:by |B1y7Rc-Zz) (:id |YYZWAuTNUm) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592581724621) (:by |B1y7Rc-Zz) (:id |UxHRmnAfkH) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1592581726415) (:by |B1y7Rc-Zz) (:id |iBan-M9leM) (:text |:game) (:type :leaf)
                                  |r $ {} (:at 1592581729057) (:by |B1y7Rc-Zz) (:id |UDm9MkQhFH) (:text |:template-id) (:type :leaf)
                      |j $ {} (:at 1592581730570) (:by |B1y7Rc-Zz) (:id |UD_2wzugxR) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592581732205) (:by |B1y7Rc-Zz) (:id |UD_2wzugxRleaf) (:text |template) (:type :leaf)
                          |j $ {} (:at 1592581733170) (:by |B1y7Rc-Zz) (:id |307nq4GXH) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592581734029) (:by |B1y7Rc-Zz) (:id |BlDNIDC6Qa) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1592581734347) (:by |B1y7Rc-Zz) (:id |2PRPJJnpP) (:text |db) (:type :leaf)
                              |r $ {} (:at 1592581734630) (:by |B1y7Rc-Zz) (:id |bixXkr1eN9) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592581734854) (:by |B1y7Rc-Zz) (:id |4dO4Q4CnH7) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1592581737844) (:by |B1y7Rc-Zz) (:id |xoWJ_9hGgy) (:text |:templates) (:type :leaf)
                                  |r $ {} (:at 1592581740775) (:by |B1y7Rc-Zz) (:id |X_3ouitn4o) (:text |template-id) (:type :leaf)
                      |r $ {} (:at 1592581742123) (:by |B1y7Rc-Zz) (:id |HMlFgafiN) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592581819144) (:by |B1y7Rc-Zz) (:id |HMlFgafiNleaf) (:text |insertions) (:type :leaf)
                          |j $ {} (:at 1592581825192) (:by |B1y7Rc-Zz) (:id |DM9AI_FVr) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637002142585) (:by |B1y7Rc-Zz) (:id |Qrk3zTSsI) (:text |->) (:type :leaf)
                              |j $ {} (:at 1592581926903) (:by |B1y7Rc-Zz) (:id |A4lO2vk_Yg) (:text |template) (:type :leaf)
                              |r $ {} (:at 1592581832597) (:by |B1y7Rc-Zz) (:id |8yuGmkCXb) (:text |:slots) (:type :leaf)
                              |t $ {} (:at 1637002152919) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637002153474) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |u $ {} (:at 1637158595767) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637158602745) (:by |B1y7Rc-Zz) (:text |.sort-by) (:type :leaf)
                                  |j $ {} (:at 1637158603782) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637158604914) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1637158605118) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637158605638) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                      |r $ {} (:at 1637158613319) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1637158630021) (:by |B1y7Rc-Zz) (:text |:order) (:type :leaf)
                                          |T $ {} (:at 1637158608757) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637158610748) (:by |B1y7Rc-Zz) (:text |last) (:type :leaf)
                                              |j $ {} (:at 1637158617301) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                              |v $ {} (:at 1592581833199) (:by |B1y7Rc-Zz) (:id |7WklHNWSs) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592581834310) (:by |B1y7Rc-Zz) (:id |hN51_n-9RL) (:text |map) (:type :leaf)
                                  |j $ {} (:at 1592581834613) (:by |B1y7Rc-Zz) (:id |qWXxRdcYSe) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592581834924) (:by |B1y7Rc-Zz) (:id |_4ZuSh0pKg) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1592581835177) (:by |B1y7Rc-Zz) (:id |lWkFNDIil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637002167557) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                      |r $ {} (:at 1592581854237) (:by |B1y7Rc-Zz) (:id |ixVrIDplK) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1592581855499) (:by |B1y7Rc-Zz) (:id |Rvu6wAZkX7) (:text |:text) (:type :leaf)
                                          |T $ {} (:at 1592581956218) (:by |B1y7Rc-Zz) (:id |uz-Lbxosh) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1592581957710) (:by |B1y7Rc-Zz) (:id |dN0788Q6-O) (:text |last) (:type :leaf)
                                              |T $ {} (:at 1592581844500) (:by |B1y7Rc-Zz) (:id |R4lgi-5g0O) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592581853494) (:by |B1y7Rc-Zz) (:id |R4lgi-5g0Oleaf) (:text |first) (:type :leaf)
                                                  |j $ {} (:at 1592581847673) (:by |B1y7Rc-Zz) (:id |j8eE7kCKJo) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592581849609) (:by |B1y7Rc-Zz) (:id |SAzPJ9Y5Si) (:text |:cards) (:type :leaf)
                                                      |j $ {} (:at 1637002162054) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1637002163793) (:by |B1y7Rc-Zz) (:id |Apo0g4heLA) (:text |last) (:type :leaf)
                                                          |j $ {} (:at 1637002164497) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                      |v $ {} (:at 1592581866847) (:by |B1y7Rc-Zz) (:id |7c3Z9OAIBt) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592581873555) (:by |B1y7Rc-Zz) (:id |7c3Z9OAIBtleaf) (:text |content) (:type :leaf)
                          |j $ {} (:at 1592581972455) (:by |B1y7Rc-Zz) (:id |1Euse0oYW) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1637002220548) (:by |B1y7Rc-Zz) (:id |qy5iL8Yl1O) (:text |.join-str) (:type :leaf)
                              |T $ {} (:at 1592581874358) (:by |B1y7Rc-Zz) (:id |-ykwT6To7I) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592581875817) (:by |B1y7Rc-Zz) (:id |j2sBVHKOJ) (:text |interleave) (:type :leaf)
                                  |j $ {} (:at 1592581898457) (:by |B1y7Rc-Zz) (:id |y24SgXuH-p) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1592581899883) (:by |B1y7Rc-Zz) (:id |Vu9t_Xs1yX) (:text |concat) (:type :leaf)
                                      |T $ {} (:at 1592581880578) (:by |B1y7Rc-Zz) (:id |gJtDP6GRBP) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592581882418) (:by |B1y7Rc-Zz) (:id |X88U4d5Cr) (:text |:pieces) (:type :leaf)
                                          |j $ {} (:at 1592581883537) (:by |B1y7Rc-Zz) (:id |1FkdXuR2QR) (:text |template) (:type :leaf)
                                      |j $ {} (:at 1592581900530) (:by |B1y7Rc-Zz) (:id |3G02idPTMM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592581902302) (:by |B1y7Rc-Zz) (:id |QHwah3LK3) (:text |repeat) (:type :leaf)
                                          |b $ {} (:at 1637153959803) (:by |B1y7Rc-Zz) (:text "|\"") (:type :leaf)
                                          |j $ {} (:at 1592581903355) (:by |B1y7Rc-Zz) (:id |blA60tETr8) (:text |10) (:type :leaf)
                                  |r $ {} (:at 1592581892687) (:by |B1y7Rc-Zz) (:id |5B9P3dpJnq) (:text |insertions) (:type :leaf)
                              |j $ {} (:at 1637002222581) (:by |B1y7Rc-Zz) (:text "|\"") (:type :leaf)
                  |v $ {} (:at 1592582053717) (:by |B1y7Rc-Zz) (:id |DdjFZuQUp) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1592582054450) (:by |B1y7Rc-Zz) (:id |L7EiceRrqp) (:text |->) (:type :leaf)
                      |L $ {} (:at 1592582054828) (:by |B1y7Rc-Zz) (:id |OjGhBInbGa) (:text |db) (:type :leaf)
                      |T $ {} (:at 1592582044825) (:by |B1y7Rc-Zz) (:id |v7Coe97gXp) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592582046941) (:by |B1y7Rc-Zz) (:id |v7Coe97gXpleaf) (:text |assoc-in) (:type :leaf)
                          |r $ {} (:at 1592582048170) (:by |B1y7Rc-Zz) (:id |OdPITMoBl) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592582048455) (:by |B1y7Rc-Zz) (:id |dssjewV73H) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1592582050606) (:by |B1y7Rc-Zz) (:id |h3TmX2M9c0) (:text |:messages) (:type :leaf)
                              |r $ {} (:at 1592582060359) (:by |B1y7Rc-Zz) (:id |8zr9oBZed) (:text |op-id) (:type :leaf)
                          |v $ {} (:at 1592582061843) (:by |B1y7Rc-Zz) (:id |QoRrSfIiZO) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592582062390) (:by |B1y7Rc-Zz) (:id |QoRrSfIiZOleaf) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592582062651) (:by |B1y7Rc-Zz) (:id |Z05naNBSy9) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592582063289) (:by |B1y7Rc-Zz) (:id |eLOyfNfDIl) (:text |:id) (:type :leaf)
                                  |j $ {} (:at 1592582064944) (:by |B1y7Rc-Zz) (:id |5tc7OwsqFA) (:text |op-id) (:type :leaf)
                              |r $ {} (:at 1592582065343) (:by |B1y7Rc-Zz) (:id |5swoEI_pNS) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592582066008) (:by |B1y7Rc-Zz) (:id |5swoEI_pNSleaf) (:text |:time) (:type :leaf)
                                  |j $ {} (:at 1592582068411) (:by |B1y7Rc-Zz) (:id |iEoFD6hrd) (:text |op-time) (:type :leaf)
                              |v $ {} (:at 1592582068948) (:by |B1y7Rc-Zz) (:id |K4DNi-WayT) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592582069811) (:by |B1y7Rc-Zz) (:id |K4DNi-WayTleaf) (:text |:text) (:type :leaf)
                                  |j $ {} (:at 1592582083906) (:by |B1y7Rc-Zz) (:id |R8Ux8t62Qq) (:text |content) (:type :leaf)
                              |x $ {} (:at 1592582084407) (:by |B1y7Rc-Zz) (:id |7bvSjpHIWN) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592582085740) (:by |B1y7Rc-Zz) (:id |7bvSjpHIWNleaf) (:text |:type) (:type :leaf)
                                  |j $ {} (:at 1592582097226) (:by |B1y7Rc-Zz) (:id |nlDkk2y7gu) (:text |:quote) (:type :leaf)
                      |j $ {} (:at 1592582103015) (:by |B1y7Rc-Zz) (:id |FzFSVM-yDJ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592582104983) (:by |B1y7Rc-Zz) (:id |FzFSVM-yDJleaf) (:text |update-in) (:type :leaf)
                          |j $ {} (:at 1592582107808) (:by |B1y7Rc-Zz) (:id |9_bCa_aiKf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592582108727) (:by |B1y7Rc-Zz) (:id |zQ5y1shE_) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1592582110325) (:by |B1y7Rc-Zz) (:id |sYGxHUnAmI) (:text |:templates) (:type :leaf)
                              |r $ {} (:at 1592582115335) (:by |B1y7Rc-Zz) (:id |GiL4dVqi_) (:text |template-id) (:type :leaf)
                              |v $ {} (:at 1592582116710) (:by |B1y7Rc-Zz) (:id |N5jH0XQsfZ) (:text |:slots) (:type :leaf)
                          |r $ {} (:at 1592582124387) (:by |B1y7Rc-Zz) (:id |nVtX2qLQ8) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592582125130) (:by |B1y7Rc-Zz) (:id |nVtX2qLQ8leaf) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1592582125352) (:by |B1y7Rc-Zz) (:id |I128Udopv4) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592582126443) (:by |B1y7Rc-Zz) (:id |cz4ZP9IyYy) (:text |slots) (:type :leaf)
                              |r $ {} (:at 1592582143148) (:by |B1y7Rc-Zz) (:id |HVd_RClku) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637002175048) (:by |B1y7Rc-Zz) (:id |HVd_RClkuleaf) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1592582146127) (:by |B1y7Rc-Zz) (:id |7Pc3UuF5X) (:text |slots) (:type :leaf)
                                  |r $ {} (:at 1592582146964) (:by |B1y7Rc-Zz) (:id |JzpHzhT09g) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637002183433) (:by |B1y7Rc-Zz) (:id |nbcI20kgpa) (:text |map-kv) (:type :leaf)
                                      |j $ {} (:at 1592582149517) (:by |B1y7Rc-Zz) (:id |7HMP_6-PX) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592582149788) (:by |B1y7Rc-Zz) (:id |7XlnDWPQvq) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1592582150218) (:by |B1y7Rc-Zz) (:id |iaGB7ghQV) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592582151904) (:by |B1y7Rc-Zz) (:id |GXZwf5OHy1) (:text |k) (:type :leaf)
                                              |j $ {} (:at 1592582152504) (:by |B1y7Rc-Zz) (:id |W9upbTRBFD) (:text |slot) (:type :leaf)
                                          |r $ {} (:at 1592582161747) (:by |B1y7Rc-Zz) (:id |NPC5Wp3do9) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592582162396) (:by |B1y7Rc-Zz) (:id |NPC5Wp3do9leaf) (:text |[]) (:type :leaf)
                                              |b $ {} (:at 1592582230393) (:by |B1y7Rc-Zz) (:id |rRwppqc_Yy) (:text |k) (:type :leaf)
                                              |j $ {} (:at 1592582168369) (:by |B1y7Rc-Zz) (:id |iZQ4C9RWt) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592582169116) (:by |B1y7Rc-Zz) (:id |98bLAnO4UB) (:text |update) (:type :leaf)
                                                  |j $ {} (:at 1592582170314) (:by |B1y7Rc-Zz) (:id |6RGgHtUs0I) (:text |slot) (:type :leaf)
                                                  |r $ {} (:at 1592582171547) (:by |B1y7Rc-Zz) (:id |zWBh1NCIr4) (:text |:cards) (:type :leaf)
                                                  |v $ {} (:at 1592582186319) (:by |B1y7Rc-Zz) (:id |xRWpi0-sa) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1592582187428) (:by |B1y7Rc-Zz) (:id |y5Y-Q9AM48) (:text |fn) (:type :leaf)
                                                      |L $ {} (:at 1592582187646) (:by |B1y7Rc-Zz) (:id |J8PVrmx8kF) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592582188467) (:by |B1y7Rc-Zz) (:id |ODPjzQ2yIi) (:text |cards) (:type :leaf)
                                                      |T $ {} (:at 1592582189433) (:by |B1y7Rc-Zz) (:id |qhbEx--xiu) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1637002194510) (:by |B1y7Rc-Zz) (:id |cgYzuEqcfc) (:text |->) (:type :leaf)
                                                          |L $ {} (:at 1592582192522) (:by |B1y7Rc-Zz) (:id |fAEx1ip3-O) (:text |cards) (:type :leaf)
                                                          |R $ {} (:at 1637002197188) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1637002198712) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                                          |X $ {} (:at 1637002199544) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592582213107) (:by |B1y7Rc-Zz) (:id |MSfeCqaLwJ) (:text |rest) (:type :leaf)
                                                          |j $ {} (:at 1592582194916) (:by |B1y7Rc-Zz) (:id |QW2QB1EAMP) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1637002207541) (:by |B1y7Rc-Zz) (:id |QW2QB1EAMPleaf) (:text |pairs-map) (:type :leaf)
        :ns $ {} (:at 1592495846808) (:by |B1y7Rc-Zz) (:id |89zl-X_Hf7) (:type :expr)
          :data $ {}
            |T $ {} (:at 1592495846808) (:by |B1y7Rc-Zz) (:id |QQlNYSAOCr) (:text |ns) (:type :leaf)
            |j $ {} (:at 1592495846808) (:by |B1y7Rc-Zz) (:id |YnFAH_C2l-) (:text |app.updater.message) (:type :leaf)
            |r $ {} (:at 1592581982864) (:by |B1y7Rc-Zz) (:id |H2oe_3HKuf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1592581983605) (:by |B1y7Rc-Zz) (:id |4QDmK8mrC3) (:text |:require) (:type :leaf)
        :proc $ {} (:at 1592495846808) (:by |B1y7Rc-Zz) (:id |HGHUxd-PPA) (:type :expr)
          :data $ {}
      |app.updater.router $ {}
        :defs $ {}
          |change $ {} (:at 1500541255553) (:by nil) (:id |ryQxUbg0B-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Hy4gLZgABZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByBlIWg0S-) (:text |change) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |SkIxIWgAHZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJvx8bxCBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HkdeLWxRBZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |BkYlL-xCSZ) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJ9eLWxRSW) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hkog8blRSW) (:text |op-time) (:type :leaf)
                  |xT $ {} (:at 1637151342573) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                  |y $ {} (:at 1637151237591) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |BkhgI-xCrb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |B1al8ZxAB-) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1ClU-xRB-) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |Hk1geLWx0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HklggLbxRB-) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Hk-xxUbeRSZ) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |HyzlgIZgCSb) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1500541255553) (:by |root) (:id |rkQgxU-l0Bb) (:text |:router) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |B14gg8WxCrb) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |S1eLbxASW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |S1eeUbeCrZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |r1-l8We0BW) (:text |app.updater.router) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |HJzeUWeAr-) (:type :expr)
          :data $ {}
      |app.updater.session $ {}
        :defs $ {}
          |connect $ {} (:at 1500541255553) (:by nil) (:id |HyQ1WeI-xABW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SJ4ybe8-g0Sb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |B1SyWx8bxABW) (:text |connect) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ry8k-eUbgCr-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |HJv1Wl8WgRBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |Hk_JWeLZg0Hb) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |ryYkWl8Wx0SZ) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HyqJ-l8-lCBZ) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |r1jk-lIWlASb) (:text |op-time) (:type :leaf)
                  |y $ {} (:at 1637152123411) (:by |B1y7Rc-Zz) (:text |s) (:type :leaf)
                  |yT $ {} (:at 1637151208844) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rJhyZe8blCHW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rka1blIZeRrW) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |B1Ry-lIZgRrZ) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |r1klbeIWeRSZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |BJgeZeLbe0HZ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HkWeWlLbl0rb) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |SyfgWx8WeAHW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |rJ7xbgI-eAHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rkNeWeUWx0HW) (:text |merge) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |BkBxWxIZxArW) (:text |schema/session) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by nil) (:id |HkUxZeLZxRrb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |Skwebg8-gArb) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |BkdxZxL-l0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |ryKxZl8-x0SZ) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |r19ebe8WeArW) (:text |sid) (:type :leaf)
          |disconnect $ {} (:at 1500541255553) (:by nil) (:id |HJsgZx8-lCr-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Bknx-g8-gASW) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByalZeUblRB-) (:text |disconnect) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rkCxZl8WxCH-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1yWZxIbxRSW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |r1g--l8WeCHZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |HkWbWe8WeCSW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |B1G--lIWg0Sb) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |HkQ-bxLZx0BZ) (:text |op-time) (:type :leaf)
                  |y $ {} (:at 1637152196589) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                  |yT $ {} (:at 1637151214104) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rJ4ZWeUWeArb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rkrbZe8blCrZ) (:text |update) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HyL-Wx8WgABb) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |H1v-Wx8ZlCBb) (:text |:sessions) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |rJ_-ZgUbx0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HyKZZxUbxRBb) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |HyqWZlU-lCHb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |SyjWWlLWe0HW) (:text |session) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by nil) (:id |Syh-WgIZxCHZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |Bka-Zg8beAS-) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by |root) (:id |rJAZZl8ZgABZ) (:text |session) (:type :leaf)
                          |r $ {} (:at 1500541255553) (:by |root) (:id |S1yMbeI-e0BW) (:text |sid) (:type :leaf)
          |remove-message $ {} (:at 1529231499908) (:by |root) (:id |S1Z4cd3X-7) (:type :expr)
            :data $ {}
              |T $ {} (:at 1529231499908) (:by |root) (:id |rkMV9_nQZQ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1529231499908) (:by |root) (:id |HymV5_27ZX) (:text |remove-message) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rk5cu3XWm) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1yWZxIbxRSW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |r1g--l8WeCHZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |HkWbWe8WeCSW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |B1G--lIWg0Sb) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |HkQ-bxLZx0BZ) (:text |op-time) (:type :leaf)
                  |xT $ {} (:at 1637151319073) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                  |y $ {} (:at 1637151217868) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
              |v $ {} (:at 1529231506714) (:by |root) (:id |H1icunXWQ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1529231507936) (:by |root) (:id |H1icunXWQleaf) (:text |update-in) (:type :leaf)
                  |j $ {} (:at 1529231509725) (:by |root) (:id |r1TcOh7Z7) (:text |db) (:type :leaf)
                  |r $ {} (:at 1529231509958) (:by |root) (:id |H1QCcOnQ-X) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1529231510376) (:by |root) (:id |SyMC9_2XZQ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1529231511756) (:by |root) (:id |SkIRq_nmWm) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1529231512509) (:by |root) (:id |HkGejd2QZX) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1529231515700) (:by |root) (:id |BJZj_hQ-m) (:text |:messages) (:type :leaf)
                  |v $ {} (:at 1529231534326) (:by |root) (:id |H1bU2_hmZQ) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1529231534991) (:by |root) (:id |Syv3_27ZX) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1529231535248) (:by |root) (:id |HJXvh_3XWX) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529231536189) (:by |root) (:id |BkfPhun7bQ) (:text |messages) (:type :leaf)
                      |T $ {} (:at 1529231516827) (:by |root) (:id |r1Bi_2XZX) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529231517957) (:by |root) (:id |r1Bi_2XZXleaf) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1529231519342) (:by |root) (:id |S1m8sOh7ZQ) (:text |messages) (:type :leaf)
                          |r $ {} (:at 1529231521395) (:by |root) (:id |ryXYs_hXb7) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529231522521) (:by |root) (:id |HyvvoO2QWQ) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1529231524125) (:by |root) (:id |rJxjjdnQZQ) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |Sy_0leLZgCrW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |H1t0llUZg0r-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ryq0ee8Wl0BZ) (:text |app.updater.session) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |rJs0xxI-g0rZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |B12AggIZl0rW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:id |SyaAlgIZeCSW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |rJ00glL-xAr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |BkyJbxUWxCH-) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |S1xyWgUWlRHb) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |By-J-xU-gABb) (:text |schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |rJGJZgL-x0rZ) (:type :expr)
          :data $ {}
      |app.updater.template $ {}
        :configs $ {}
        :defs $ {}
          |add-card $ {} (:at 1592579555809) (:by |B1y7Rc-Zz) (:id |2xKHDHBQBd) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592579558786) (:by |B1y7Rc-Zz) (:id |jWEGqvd0WA) (:text |defn) (:type :leaf)
              |j $ {} (:at 1592579555809) (:by |B1y7Rc-Zz) (:id |JjmpnG8Kxn) (:text |add-card) (:type :leaf)
              |r $ {} (:at 1592579556715) (:by |B1y7Rc-Zz) (:id |1XpSgWMJd6) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1592579556715) (:by |B1y7Rc-Zz) (:id |j-YSQbIC3D) (:text |db) (:type :leaf)
                  |r $ {} (:at 1592579556715) (:by |B1y7Rc-Zz) (:id |yeKMt4OolV) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1592579556715) (:by |B1y7Rc-Zz) (:id |RjYfoLA46d) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1592579556715) (:by |B1y7Rc-Zz) (:id |ug-qKZ73ws) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1592579556715) (:by |B1y7Rc-Zz) (:id |-u-bv6EDot) (:text |op-time) (:type :leaf)
                  |yT $ {} (:at 1592579556715) (:by |B1y7Rc-Zz) (:id |twgP4wntFB) (:text |session) (:type :leaf)
                  |yj $ {} (:at 1592579556715) (:by |B1y7Rc-Zz) (:id |XMxWLPWq2l) (:text |user) (:type :leaf)
              |v $ {} (:at 1592579582156) (:by |B1y7Rc-Zz) (:id |zLj4VSPox) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592579721486) (:by |B1y7Rc-Zz) (:id |zLj4VSPoxleaf) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1592579585733) (:by |B1y7Rc-Zz) (:id |LQOuJ2RgBk) (:text |db) (:type :leaf)
                  |r $ {} (:at 1592579585987) (:by |B1y7Rc-Zz) (:id |oiZVPKgqxH) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592579586245) (:by |B1y7Rc-Zz) (:id |g6wj4EclmF) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1592579587822) (:by |B1y7Rc-Zz) (:id |KyW6s7dd0k) (:text |:templates) (:type :leaf)
                      |r $ {} (:at 1592579588396) (:by |B1y7Rc-Zz) (:id |XM1ho3Qmn) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592579591768) (:by |B1y7Rc-Zz) (:id |6t2mKz1oGq) (:text |:template-id) (:type :leaf)
                          |j $ {} (:at 1592579593684) (:by |B1y7Rc-Zz) (:id |u5qrm735ZI) (:text |op-data) (:type :leaf)
                      |v $ {} (:at 1592579597879) (:by |B1y7Rc-Zz) (:id |nq6kFAyyH) (:text |:slots) (:type :leaf)
                      |x $ {} (:at 1592579599192) (:by |B1y7Rc-Zz) (:id |J8KBqjtzDX) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592579601813) (:by |B1y7Rc-Zz) (:id |U_qg1eU6x) (:text |:slot-id) (:type :leaf)
                          |j $ {} (:at 1592579605057) (:by |B1y7Rc-Zz) (:id |v3Di2wGPVV) (:text |op-data) (:type :leaf)
                      |y $ {} (:at 1592579607217) (:by |B1y7Rc-Zz) (:id |qHJxLX-KZT) (:text |:cards) (:type :leaf)
                      |yT $ {} (:at 1592579626637) (:by |B1y7Rc-Zz) (:id |z1cOjlF5Y9) (:text |op-id) (:type :leaf)
                  |v $ {} (:at 1592579627377) (:by |B1y7Rc-Zz) (:id |LQI064Pt0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592579627811) (:by |B1y7Rc-Zz) (:id |LQI064Pt0leaf) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1592579628078) (:by |B1y7Rc-Zz) (:id |cL5RrgOz6) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592579628546) (:by |B1y7Rc-Zz) (:id |SzQI29fM78) (:text |:id) (:type :leaf)
                          |j $ {} (:at 1592579629978) (:by |B1y7Rc-Zz) (:id |_DGDS4VXL1) (:text |op-id) (:type :leaf)
                      |r $ {} (:at 1592579630339) (:by |B1y7Rc-Zz) (:id |_Bdgyu5UY1) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592579631176) (:by |B1y7Rc-Zz) (:id |_Bdgyu5UY1leaf) (:text |:text) (:type :leaf)
                          |j $ {} (:at 1592579657904) (:by |B1y7Rc-Zz) (:id |Zn3pTmYm5C) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592579658430) (:by |B1y7Rc-Zz) (:id |fVGKdCoyhU) (:text |:text) (:type :leaf)
                              |j $ {} (:at 1592579659955) (:by |B1y7Rc-Zz) (:id |75pfYzY9Xl) (:text |op-data) (:type :leaf)
                      |v $ {} (:at 1592579632366) (:by |B1y7Rc-Zz) (:id |0Z6fZYnZMy) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592579633249) (:by |B1y7Rc-Zz) (:id |0Z6fZYnZMyleaf) (:text |:time) (:type :leaf)
                          |j $ {} (:at 1592579635345) (:by |B1y7Rc-Zz) (:id |q_GrYpVYvc) (:text |op-time) (:type :leaf)
                      |x $ {} (:at 1592579635876) (:by |B1y7Rc-Zz) (:id |tXuEKAr9n7) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592579643551) (:by |B1y7Rc-Zz) (:id |tXuEKAr9n7leaf) (:text |:author-id) (:type :leaf)
                          |j $ {} (:at 1592579645882) (:by |B1y7Rc-Zz) (:id |0CDCRnKxJW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592579647396) (:by |B1y7Rc-Zz) (:id |UA3j79SJ8) (:text |:user-id) (:type :leaf)
                              |j $ {} (:at 1592579650644) (:by |B1y7Rc-Zz) (:id |bt0r6jAW_j) (:text |session) (:type :leaf)
          |choose $ {} (:at 1592578351429) (:by |B1y7Rc-Zz) (:id |eObQK-E1vk) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592578361021) (:by |B1y7Rc-Zz) (:id |PgJ13UFgFR) (:text |defn) (:type :leaf)
              |j $ {} (:at 1592578351429) (:by |B1y7Rc-Zz) (:id |4vXmcGcQXc) (:text |choose) (:type :leaf)
              |r $ {} (:at 1592578356576) (:by |B1y7Rc-Zz) (:id |voRjJLIHMH) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1592578356576) (:by |B1y7Rc-Zz) (:id |SPSAZ886sW) (:text |db) (:type :leaf)
                  |r $ {} (:at 1592578356576) (:by |B1y7Rc-Zz) (:id |2oADj2olQ7) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1592578356576) (:by |B1y7Rc-Zz) (:id |oFSDU8j7R2) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1592578356576) (:by |B1y7Rc-Zz) (:id |4a_OoOuxyT) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1592578356576) (:by |B1y7Rc-Zz) (:id |sKRSVggLo4) (:text |op-time) (:type :leaf)
                  |yT $ {} (:at 1592578356576) (:by |B1y7Rc-Zz) (:id |Ap0kLEgkSo) (:text |session) (:type :leaf)
                  |yj $ {} (:at 1592578356576) (:by |B1y7Rc-Zz) (:id |ZcjkLFYhbY) (:text |user) (:type :leaf)
              |v $ {} (:at 1592631623089) (:by |B1y7Rc-Zz) (:id |MuTQ4XUYX) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1592631623767) (:by |B1y7Rc-Zz) (:id |EElxIUYO8S) (:text |->) (:type :leaf)
                  |L $ {} (:at 1592631625000) (:by |B1y7Rc-Zz) (:id |8H2sC2EMX) (:text |db) (:type :leaf)
                  |T $ {} (:at 1592578363431) (:by |B1y7Rc-Zz) (:id |WRfO1itAw) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592578366735) (:by |B1y7Rc-Zz) (:id |WRfO1itAwleaf) (:text |assoc-in) (:type :leaf)
                      |r $ {} (:at 1592578367729) (:by |B1y7Rc-Zz) (:id |R71PQ_nxGV) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592578367996) (:by |B1y7Rc-Zz) (:id |AJVY-t4Efc) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1592578370422) (:by |B1y7Rc-Zz) (:id |6xHM4_dju) (:text |:game) (:type :leaf)
                          |r $ {} (:at 1592578373392) (:by |B1y7Rc-Zz) (:id |NK8y2i8jkq) (:text |:template-id) (:type :leaf)
                      |v $ {} (:at 1592578377804) (:by |B1y7Rc-Zz) (:id |2vaEDXtxv8) (:text |op-data) (:type :leaf)
                  |j $ {} (:at 1592631628139) (:by |B1y7Rc-Zz) (:id |1yG1DDn2D) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592631633685) (:by |B1y7Rc-Zz) (:id |1yG1DDn2Dleaf) (:text |assoc-in) (:type :leaf)
                      |j $ {} (:at 1592631634281) (:by |B1y7Rc-Zz) (:id |OkKxK4979) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592631634485) (:by |B1y7Rc-Zz) (:id |yjwlJH-MdB) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1592631635836) (:by |B1y7Rc-Zz) (:id |MHYorp6MYB) (:text |:messages) (:type :leaf)
                          |r $ {} (:at 1592631637441) (:by |B1y7Rc-Zz) (:id |7Vq1Kz1PPH) (:text |op-id) (:type :leaf)
                      |r $ {} (:at 1592631638101) (:by |B1y7Rc-Zz) (:id |GgNnFyH6a) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592631638527) (:by |B1y7Rc-Zz) (:id |GgNnFyH6aleaf) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1592631638770) (:by |B1y7Rc-Zz) (:id |MJGiGExT1H) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631641225) (:by |B1y7Rc-Zz) (:id |LwU-O7va1P) (:text |:type) (:type :leaf)
                              |j $ {} (:at 1592631643168) (:by |B1y7Rc-Zz) (:id |cQeapDhy_f) (:text |:operation) (:type :leaf)
                          |r $ {} (:at 1592631643697) (:by |B1y7Rc-Zz) (:id |FL7Yd1UHDl) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631644289) (:by |B1y7Rc-Zz) (:id |FL7Yd1UHDlleaf) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1592631645998) (:by |B1y7Rc-Zz) (:id |GJzcGsbdi5) (:text |op-id) (:type :leaf)
                          |v $ {} (:at 1592631646331) (:by |B1y7Rc-Zz) (:id |f1eDGOfNqL) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631646950) (:by |B1y7Rc-Zz) (:id |f1eDGOfNqLleaf) (:text |:time) (:type :leaf)
                              |j $ {} (:at 1592631648949) (:by |B1y7Rc-Zz) (:id |E6sTSCz4Oz) (:text |op-time) (:type :leaf)
                          |x $ {} (:at 1592631649821) (:by |B1y7Rc-Zz) (:id |pe4_7y8qSG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631653843) (:by |B1y7Rc-Zz) (:id |pe4_7y8qSGleaf) (:text |:author-id) (:type :leaf)
                              |j $ {} (:at 1592631654571) (:by |B1y7Rc-Zz) (:id |BsOeIPhFmg) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631656344) (:by |B1y7Rc-Zz) (:id |FN_5n7nqo) (:text |:user-id) (:type :leaf)
                                  |j $ {} (:at 1592631658557) (:by |B1y7Rc-Zz) (:id |_FSHFM4s-V) (:text |session) (:type :leaf)
                          |y $ {} (:at 1592631659745) (:by |B1y7Rc-Zz) (:id |LfmkpLzHSr) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631661756) (:by |B1y7Rc-Zz) (:id |LfmkpLzHSrleaf) (:text |:text) (:type :leaf)
                              |j $ {} (:at 1592631677625) (:by |B1y7Rc-Zz) (:id |vf5S7yenU) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1592631678955) (:by |B1y7Rc-Zz) (:id |UZsUSJUIwg) (:text |str) (:type :leaf)
                                  |T $ {} (:at 1592631683383) (:by |B1y7Rc-Zz) (:id |uPxumYEvpu) (:text "|\"切换了模板: ") (:type :leaf)
                                  |j $ {} (:at 1592631684103) (:by |B1y7Rc-Zz) (:id |wGBBkzPjB) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631687333) (:by |B1y7Rc-Zz) (:id |s4Uxi-euvr) (:text |get-in) (:type :leaf)
                                      |j $ {} (:at 1592631687751) (:by |B1y7Rc-Zz) (:id |0OU4xacBmF) (:text |db) (:type :leaf)
                                      |r $ {} (:at 1592631688115) (:by |B1y7Rc-Zz) (:id |ac8OvxJZt) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592631688407) (:by |B1y7Rc-Zz) (:id |Q2DSbaZmiW) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1592631691110) (:by |B1y7Rc-Zz) (:id |gEhUtwk0YV) (:text |:templates) (:type :leaf)
                                          |r $ {} (:at 1592631693926) (:by |B1y7Rc-Zz) (:id |A3qgfK3eAP) (:text |op-data) (:type :leaf)
                                          |v $ {} (:at 1592631695990) (:by |B1y7Rc-Zz) (:id |ypx_jLNx1) (:text |:text) (:type :leaf)
          |create-template $ {} (:at 1592499322202) (:by |B1y7Rc-Zz) (:id |i42pogFgox) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592499322202) (:by |B1y7Rc-Zz) (:id |miJM_dSrbX) (:text |defn) (:type :leaf)
              |j $ {} (:at 1592499322202) (:by |B1y7Rc-Zz) (:id |zURBZfBQ0w) (:text |create-template) (:type :leaf)
              |r $ {} (:at 1592499333134) (:by |B1y7Rc-Zz) (:id |W-oH4W635c) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592499333134) (:by |B1y7Rc-Zz) (:id |I7rK5Etruy) (:text |db) (:type :leaf)
                  |j $ {} (:at 1592499333134) (:by |B1y7Rc-Zz) (:id |8Nn986fshF) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1592499333134) (:by |B1y7Rc-Zz) (:id |DKMXxMQ9mj) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1592499333134) (:by |B1y7Rc-Zz) (:id |MzSRbsQ0tc) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1592499333134) (:by |B1y7Rc-Zz) (:id |-CrGSle4yQ) (:text |op-time) (:type :leaf)
                  |y $ {} (:at 1592499333134) (:by |B1y7Rc-Zz) (:id |17Wqk5f6ej) (:text |session) (:type :leaf)
                  |yT $ {} (:at 1592499333134) (:by |B1y7Rc-Zz) (:id |SDx_Ozpeba) (:text |user) (:type :leaf)
              |t $ {} (:at 1592499370186) (:by |B1y7Rc-Zz) (:id |mREdmOQ-V) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592499847434) (:by |B1y7Rc-Zz) (:id |mREdmOQ-Vleaf) (:text |let) (:type :leaf)
                  |j $ {} (:at 1592499847679) (:by |B1y7Rc-Zz) (:id |o0eIO8hezE) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592499847849) (:by |B1y7Rc-Zz) (:id |n3nONahybw) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592499872331) (:by |B1y7Rc-Zz) (:id |psfkvr1st7) (:text |pieces) (:type :leaf)
                          |j $ {} (:at 1592499883734) (:by |B1y7Rc-Zz) (:id |PLMP5q0j-Z) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637158182343) (:by |B1y7Rc-Zz) (:id |JMiWy0bhNF) (:text |re-split) (:type :leaf)
                              |r $ {} (:at 1592499909847) (:by |B1y7Rc-Zz) (:id |zvC3xdEoH) (:text |op-data) (:type :leaf)
                              |v $ {} (:at 1637158177881) (:by |B1y7Rc-Zz) (:id |8ED5ig_ZP) (:text |slot-pattern) (:type :leaf)
                      |j $ {} (:at 1592499914192) (:by |B1y7Rc-Zz) (:id |Dk52i4wDs) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592499932991) (:by |B1y7Rc-Zz) (:id |Dk52i4wDsleaf) (:text |slots) (:type :leaf)
                          |j $ {} (:at 1592499934517) (:by |B1y7Rc-Zz) (:id |B9dGfMkAdP) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637158231397) (:by |B1y7Rc-Zz) (:id |QNuXtisxA) (:text |re-find-all) (:type :leaf)
                              |r $ {} (:at 1592499940923) (:by |B1y7Rc-Zz) (:id |E3M6yryQfV) (:text |op-data) (:type :leaf)
                              |v $ {} (:at 1637158238561) (:by |B1y7Rc-Zz) (:text |slot-pattern) (:type :leaf)
                      |r $ {} (:at 1592499945073) (:by |B1y7Rc-Zz) (:id |udNYEwUjN) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592499951473) (:by |B1y7Rc-Zz) (:id |udNYEwUjNleaf) (:text |data) (:type :leaf)
                          |j $ {} (:at 1592499951721) (:by |B1y7Rc-Zz) (:id |ExhqUA5XSh) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592499952428) (:by |B1y7Rc-Zz) (:id |FO2-DIc4Hr) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592499952706) (:by |B1y7Rc-Zz) (:id |nq-SIZzfne) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592499955069) (:by |B1y7Rc-Zz) (:id |C4yLnjqpvB) (:text |:id) (:type :leaf)
                                  |j $ {} (:at 1592499955882) (:by |B1y7Rc-Zz) (:id |oOEZqDzNOA) (:text |op-id) (:type :leaf)
                              |r $ {} (:at 1592499956428) (:by |B1y7Rc-Zz) (:id |c0rSWecXUk) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592499957472) (:by |B1y7Rc-Zz) (:id |c0rSWecXUkleaf) (:text |:text) (:type :leaf)
                                  |j $ {} (:at 1592499958415) (:by |B1y7Rc-Zz) (:id |wLKB1Qdk5Y) (:text |op-data) (:type :leaf)
                              |v $ {} (:at 1592499959108) (:by |B1y7Rc-Zz) (:id |jcA2yKm2s) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592499961448) (:by |B1y7Rc-Zz) (:id |jcA2yKm2sleaf) (:text |:pieces) (:type :leaf)
                                  |j $ {} (:at 1592499963408) (:by |B1y7Rc-Zz) (:id |IJdfXfpfA0) (:text |pieces) (:type :leaf)
                              |x $ {} (:at 1592499964265) (:by |B1y7Rc-Zz) (:id |3sUG9UQyd) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592499968008) (:by |B1y7Rc-Zz) (:id |3sUG9UQydleaf) (:text |:slots) (:type :leaf)
                                  |j $ {} (:at 1592499968239) (:by |B1y7Rc-Zz) (:id |BR5V_RsO_5) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637149454783) (:by |B1y7Rc-Zz) (:id |PqO9W02Ve) (:text |->) (:type :leaf)
                                      |j $ {} (:at 1592499974713) (:by |B1y7Rc-Zz) (:id |D5oVVmKX2M) (:text |slots) (:type :leaf)
                                      |r $ {} (:at 1592499975175) (:by |B1y7Rc-Zz) (:id |c7haCZ6Cw) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592499982677) (:by |B1y7Rc-Zz) (:id |6uIpbfX2nN) (:text |map-indexed) (:type :leaf)
                                          |j $ {} (:at 1592499977949) (:by |B1y7Rc-Zz) (:id |_5dgJfPK3D) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1592499977353) (:by |B1y7Rc-Zz) (:id |V-xafNe51) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1592499978945) (:by |B1y7Rc-Zz) (:id |K_KkfEsK8v) (:type :expr)
                                                :data $ {}
                                                  |j $ {} (:at 1592499984784) (:by |B1y7Rc-Zz) (:id |SBdXBX3Upp) (:text |idx) (:type :leaf)
                                                  |r $ {} (:at 1592499999631) (:by |B1y7Rc-Zz) (:id |VNZspoX1G) (:text |slot) (:type :leaf)
                                              |r $ {} (:at 1592500001114) (:by |B1y7Rc-Zz) (:id |Hg_Al0nFc) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1592500003097) (:by |B1y7Rc-Zz) (:id |Hg_Al0nFcleaf) (:text |[]) (:type :leaf)
                                                  |j $ {} (:at 1592579910744) (:by |B1y7Rc-Zz) (:id |-NigvZ_r2u) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592579910744) (:by |B1y7Rc-Zz) (:id |TJG7kujiN7) (:text |str) (:type :leaf)
                                                      |j $ {} (:at 1592579910744) (:by |B1y7Rc-Zz) (:id |51jPFvlQQ-) (:text |op-id) (:type :leaf)
                                                      |r $ {} (:at 1592579910744) (:by |B1y7Rc-Zz) (:id |hDUc7ha9nf) (:text "|\"-") (:type :leaf)
                                                      |v $ {} (:at 1592579910744) (:by |B1y7Rc-Zz) (:id |6DpyiUwby4) (:text |idx) (:type :leaf)
                                                  |r $ {} (:at 1592500004568) (:by |B1y7Rc-Zz) (:id |0XoHIlmWlh) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1592500006123) (:by |B1y7Rc-Zz) (:id |nBpl0axkg) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1592500006900) (:by |B1y7Rc-Zz) (:id |ekoyxblSKm) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592500020644) (:by |B1y7Rc-Zz) (:id |MS9F6ykDX6) (:text |:id) (:type :leaf)
                                                          |j $ {} (:at 1592500029166) (:by |B1y7Rc-Zz) (:id |y44JVCC5W) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592500029838) (:by |B1y7Rc-Zz) (:id |gQXjt33YB5) (:text |str) (:type :leaf)
                                                              |j $ {} (:at 1592500031782) (:by |B1y7Rc-Zz) (:id |TXxI_OvAT) (:text |op-id) (:type :leaf)
                                                              |r $ {} (:at 1592500033289) (:by |B1y7Rc-Zz) (:id |_QVQd6lFMh) (:text "|\"-") (:type :leaf)
                                                              |v $ {} (:at 1592500035371) (:by |B1y7Rc-Zz) (:id |4yGT7pDsbO) (:text |idx) (:type :leaf)
                                                      |r $ {} (:at 1592500036816) (:by |B1y7Rc-Zz) (:id |pUMAKJfJwc) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592500038844) (:by |B1y7Rc-Zz) (:id |pUMAKJfJwcleaf) (:text |:order) (:type :leaf)
                                                          |j $ {} (:at 1592500039411) (:by |B1y7Rc-Zz) (:id |Mm39E5UVpz) (:text |idx) (:type :leaf)
                                                      |t $ {} (:at 1592500057640) (:by |B1y7Rc-Zz) (:id |vX1aObD4sr) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592500058649) (:by |B1y7Rc-Zz) (:id |vX1aObD4srleaf) (:text |:text) (:type :leaf)
                                                          |j $ {} (:at 1592500060011) (:by |B1y7Rc-Zz) (:id |kf2axsyk9C) (:text |slot) (:type :leaf)
                                                      |v $ {} (:at 1592500040048) (:by |B1y7Rc-Zz) (:id |Prue3JSKAb) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1592500043266) (:by |B1y7Rc-Zz) (:id |Prue3JSKAbleaf) (:text |:cards) (:type :leaf)
                                                          |j $ {} (:at 1592500041428) (:by |B1y7Rc-Zz) (:id |ccKbTNmD-A) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1592500041755) (:by |B1y7Rc-Zz) (:id |-imLEYCLqw) (:text |{}) (:type :leaf)
                                      |v $ {} (:at 1637153345481) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637153347869) (:by |B1y7Rc-Zz) (:text |pairs-map) (:type :leaf)
                  |r $ {} (:at 1592631789746) (:by |B1y7Rc-Zz) (:id |wkTQ3GZPLY) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1592631790503) (:by |B1y7Rc-Zz) (:id |yzyUHUhqHZ) (:text |->) (:type :leaf)
                      |L $ {} (:at 1592631791776) (:by |B1y7Rc-Zz) (:id |6eR29ILeJ) (:text |db) (:type :leaf)
                      |T $ {} (:at 1592500198313) (:by |B1y7Rc-Zz) (:id |k9k2BA3a5) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592500200388) (:by |B1y7Rc-Zz) (:id |k9k2BA3a5leaf) (:text |assoc-in) (:type :leaf)
                          |r $ {} (:at 1592500201613) (:by |B1y7Rc-Zz) (:id |aWMsQ4SJXr) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592500201857) (:by |B1y7Rc-Zz) (:id |lUYspBN-ra) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1592500203632) (:by |B1y7Rc-Zz) (:id |kbhfrFiyGh) (:text |:templates) (:type :leaf)
                              |r $ {} (:at 1592500206030) (:by |B1y7Rc-Zz) (:id |Q7TVpI9hB8) (:text |op-id) (:type :leaf)
                          |v $ {} (:at 1592500211071) (:by |B1y7Rc-Zz) (:id |Km54sfYexL) (:text |data) (:type :leaf)
                      |j $ {} (:at 1592631798631) (:by |B1y7Rc-Zz) (:id |b0tZcYnlq) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1592631801003) (:by |B1y7Rc-Zz) (:id |ONmNuLswhL) (:text |assoc-in) (:type :leaf)
                          |L $ {} (:at 1592631801668) (:by |B1y7Rc-Zz) (:id |8rz2dEDO1T) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631801944) (:by |B1y7Rc-Zz) (:id |2qZNOwqxv) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1592631803188) (:by |B1y7Rc-Zz) (:id |wC7nb0vSJ_) (:text |:messages) (:type :leaf)
                              |r $ {} (:at 1592631804939) (:by |B1y7Rc-Zz) (:id |1P-ACrOuaX) (:text |op-id) (:type :leaf)
                          |T $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |WK-F7FpodP) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |5gPGeg7Iwl) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |50G7fZvNeU) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |OZSS-ibLI1) (:text |:type) (:type :leaf)
                                  |j $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |AVq0BxXdnv) (:text |:operation) (:type :leaf)
                              |r $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |NveyAdMc6m) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |VMiOKm5ZNC) (:text |:id) (:type :leaf)
                                  |j $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |uurN5DLUc7) (:text |op-id) (:type :leaf)
                              |v $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |66bX3-TvdW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |YhjnnfnD5g) (:text |:time) (:type :leaf)
                                  |j $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |QgV1KUto7f) (:text |op-time) (:type :leaf)
                              |x $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |xzHYo1L1QD) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |UAaE4emcd-) (:text |:author-id) (:type :leaf)
                                  |j $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |Q1OViGw73i) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |8ah0z6yr6xj) (:text |:user-id) (:type :leaf)
                                      |j $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |7tPYyf6Rvow) (:text |session) (:type :leaf)
                              |y $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |cL_cLMaZnvs) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |e89L46Fzn-T) (:text |:text) (:type :leaf)
                                  |j $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |bcuDGB_kpRn) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631797763) (:by |B1y7Rc-Zz) (:id |zCCfxED7tvB) (:text |str) (:type :leaf)
                                      |j $ {} (:at 1592631878057) (:by |B1y7Rc-Zz) (:id |fkneG-5z1Py) (:text "|\"创建了模板: ") (:type :leaf)
                                      |r $ {} (:at 1592631858100) (:by |B1y7Rc-Zz) (:id |8piF3v3uOh) (:text |op-data) (:type :leaf)
          |remove-card $ {} (:at 1592584998056) (:by |B1y7Rc-Zz) (:id |5qq12UaSQv) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592585001046) (:by |B1y7Rc-Zz) (:id |Sp0ip7jx3n) (:text |defn) (:type :leaf)
              |j $ {} (:at 1592584998056) (:by |B1y7Rc-Zz) (:id |dqKJRBMvPJ) (:text |remove-card) (:type :leaf)
              |r $ {} (:at 1592584998675) (:by |B1y7Rc-Zz) (:id |_O66Lb3pDm) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1592584998675) (:by |B1y7Rc-Zz) (:id |4rcZUfg6L3) (:text |db) (:type :leaf)
                  |r $ {} (:at 1592584998675) (:by |B1y7Rc-Zz) (:id |4cqxjqPAMY) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1592584998675) (:by |B1y7Rc-Zz) (:id |dXgVRMU6f_) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1592584998675) (:by |B1y7Rc-Zz) (:id |CvBtEeuH1X) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1592584998675) (:by |B1y7Rc-Zz) (:id |qn2zduHbLF) (:text |op-time) (:type :leaf)
                  |yT $ {} (:at 1592584998675) (:by |B1y7Rc-Zz) (:id |Izb2FdHErq) (:text |session) (:type :leaf)
                  |yj $ {} (:at 1592584998675) (:by |B1y7Rc-Zz) (:id |ueuQP6nhg5) (:text |user) (:type :leaf)
              |v $ {} (:at 1592585004285) (:by |B1y7Rc-Zz) (:id |RRLeQg2uk) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592585008672) (:by |B1y7Rc-Zz) (:id |RRLeQg2ukleaf) (:text |dissoc-in) (:type :leaf)
                  |j $ {} (:at 1592585011543) (:by |B1y7Rc-Zz) (:id |HhzrCnist5) (:text |db) (:type :leaf)
                  |r $ {} (:at 1592585011963) (:by |B1y7Rc-Zz) (:id |AvyGxekjN0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592585012198) (:by |B1y7Rc-Zz) (:id |sNxM2_Q7qY) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1592585013699) (:by |B1y7Rc-Zz) (:id |KwMMiM-xsr) (:text |:templates) (:type :leaf)
                      |r $ {} (:at 1592585015184) (:by |B1y7Rc-Zz) (:id |x8PVNfiYN) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592585017804) (:by |B1y7Rc-Zz) (:id |7qJBf3MsR) (:text |:template-id) (:type :leaf)
                          |j $ {} (:at 1592585019598) (:by |B1y7Rc-Zz) (:id |0gkSpgNmA6) (:text |op-data) (:type :leaf)
                      |v $ {} (:at 1592585021711) (:by |B1y7Rc-Zz) (:id |na2mpThmNs) (:text |:slots) (:type :leaf)
                      |x $ {} (:at 1592585142100) (:by |B1y7Rc-Zz) (:id |qolEBCcOc) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592585145319) (:by |B1y7Rc-Zz) (:id |OOC2GcY77a) (:text |:slot-id) (:type :leaf)
                          |j $ {} (:at 1592585147458) (:by |B1y7Rc-Zz) (:id |9fRwEKewP) (:text |op-data) (:type :leaf)
                      |y $ {} (:at 1592585149628) (:by |B1y7Rc-Zz) (:id |9yMDSZefq6) (:text |:cards) (:type :leaf)
                      |yT $ {} (:at 1592585152133) (:by |B1y7Rc-Zz) (:id |Y5aro56bM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592585153416) (:by |B1y7Rc-Zz) (:id |LQwrlR7wc) (:text |:card-id) (:type :leaf)
                          |j $ {} (:at 1592585154877) (:by |B1y7Rc-Zz) (:id |P9Rx1hqLbD) (:text |op-data) (:type :leaf)
          |remove-template $ {} (:at 1592577609248) (:by |B1y7Rc-Zz) (:id |9XXZXfu0pT) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592577613088) (:by |B1y7Rc-Zz) (:id |lsSI-PLGBJ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1592577609248) (:by |B1y7Rc-Zz) (:id |I19aFs85df) (:text |remove-template) (:type :leaf)
              |r $ {} (:at 1592577610059) (:by |B1y7Rc-Zz) (:id |uY_57Db5k0) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1592577610059) (:by |B1y7Rc-Zz) (:id |yQK2MRxjAy) (:text |db) (:type :leaf)
                  |r $ {} (:at 1592577610059) (:by |B1y7Rc-Zz) (:id |nqaOi8HPDB) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1592577610059) (:by |B1y7Rc-Zz) (:id |vH904Ne5bM) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1592577610059) (:by |B1y7Rc-Zz) (:id |fqjsaJHBla) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1592577610059) (:by |B1y7Rc-Zz) (:id |JWsryn4cQk) (:text |op-time) (:type :leaf)
                  |yT $ {} (:at 1592577610059) (:by |B1y7Rc-Zz) (:id |0zkNK16vo0) (:text |session) (:type :leaf)
                  |yj $ {} (:at 1592577610059) (:by |B1y7Rc-Zz) (:id |a4tpCMBgJH) (:text |user) (:type :leaf)
              |v $ {} (:at 1592631755334) (:by |B1y7Rc-Zz) (:id |FGilCCvXB) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1592631756305) (:by |B1y7Rc-Zz) (:id |3Z6rvVmou8) (:text |->) (:type :leaf)
                  |L $ {} (:at 1592631756721) (:by |B1y7Rc-Zz) (:id |wZXLa8ObT2) (:text |db) (:type :leaf)
                  |T $ {} (:at 1592577642558) (:by |B1y7Rc-Zz) (:id |SCCcT76J0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592577644962) (:by |B1y7Rc-Zz) (:id |SCCcT76J0leaf) (:text |dissoc-in) (:type :leaf)
                      |r $ {} (:at 1592577645810) (:by |B1y7Rc-Zz) (:id |Kdr_DMMPGr) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592577646111) (:by |B1y7Rc-Zz) (:id |D7UGb5PXK5) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1592577649160) (:by |B1y7Rc-Zz) (:id |Wc-kgDnUHs) (:text |:templates) (:type :leaf)
                          |r $ {} (:at 1592577651451) (:by |B1y7Rc-Zz) (:id |lCcCp-upXE) (:text |op-data) (:type :leaf)
                  |j $ {} (:at 1592631760054) (:by |B1y7Rc-Zz) (:id |NHMbndjBBi) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592631763910) (:by |B1y7Rc-Zz) (:id |NHMbndjBBileaf) (:text |assoc-in) (:type :leaf)
                      |j $ {} (:at 1592631765946) (:by |B1y7Rc-Zz) (:id |CT9I88NA5E) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592631766132) (:by |B1y7Rc-Zz) (:id |Qb71gKoVr) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1592631767396) (:by |B1y7Rc-Zz) (:id |5eNDa3-H8l) (:text |:messages) (:type :leaf)
                          |r $ {} (:at 1592631768939) (:by |B1y7Rc-Zz) (:id |9uoOtokbZv) (:text |op-id) (:type :leaf)
                      |r $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |pxda_L6dCn) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |vnzv0tweIZ) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |X7Y9OPhAtb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |IZAsTQDexh) (:text |:type) (:type :leaf)
                              |j $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |lWgHEgCpFJ) (:text |:operation) (:type :leaf)
                          |r $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |qNguYlm5Qs) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |9k4fxAjc5g) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |TUSuAMUnV8) (:text |op-id) (:type :leaf)
                          |v $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |1XVIR75ryK) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |uwrzC-Fp6T) (:text |:time) (:type :leaf)
                              |j $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |Wrk0SGk3-l) (:text |op-time) (:type :leaf)
                          |x $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |SVvmwNL4VK) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |b4USyiiT1L) (:text |:author-id) (:type :leaf)
                              |j $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |w53gr1JB4b) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |Z1JtVLXEST) (:text |:user-id) (:type :leaf)
                                  |j $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |TDzhSfR7T0s) (:text |session) (:type :leaf)
                          |y $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |Aaspqwx2HUc) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |uiRx5k2EYGO) (:text |:text) (:type :leaf)
                              |j $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |kERAC49Ai6K) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |QezBrMBS45q) (:text |str) (:type :leaf)
                                  |j $ {} (:at 1592631776601) (:by |B1y7Rc-Zz) (:id |iDm4prSft04) (:text "|\"删除了模板: ") (:type :leaf)
                                  |r $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |eq93LNL-WZU) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |TxMFLDEHbgt) (:text |get-in) (:type :leaf)
                                      |j $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |tAAiimsitIO) (:text |db) (:type :leaf)
                                      |r $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |tb7qmsM7JD-) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |ldd6wNuiYGs) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |w40treSMGri) (:text |:templates) (:type :leaf)
                                          |r $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |YnjnaVrKPx4) (:text |op-data) (:type :leaf)
                                          |v $ {} (:at 1592631770860) (:by |B1y7Rc-Zz) (:id |VeVnXPh95dD) (:text |:text) (:type :leaf)
        :ns $ {} (:at 1592499305497) (:by |B1y7Rc-Zz) (:id |IEUZcM0vOE) (:type :expr)
          :data $ {}
            |T $ {} (:at 1592499305497) (:by |B1y7Rc-Zz) (:id |l4WvnnlDHO) (:text |ns) (:type :leaf)
            |j $ {} (:at 1592499305497) (:by |B1y7Rc-Zz) (:id |pm9axvoaXh) (:text |app.updater.template) (:type :leaf)
            |r $ {} (:at 1592499727893) (:by |B1y7Rc-Zz) (:id |AAucVKuwlf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1592499730410) (:by |B1y7Rc-Zz) (:id |eWCpC50h45) (:text |:require) (:type :leaf)
                |j $ {} (:at 1592499730595) (:by |B1y7Rc-Zz) (:id |aMyfwUx3cu) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1592499732487) (:by |B1y7Rc-Zz) (:id |ez9zSQQNsA) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1592499733459) (:by |B1y7Rc-Zz) (:id |hl9LncouiY) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1592499733658) (:by |B1y7Rc-Zz) (:id |hJQFha-Hhu) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1637158173724) (:by |B1y7Rc-Zz) (:id |7hULI9tgUP) (:text |slot-pattern) (:type :leaf)
                |r $ {} (:at 1637158196399) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637158263499) (:by |B1y7Rc-Zz) (:text |regex.core) (:type :leaf)
                    |j $ {} (:at 1637158201462) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1637158201704) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1637158206175) (:by |B1y7Rc-Zz) (:text |re-find-all) (:type :leaf)
                        |j $ {} (:at 1637158208203) (:by |B1y7Rc-Zz) (:text |re-split) (:type :leaf)
        :proc $ {} (:at 1592499305497) (:by |B1y7Rc-Zz) (:id |qkjuek4_U4) (:type :expr)
          :data $ {}
      |app.updater.user $ {}
        :defs $ {}
          |log-in $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |log-in) (:type :leaf)
              |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                  |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                  |xT $ {} (:at 1637152329547) (:by |B1y7Rc-Zz) (:text |s) (:type :leaf)
                  |y $ {} (:at 1637151221376) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
              |v $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |let-sugar) (:type :leaf)
                  |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                          |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                      |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                          |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                  |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |vals) (:type :leaf)
                              |v $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |x $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |find) (:type :leaf)
                                  |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                                      |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |and) (:type :leaf)
                                          |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                              |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                              |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |update-in) (:type :leaf)
                      |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                      |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                          |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                          |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                              |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                      |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                                          |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                                      |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                          |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                                  |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                      |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |:user-id) (:type :leaf)
                                      |v $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                                  |v $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |update) (:type :leaf)
                                      |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                                      |v $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                          |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                              |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                              |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                              |v $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                      |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                                  |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                      |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                                          |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text "|\"Wrong password for ") (:type :leaf)
                                                          |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |v $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |update) (:type :leaf)
                                  |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                  |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                                  |v $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                      |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                          |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                          |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                          |v $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                  |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                              |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                  |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                                      |j $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text "|\"No user named: ") (:type :leaf)
                                                      |r $ {} (:at 1637001718229) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
          |log-out $ {} (:at 1500541255553) (:by nil) (:id |Bk8TlgU-xAHZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |BJPaegIWgAHZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |HkuTeeIbxAB-) (:text |log-out) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |BkFael8ZgRrW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJ9pxxIZeRHW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |BkjpegUbxArZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |Hk3peeU-e0BW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |H16agxUbx0r-) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |HyRpllIblRSb) (:text |op-time) (:type :leaf)
                  |xT $ {} (:at 1637151337772) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                  |y $ {} (:at 1637151231766) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rkyRlxUZxCSZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |H1gRge8WeCBb) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1WAxxIWlAS-) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |BkzRglUWgCHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HymReg8WgRBZ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |H1V0ggLZgCB-) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |rJBRgeUbxCHZ) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1500541255553) (:by |root) (:id |HJL0egLbe0H-) (:text |:user-id) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJvCgxLbeRB-) (:text |nil) (:type :leaf)
          |sign-up $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |sign-up) (:type :leaf)
              |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                  |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                  |xT $ {} (:at 1637152334317) (:by |B1y7Rc-Zz) (:text |s) (:type :leaf)
                  |y $ {} (:at 1637151226570) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
              |v $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |let-sugar) (:type :leaf)
                  |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                          |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                      |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                          |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |find) (:type :leaf)
                              |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |vals) (:type :leaf)
                                  |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                      |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                                  |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                      |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                      |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                          |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                      |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |update-in) (:type :leaf)
                          |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                          |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                              |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |v $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                          |v $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                              |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                  |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                  |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                  |v $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                      |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                          |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                              |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text "|\"Name is taken: ") (:type :leaf)
                                              |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                      |v $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                          |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                          |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |assoc-in) (:type :leaf)
                              |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:user-id) (:type :leaf)
                              |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                          |v $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |assoc-in) (:type :leaf)
                              |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                  |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                              |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                      |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                  |r $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                      |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                  |v $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:nickname) (:type :leaf)
                                      |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                  |x $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                      |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                                          |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                                  |y $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |:avatar) (:type :leaf)
                                      |j $ {} (:at 1637001738266) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |SyuRgL-x0HZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |H1KCx8bgAH-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |Sk5AgLWlRrb) (:text |app.updater.user) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |ryi0xL-lCH-) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |r13AgIWlAS-) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:id |H16ClL-l0SZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |B10Al8-eRS-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1544376588044) (:by |B1y7Rc-Zz) (:id |SJJ1eeLWxCH-) (:text |cumulo-util.core) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |SJgJegUbeCB-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by nil) (:id |S1-yel8ZgAB-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541255553) (:by |root) (:id |SkfJxxU-eRr-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541255553) (:by |root) (:id |rJQkxg8WgCH-) (:text |find-first) (:type :leaf)
                |r $ {} (:at 1513097118588) (:by |root) (:id |rkDjPKTbf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1637001746780) (:by |B1y7Rc-Zz) (:id |rkDjPKTbfleaf) (:text |calcit.std.hash) (:type :leaf)
                    |r $ {} (:at 1637001749663) (:by |B1y7Rc-Zz) (:id |r1-ciPFpWG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1637001750149) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1513097123766) (:by |root) (:id |SkQojvtaWG) (:text |md5) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |B141llLbeCBW) (:type :expr)
          :data $ {}
    :root $ {} (:def |main!) (:ns |main)
  :users $ {}
    |B1y7Rc-Zz $ {} (:avatar nil) (:id |B1y7Rc-Zz) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
