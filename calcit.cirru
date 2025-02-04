
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |calcit-fn? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1619784579286) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1619784579286) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1619784579286) (:by |rJG4IHzWf) (:text |calcit-fn?)
              |r $ %{} :Expr (:at 1619784586210) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1619784586210) (:by |rJG4IHzWf) (:text |x)
              |v $ %{} :Expr (:at 1619784586210) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1619784586210) (:by |rJG4IHzWf) (:text |and)
                  |j $ %{} :Expr (:at 1619784586210) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1619784586210) (:by |rJG4IHzWf) (:text |map?)
                      |j $ %{} :Leaf (:at 1619784586210) (:by |rJG4IHzWf) (:text |x)
                  |r $ %{} :Expr (:at 1619784586210) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1619784586210) (:by |rJG4IHzWf) (:text |=)
                      |j $ %{} :Leaf (:at 1635965575979) (:by |rJG4IHzWf) (:text |:fn)
                      |r $ %{} :Expr (:at 1619784586210) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1619784586210) (:by |rJG4IHzWf) (:text |get)
                          |j $ %{} :Leaf (:at 1619784586210) (:by |rJG4IHzWf) (:text |x)
                          |r $ %{} :Leaf (:at 1635963844721) (:by |rJG4IHzWf) (:text |:kind)
        |calcit-import? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707502356145) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707502356145) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1707502356145) (:by |rJG4IHzWf) (:text |calcit-import?)
              |l $ %{} :Expr (:at 1707502357932) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707502357932) (:by |rJG4IHzWf) (:text |x)
              |o $ %{} :Expr (:at 1707502357932) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707502357932) (:by |rJG4IHzWf) (:text |and)
                  |b $ %{} :Expr (:at 1707502357932) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707502357932) (:by |rJG4IHzWf) (:text |map?)
                      |b $ %{} :Leaf (:at 1707502357932) (:by |rJG4IHzWf) (:text |x)
                  |h $ %{} :Expr (:at 1707502357932) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707502357932) (:by |rJG4IHzWf) (:text |=)
                      |b $ %{} :Expr (:at 1707502357932) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707502357932) (:by |rJG4IHzWf) (:text |get)
                          |b $ %{} :Leaf (:at 1707502357932) (:by |rJG4IHzWf) (:text |x)
                          |h $ %{} :Leaf (:at 1707502357932) (:by |rJG4IHzWf) (:text |:kind)
                      |h $ %{} :Leaf (:at 1707502367647) (:by |rJG4IHzWf) (:text |:import)
        |calcit-literal? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707549144593) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707549146577) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1707549144593) (:by |rJG4IHzWf) (:text |calcit-literal?)
              |h $ %{} :Expr (:at 1707549148484) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707549148484) (:by |rJG4IHzWf) (:text |x)
              |l $ %{} :Expr (:at 1707549360303) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1707549360843) (:by |rJG4IHzWf) (:text |let)
                  |T $ %{} :Expr (:at 1707549361278) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1707549353227) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1707549359877) (:by |rJG4IHzWf) (:text |ret)
                          |T $ %{} :Expr (:at 1707549312887) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1707549313969) (:by |rJG4IHzWf) (:text |or)
                              |L $ %{} :Expr (:at 1707549314430) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707549317811) (:by |rJG4IHzWf) (:text |number?)
                                  |b $ %{} :Leaf (:at 1707549318160) (:by |rJG4IHzWf) (:text |x)
                              |P $ %{} :Expr (:at 1707549314430) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707549322723) (:by |rJG4IHzWf) (:text |string?)
                                  |b $ %{} :Leaf (:at 1707549318160) (:by |rJG4IHzWf) (:text |x)
                              |R $ %{} :Expr (:at 1707549314430) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707549325908) (:by |rJG4IHzWf) (:text |bool?)
                                  |b $ %{} :Leaf (:at 1707549318160) (:by |rJG4IHzWf) (:text |x)
                              |T $ %{} :Expr (:at 1707549148484) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707549148484) (:by |rJG4IHzWf) (:text |and)
                                  |b $ %{} :Expr (:at 1707549148484) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707549148484) (:by |rJG4IHzWf) (:text |map?)
                                      |b $ %{} :Leaf (:at 1707549148484) (:by |rJG4IHzWf) (:text |x)
                                  |h $ %{} :Expr (:at 1707549148484) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707549159091) (:by |rJG4IHzWf) (:text |includes?)
                                      |b $ %{} :Expr (:at 1707549159829) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1707549161691) (:by |rJG4IHzWf) (:text |#{})
                                          |T $ %{} :Leaf (:at 1707549148484) (:by |rJG4IHzWf) (:text |:symbol)
                                          |b $ %{} :Leaf (:at 1707549164757) (:by |rJG4IHzWf) (:text |:number)
                                          |h $ %{} :Leaf (:at 1707549168256) (:by |rJG4IHzWf) (:text |:tag)
                                          |l $ %{} :Leaf (:at 1707549169943) (:by |rJG4IHzWf) (:text |:proc)
                                          |o $ %{} :Leaf (:at 1707549171525) (:by |rJG4IHzWf) (:text |:syntax)
                                          |q $ %{} :Leaf (:at 1707549176287) (:by |rJG4IHzWf) (:text |:local)
                                          |s $ %{} :Leaf (:at 1707549179582) (:by |rJG4IHzWf) (:text |:registered)
                                      |h $ %{} :Expr (:at 1707549148484) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707549148484) (:by |rJG4IHzWf) (:text |get)
                                          |b $ %{} :Leaf (:at 1707549148484) (:by |rJG4IHzWf) (:text |x)
                                          |h $ %{} :Leaf (:at 1707549148484) (:by |rJG4IHzWf) (:text |:kind)
                  |b $ %{} :Expr (:at 1707549362155) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1707549465047) (:by |rJG4IHzWf) (:text |;)
                      |T $ %{} :Leaf (:at 1707549362949) (:by |rJG4IHzWf) (:text |println)
                      |b $ %{} :Leaf (:at 1707549369203) (:by |rJG4IHzWf) (:text "|\"DETECTHING:")
                      |h $ %{} :Leaf (:at 1707549369772) (:by |rJG4IHzWf) (:text |x)
                      |l $ %{} :Leaf (:at 1707549370725) (:by |rJG4IHzWf) (:text |ret)
                  |h $ %{} :Leaf (:at 1707549371724) (:by |rJG4IHzWf) (:text |ret)
        |calcit-local? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707507353512) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707507353512) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1707507353512) (:by |rJG4IHzWf) (:text |calcit-local?)
              |h $ %{} :Expr (:at 1707507354708) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707507354708) (:by |rJG4IHzWf) (:text |x)
              |l $ %{} :Expr (:at 1707507354708) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707507354708) (:by |rJG4IHzWf) (:text |and)
                  |b $ %{} :Expr (:at 1707507354708) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707507354708) (:by |rJG4IHzWf) (:text |map?)
                      |b $ %{} :Leaf (:at 1707507354708) (:by |rJG4IHzWf) (:text |x)
                  |h $ %{} :Expr (:at 1707507354708) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707507354708) (:by |rJG4IHzWf) (:text |=)
                      |b $ %{} :Leaf (:at 1707507363338) (:by |rJG4IHzWf) (:text |:local)
                      |h $ %{} :Expr (:at 1707507354708) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507354708) (:by |rJG4IHzWf) (:text |get)
                          |b $ %{} :Leaf (:at 1707507354708) (:by |rJG4IHzWf) (:text |x)
                          |h $ %{} :Leaf (:at 1707507354708) (:by |rJG4IHzWf) (:text |:kind)
        |calcit-macro? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1693645169729) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1693645170553) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1693645169729) (:by |rJG4IHzWf) (:text |calcit-macro?)
              |h $ %{} :Expr (:at 1693645169729) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693645171662) (:by |rJG4IHzWf) (:text |x)
              |l $ %{} :Expr (:at 1693645172531) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693645172531) (:by |rJG4IHzWf) (:text |and)
                  |b $ %{} :Expr (:at 1693645172531) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693645172531) (:by |rJG4IHzWf) (:text |map?)
                      |b $ %{} :Leaf (:at 1693645172531) (:by |rJG4IHzWf) (:text |x)
                  |h $ %{} :Expr (:at 1693645172531) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693645172531) (:by |rJG4IHzWf) (:text |=)
                      |b $ %{} :Leaf (:at 1693645176476) (:by |rJG4IHzWf) (:text |:macro)
                      |h $ %{} :Expr (:at 1693645172531) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693645172531) (:by |rJG4IHzWf) (:text |get)
                          |b $ %{} :Leaf (:at 1693645172531) (:by |rJG4IHzWf) (:text |x)
                          |h $ %{} :Leaf (:at 1693645172531) (:by |rJG4IHzWf) (:text |:kind)
        |calcit-method? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1693645313281) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1693645313281) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1693645313281) (:by |rJG4IHzWf) (:text |calcit-method?)
              |h $ %{} :Expr (:at 1693645313281) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693645317876) (:by |rJG4IHzWf) (:text |x)
              |l $ %{} :Expr (:at 1693645315461) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693645315461) (:by |rJG4IHzWf) (:text |and)
                  |b $ %{} :Expr (:at 1693645315461) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693645315461) (:by |rJG4IHzWf) (:text |map?)
                      |b $ %{} :Leaf (:at 1693645315461) (:by |rJG4IHzWf) (:text |x)
                  |h $ %{} :Expr (:at 1693645315461) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693645315461) (:by |rJG4IHzWf) (:text |=)
                      |b $ %{} :Expr (:at 1693645315461) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693645315461) (:by |rJG4IHzWf) (:text |get)
                          |b $ %{} :Leaf (:at 1693645315461) (:by |rJG4IHzWf) (:text |x)
                          |h $ %{} :Leaf (:at 1693645315461) (:by |rJG4IHzWf) (:text |:kind)
                      |h $ %{} :Leaf (:at 1693645319858) (:by |rJG4IHzWf) (:text |:method)
        |calcit-proc? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612593717120) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612593717120) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1612593717120) (:by |rJG4IHzWf) (:text |calcit-proc?)
              |r $ %{} :Expr (:at 1612593717120) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612593733091) (:by |rJG4IHzWf) (:text |x)
              |v $ %{} :Expr (:at 1612593721762) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612593721762) (:by |rJG4IHzWf) (:text |and)
                  |j $ %{} :Expr (:at 1612593721762) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612593721762) (:by |rJG4IHzWf) (:text |map?)
                      |j $ %{} :Leaf (:at 1612593721762) (:by |rJG4IHzWf) (:text |x)
                  |r $ %{} :Expr (:at 1612593721762) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612593721762) (:by |rJG4IHzWf) (:text |=)
                      |j $ %{} :Leaf (:at 1635965569966) (:by |rJG4IHzWf) (:text |:proc)
                      |r $ %{} :Expr (:at 1612593721762) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612593721762) (:by |rJG4IHzWf) (:text |get)
                          |j $ %{} :Leaf (:at 1612593721762) (:by |rJG4IHzWf) (:text |x)
                          |r $ %{} :Leaf (:at 1635963907993) (:by |rJG4IHzWf) (:text |:kind)
        |calcit-raw-code? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707592418205) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707592418205) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1707592418205) (:by |rJG4IHzWf) (:text |calcit-raw-code?)
              |h $ %{} :Expr (:at 1707592418205) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707592420168) (:by |rJG4IHzWf) (:text |x)
              |l $ %{} :Expr (:at 1707592420810) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707592420810) (:by |rJG4IHzWf) (:text |and)
                  |b $ %{} :Expr (:at 1707592420810) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707592420810) (:by |rJG4IHzWf) (:text |map?)
                      |b $ %{} :Leaf (:at 1707592420810) (:by |rJG4IHzWf) (:text |x)
                  |h $ %{} :Expr (:at 1707592420810) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707592420810) (:by |rJG4IHzWf) (:text |=)
                      |b $ %{} :Expr (:at 1707592420810) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707592420810) (:by |rJG4IHzWf) (:text |get)
                          |b $ %{} :Leaf (:at 1707592420810) (:by |rJG4IHzWf) (:text |x)
                          |h $ %{} :Leaf (:at 1707592420810) (:by |rJG4IHzWf) (:text |:kind)
                      |h $ %{} :Leaf (:at 1707592423653) (:by |rJG4IHzWf) (:text |:raw-code)
        |calcit-registered? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707507628982) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707507628982) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1707507628982) (:by |rJG4IHzWf) (:text |calcit-registered?)
              |h $ %{} :Expr (:at 1707507628982) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707507632339) (:by |rJG4IHzWf) (:text |x)
              |l $ %{} :Expr (:at 1707507630627) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707507630627) (:by |rJG4IHzWf) (:text |and)
                  |b $ %{} :Expr (:at 1707507630627) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707507630627) (:by |rJG4IHzWf) (:text |map?)
                      |b $ %{} :Leaf (:at 1707507630627) (:by |rJG4IHzWf) (:text |x)
                  |h $ %{} :Expr (:at 1707507630627) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707507630627) (:by |rJG4IHzWf) (:text |=)
                      |b $ %{} :Leaf (:at 1707507688745) (:by |rJG4IHzWf) (:text |:registered)
                      |h $ %{} :Expr (:at 1707507630627) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507630627) (:by |rJG4IHzWf) (:text |get)
                          |b $ %{} :Leaf (:at 1707507630627) (:by |rJG4IHzWf) (:text |x)
                          |h $ %{} :Leaf (:at 1707507683511) (:by |rJG4IHzWf) (:text |:kind)
        |calcit-symbol? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612339921111) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612339921111) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1612339921111) (:by |rJG4IHzWf) (:text |calcit-symbol?)
              |r $ %{} :Expr (:at 1612339921111) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612339922272) (:by |rJG4IHzWf) (:text |x)
              |v $ %{} :Expr (:at 1612339922686) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612339923886) (:by |rJG4IHzWf) (:text |and)
                  |j $ %{} :Expr (:at 1612339924084) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612339924978) (:by |rJG4IHzWf) (:text |map?)
                      |j $ %{} :Leaf (:at 1612339925361) (:by |rJG4IHzWf) (:text |x)
                  |r $ %{} :Expr (:at 1612339925989) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612339926701) (:by |rJG4IHzWf) (:text |=)
                      |j $ %{} :Leaf (:at 1635963933947) (:by |rJG4IHzWf) (:text |:symbol)
                      |r $ %{} :Expr (:at 1612339930856) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612339931493) (:by |rJG4IHzWf) (:text |get)
                          |j $ %{} :Leaf (:at 1612339931851) (:by |rJG4IHzWf) (:text |x)
                          |r $ %{} :Leaf (:at 1635963912414) (:by |rJG4IHzWf) (:text |:kind)
        |calcit-syntax? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612339209572) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612339209572) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1619784556059) (:by |rJG4IHzWf) (:text |calcit-syntax?)
              |r $ %{} :Expr (:at 1612339209572) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612339212108) (:by |rJG4IHzWf) (:text |x)
              |v $ %{} :Expr (:at 1612339212637) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612339213781) (:by |rJG4IHzWf) (:text |and)
                  |j $ %{} :Expr (:at 1612339214052) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612339214908) (:by |rJG4IHzWf) (:text |map?)
                      |j $ %{} :Leaf (:at 1619784726344) (:by |rJG4IHzWf) (:text |x)
                  |r $ %{} :Expr (:at 1612339216226) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612339217591) (:by |rJG4IHzWf) (:text |=)
                      |j $ %{} :Expr (:at 1612339227872) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612339228514) (:by |rJG4IHzWf) (:text |get)
                          |j $ %{} :Leaf (:at 1612339229480) (:by |rJG4IHzWf) (:text |x)
                          |r $ %{} :Leaf (:at 1635963901166) (:by |rJG4IHzWf) (:text |:kind)
                      |r $ %{} :Leaf (:at 1635965585605) (:by |rJG4IHzWf) (:text |:syntax)
        |calcit-tag? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612340491756) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612340491756) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1693646441093) (:by |rJG4IHzWf) (:text |calcit-tag?)
              |r $ %{} :Expr (:at 1612340491756) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612340493116) (:by |rJG4IHzWf) (:text |x)
              |v $ %{} :Expr (:at 1612340494800) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612340495570) (:by |rJG4IHzWf) (:text |and)
                  |j $ %{} :Expr (:at 1612340495815) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612340497570) (:by |rJG4IHzWf) (:text |map?)
                      |j $ %{} :Leaf (:at 1612340497876) (:by |rJG4IHzWf) (:text |x)
                  |r $ %{} :Expr (:at 1612340498236) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612340499074) (:by |rJG4IHzWf) (:text |=)
                      |j $ %{} :Leaf (:at 1693646450350) (:by |rJG4IHzWf) (:text "|\"tag")
                      |r $ %{} :Expr (:at 1612340502190) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612340502725) (:by |rJG4IHzWf) (:text |get)
                          |j $ %{} :Leaf (:at 1612340503157) (:by |rJG4IHzWf) (:text |x)
                          |r $ %{} :Leaf (:at 1635963896793) (:by |rJG4IHzWf) (:text |:kind)
        |comp-bookmarks $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707628567621) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707628569038) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1707628567621) (:by |rJG4IHzWf) (:text |comp-bookmarks)
              |h $ %{} :Expr (:at 1707628567621) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707628567621) (:by |rJG4IHzWf) (:text |bookmarks)
                  |b $ %{} :Leaf (:at 1707628567621) (:by |rJG4IHzWf) (:text |pointer)
              |l $ %{} :Expr (:at 1707628570109) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707628571800) (:by |rJG4IHzWf) (:text |list->)
                  |b $ %{} :Expr (:at 1707628572453) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707628572755) (:by |rJG4IHzWf) (:text |{})
                  |h $ %{} :Expr (:at 1707628573221) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707628573773) (:by |rJG4IHzWf) (:text |->)
                      |b $ %{} :Leaf (:at 1707628577229) (:by |rJG4IHzWf) (:text |bookmarks)
                      |h $ %{} :Expr (:at 1707628577881) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707628589327) (:by |rJG4IHzWf) (:text |map-indexed)
                          |b $ %{} :Expr (:at 1707628578522) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707628578781) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1707628579001) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1707628592856) (:by |rJG4IHzWf) (:text |idx)
                                  |T $ %{} :Leaf (:at 1707628579764) (:by |rJG4IHzWf) (:text |b)
                              |h $ %{} :Expr (:at 1707628593304) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707628593594) (:by |rJG4IHzWf) (:text |[])
                                  |b $ %{} :Leaf (:at 1707628594233) (:by |rJG4IHzWf) (:text |idx)
                                  |h $ %{} :Expr (:at 1707628609879) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1707628612126) (:by |rJG4IHzWf) (:text |tag-match)
                                      |L $ %{} :Leaf (:at 1707628667190) (:by |rJG4IHzWf) (:text |b)
                                      |T $ %{} :Expr (:at 1707628615011) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Expr (:at 1707628615655) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1707628617069) (:by |rJG4IHzWf) (:text |:bookmark)
                                              |b $ %{} :Leaf (:at 1707628618372) (:by |rJG4IHzWf) (:text |ns)
                                              |h $ %{} :Leaf (:at 1707628633318) (:by |rJG4IHzWf) (:text |definition)
                                          |T $ %{} :Expr (:at 1707628594577) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1707628596197) (:by |rJG4IHzWf) (:text |div)
                                              |b $ %{} :Expr (:at 1707628596403) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1707628596723) (:by |rJG4IHzWf) (:text |{})
                                                  |b $ %{} :Expr (:at 1707628676481) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1707628678440) (:by |rJG4IHzWf) (:text |:on-click)
                                                      |b $ %{} :Expr (:at 1707628678706) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1707628678962) (:by |rJG4IHzWf) (:text |fn)
                                                          |b $ %{} :Expr (:at 1707628679169) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707628679334) (:by |rJG4IHzWf) (:text |e)
                                                              |b $ %{} :Leaf (:at 1707628680072) (:by |rJG4IHzWf) (:text |d!)
                                                          |h $ %{} :Expr (:at 1707628680558) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707628681065) (:by |rJG4IHzWf) (:text |d!)
                                                              |b $ %{} :Expr (:at 1707628684547) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707628686564) (:by |rJG4IHzWf) (:text |::)
                                                                  |b $ %{} :Leaf (:at 1707628689569) (:by |rJG4IHzWf) (:text |:point-to)
                                                                  |h $ %{} :Leaf (:at 1707628690546) (:by |rJG4IHzWf) (:text |idx)
                                                  |h $ %{} :Expr (:at 1707628730844) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1707628732651) (:by |rJG4IHzWf) (:text |:class-name)
                                                      |b $ %{} :Expr (:at 1707628788044) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1707628790024) (:by |rJG4IHzWf) (:text |str-spaced)
                                                          |L $ %{} :Leaf (:at 1707628794089) (:by |rJG4IHzWf) (:text |style-bookmark)
                                                          |T $ %{} :Expr (:at 1707628732916) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707628733186) (:by |rJG4IHzWf) (:text |if)
                                                              |b $ %{} :Expr (:at 1707628737658) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707628733898) (:by |rJG4IHzWf) (:text |=)
                                                                  |b $ %{} :Leaf (:at 1707628738231) (:by |rJG4IHzWf) (:text |pointer)
                                                                  |h $ %{} :Leaf (:at 1707628739838) (:by |rJG4IHzWf) (:text |idx)
                                                              |h $ %{} :Leaf (:at 1707628749732) (:by |rJG4IHzWf) (:text |style-bookmark-selected)
                                              |h $ %{} :Expr (:at 1707628656727) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1707628657117) (:by |rJG4IHzWf) (:text |<>)
                                                  |b $ %{} :Expr (:at 1707628659593) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1707628660743) (:by |rJG4IHzWf) (:text |str)
                                                      |T $ %{} :Leaf (:at 1707628658205) (:by |rJG4IHzWf) (:text |ns)
                                                      |b $ %{} :Leaf (:at 1707628661638) (:by |rJG4IHzWf) (:text "|\"/")
                                                      |h $ %{} :Leaf (:at 1707628663495) (:by |rJG4IHzWf) (:text |definition)
                                              |l $ %{} :Expr (:at 1707629103740) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1707629147914) (:by |rJG4IHzWf) (:text |comp-close)
                                                  |b $ %{} :Expr (:at 1707629148803) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1707629149168) (:by |rJG4IHzWf) (:text |{})
                                                      |b $ %{} :Expr (:at 1707629149484) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1707629151802) (:by |rJG4IHzWf) (:text |:class-name)
                                                          |b $ %{} :Leaf (:at 1707629155469) (:by |rJG4IHzWf) (:text |style-close)
                                                      |h $ %{} :Expr (:at 1707629203946) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1707629205358) (:by |rJG4IHzWf) (:text |:on-click)
                                                          |b $ %{} :Expr (:at 1707629205666) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707629205978) (:by |rJG4IHzWf) (:text |fn)
                                                              |b $ %{} :Expr (:at 1707629206251) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707629206408) (:by |rJG4IHzWf) (:text |e)
                                                                  |b $ %{} :Leaf (:at 1707629207392) (:by |rJG4IHzWf) (:text |d!)
                                                              |h $ %{} :Expr (:at 1707629207881) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707629212312) (:by |rJG4IHzWf) (:text |d!)
                                                                  |b $ %{} :Expr (:at 1707629213239) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1707629213732) (:by |rJG4IHzWf) (:text |::)
                                                                      |b $ %{} :Leaf (:at 1707629222731) (:by |rJG4IHzWf) (:text |:remove-bookmark)
                                                                      |h $ %{} :Leaf (:at 1707629224473) (:by |rJG4IHzWf) (:text |idx)
                                      |b $ %{} :Expr (:at 1707628634958) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707628635364) (:by |rJG4IHzWf) (:text |_)
                                          |b $ %{} :Expr (:at 1707628637971) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1707628639162) (:by |rJG4IHzWf) (:text |eprintln)
                                              |b $ %{} :Leaf (:at 1707628645841) (:by |rJG4IHzWf) (:text "|\"unknown bookmark")
                                              |h $ %{} :Leaf (:at 1707628668803) (:by |rJG4IHzWf) (:text |b)
        |comp-code $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612339082358) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612339085726) (:by |rJG4IHzWf) (:text |defcomp)
              |j $ %{} :Leaf (:at 1612339082358) (:by |rJG4IHzWf) (:text |comp-code)
              |r $ %{} :Expr (:at 1612339082358) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612339089536) (:by |rJG4IHzWf) (:text |expr)
                  |j $ %{} :Leaf (:at 1612340600473) (:by |rJG4IHzWf) (:text |last?)
              |v $ %{} :Expr (:at 1612339900354) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1612339901819) (:by |rJG4IHzWf) (:text |cond)
                  |H $ %{} :Expr (:at 1635964100450) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1635964100450) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693643842673) (:by |rJG4IHzWf) (:text |tag?)
                          |j $ %{} :Leaf (:at 1635964100450) (:by |rJG4IHzWf) (:text |expr)
                      |j $ %{} :Expr (:at 1635964100450) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1635964100450) (:by |rJG4IHzWf) (:text |<>)
                          |j $ %{} :Expr (:at 1635964100450) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1635964100450) (:by |rJG4IHzWf) (:text |str)
                              |j $ %{} :Leaf (:at 1635964252133) (:by |rJG4IHzWf) (:text |expr)
                          |n $ %{} :Leaf (:at 1693646434274) (:by |rJG4IHzWf) (:text |css-code-tag)
                  |J $ %{} :Expr (:at 1635964100450) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1635964100450) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693646444229) (:by |rJG4IHzWf) (:text |calcit-tag?)
                          |j $ %{} :Leaf (:at 1635964100450) (:by |rJG4IHzWf) (:text |expr)
                      |j $ %{} :Expr (:at 1635964100450) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1635964100450) (:by |rJG4IHzWf) (:text |<>)
                          |j $ %{} :Expr (:at 1635964100450) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1635964100450) (:by |rJG4IHzWf) (:text |str)
                              |j $ %{} :Leaf (:at 1635964100450) (:by |rJG4IHzWf) (:text "|\":")
                              |r $ %{} :Expr (:at 1635964100450) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1635964100450) (:by |rJG4IHzWf) (:text |get)
                                  |j $ %{} :Leaf (:at 1635964100450) (:by |rJG4IHzWf) (:text |expr)
                                  |r $ %{} :Leaf (:at 1635964100450) (:by |rJG4IHzWf) (:text |:val)
                          |n $ %{} :Leaf (:at 1693646433168) (:by |rJG4IHzWf) (:text |css-code-tag)
                  |L $ %{} :Expr (:at 1612339902115) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1612339902962) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612339905179) (:by |rJG4IHzWf) (:text |list?)
                          |j $ %{} :Leaf (:at 1612339906843) (:by |rJG4IHzWf) (:text |expr)
                      |j $ %{} :Expr (:at 1612339955772) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612339956194) (:by |rJG4IHzWf) (:text |div)
                          |j $ %{} :Expr (:at 1612339956901) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612339957216) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1612343424752) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612343426949) (:by |rJG4IHzWf) (:text |:class-name)
                                  |j $ %{} :Expr (:at 1666717516203) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1666717518374) (:by |rJG4IHzWf) (:text |str-spaced)
                                      |T $ %{} :Leaf (:at 1693644720001) (:by |rJG4IHzWf) (:text |css-expr-area)
                                      |b $ %{} :Leaf (:at 1666717525639) (:by |rJG4IHzWf) (:text |css-code-expr)
                              |j $ %{} :Expr (:at 1707592820429) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612340022363) (:by |rJG4IHzWf) (:text |:style)
                                  |b $ %{} :Expr (:at 1666717512961) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1666717514699) (:by |rJG4IHzWf) (:text |merge)
                                      |T $ %{} :Expr (:at 1612340213556) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612340213967) (:by |rJG4IHzWf) (:text |if)
                                          |j $ %{} :Expr (:at 1612340214626) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1612340224068) (:by |rJG4IHzWf) (:text |and)
                                              |j $ %{} :Expr (:at 1612340224269) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612340227273) (:by |rJG4IHzWf) (:text |<=)
                                                  |b $ %{} :Expr (:at 1612340227936) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612340229526) (:by |rJG4IHzWf) (:text |count)
                                                      |j $ %{} :Leaf (:at 1612340230261) (:by |rJG4IHzWf) (:text |expr)
                                                  |j $ %{} :Leaf (:at 1707549095439) (:by |rJG4IHzWf) (:text |3)
                                              |r $ %{} :Expr (:at 1707592680728) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |h $ %{} :Leaf (:at 1707592680728) (:by |rJG4IHzWf) (:text |every?)
                                                  |l $ %{} :Leaf (:at 1707592680728) (:by |rJG4IHzWf) (:text |expr)
                                                  |o $ %{} :Leaf (:at 1707592680728) (:by |rJG4IHzWf) (:text |calcit-literal?)
                                          |r $ %{} :Expr (:at 1612340239413) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1612340239803) (:by |rJG4IHzWf) (:text |{})
                                              |j $ %{} :Expr (:at 1612340240294) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612340242381) (:by |rJG4IHzWf) (:text |:display)
                                                  |j $ %{} :Leaf (:at 1707548847895) (:by |rJG4IHzWf) (:text |:inline-flex)
                                      |b $ %{} :Expr (:at 1666717536072) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1666717536072) (:by |rJG4IHzWf) (:text |if)
                                          |b $ %{} :Leaf (:at 1666717536072) (:by |rJG4IHzWf) (:text |last?)
                                          |h $ %{} :Expr (:at 1666717536072) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1666717536072) (:by |rJG4IHzWf) (:text |{})
                                              |b $ %{} :Expr (:at 1666717536072) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1666717536072) (:by |rJG4IHzWf) (:text |:display)
                                                  |b $ %{} :Leaf (:at 1707548841011) (:by |rJG4IHzWf) (:text |:inline-block)
                          |r $ %{} :Leaf (:at 1612339959197) (:by |rJG4IHzWf) (:text |&)
                          |v $ %{} :Expr (:at 1612340652530) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1612340653143) (:by |rJG4IHzWf) (:text |let)
                              |L $ %{} :Expr (:at 1612340653731) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1612340654339) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612340654968) (:by |rJG4IHzWf) (:text |size)
                                      |j $ %{} :Expr (:at 1612340655756) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612340657351) (:by |rJG4IHzWf) (:text |count)
                                          |j $ %{} :Leaf (:at 1612340658719) (:by |rJG4IHzWf) (:text |expr)
                              |T $ %{} :Expr (:at 1612339960389) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612340636008) (:by |rJG4IHzWf) (:text |map-indexed)
                                  |b $ %{} :Leaf (:at 1619784463835) (:by |rJG4IHzWf) (:text |expr)
                                  |j $ %{} :Expr (:at 1612340626319) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1612340627252) (:by |rJG4IHzWf) (:text |fn)
                                      |L $ %{} :Expr (:at 1612340628827) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1612340638338) (:by |rJG4IHzWf) (:text |idx)
                                          |T $ %{} :Leaf (:at 1612340630006) (:by |rJG4IHzWf) (:text |x)
                                      |T $ %{} :Expr (:at 1612340631909) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612339986287) (:by |rJG4IHzWf) (:text |comp-code)
                                          |j $ %{} :Leaf (:at 1612340632453) (:by |rJG4IHzWf) (:text |x)
                                          |r $ %{} :Expr (:at 1612340643908) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1612340644173) (:by |rJG4IHzWf) (:text |=)
                                              |j $ %{} :Expr (:at 1612340645577) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612340645346) (:by |rJG4IHzWf) (:text |inc)
                                                  |j $ %{} :Leaf (:at 1612340648759) (:by |rJG4IHzWf) (:text |idx)
                                              |r $ %{} :Leaf (:at 1612340650806) (:by |rJG4IHzWf) (:text |size)
                  |N $ %{} :Expr (:at 1707502332779) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1707502334551) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707502340917) (:by |rJG4IHzWf) (:text |calcit-import?)
                          |b $ %{} :Leaf (:at 1707502341790) (:by |rJG4IHzWf) (:text |expr)
                      |b $ %{} :Expr (:at 1707502343211) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707502346164) (:by |rJG4IHzWf) (:text |comp-import)
                          |b $ %{} :Leaf (:at 1707502347313) (:by |rJG4IHzWf) (:text |expr)
                  |O $ %{} :Expr (:at 1707507298181) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1707507300998) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507330800) (:by |rJG4IHzWf) (:text |calcit-local?)
                          |b $ %{} :Leaf (:at 1707507331897) (:by |rJG4IHzWf) (:text |expr)
                      |b $ %{} :Expr (:at 1707507332655) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507336856) (:by |rJG4IHzWf) (:text |comp-local)
                          |b $ %{} :Leaf (:at 1707507338458) (:by |rJG4IHzWf) (:text |expr)
                  |OT $ %{} :Expr (:at 1707507298181) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1707507300998) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507622304) (:by |rJG4IHzWf) (:text |calcit-registered?)
                          |b $ %{} :Leaf (:at 1707507331897) (:by |rJG4IHzWf) (:text |expr)
                      |b $ %{} :Expr (:at 1707507332655) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507645683) (:by |rJG4IHzWf) (:text |comp-registered)
                          |b $ %{} :Leaf (:at 1707507338458) (:by |rJG4IHzWf) (:text |expr)
                  |P $ %{} :Expr (:at 1612339908640) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1612339909097) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612339915687) (:by |rJG4IHzWf) (:text |calcit-symbol?)
                          |j $ %{} :Leaf (:at 1612339916896) (:by |rJG4IHzWf) (:text |expr)
                      |j $ %{} :Expr (:at 1612342155389) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612342157803) (:by |rJG4IHzWf) (:text |comp-symbol)
                          |j $ %{} :Leaf (:at 1612342159094) (:by |rJG4IHzWf) (:text |expr)
                  |Q $ %{} :Expr (:at 1612593702666) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1612593703715) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612593706712) (:by |rJG4IHzWf) (:text |calcit-proc?)
                          |j $ %{} :Leaf (:at 1612593708020) (:by |rJG4IHzWf) (:text |expr)
                      |b $ %{} :Expr (:at 1707548363703) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548365493) (:by |rJG4IHzWf) (:text |comp-proc)
                          |b $ %{} :Leaf (:at 1707548367180) (:by |rJG4IHzWf) (:text |expr)
                  |QT $ %{} :Expr (:at 1612593702666) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1612593703715) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1619784527481) (:by |rJG4IHzWf) (:text |calcit-fn?)
                          |j $ %{} :Leaf (:at 1612593708020) (:by |rJG4IHzWf) (:text |expr)
                      |j $ %{} :Expr (:at 1612593835416) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612593835416) (:by |rJG4IHzWf) (:text |<>)
                          |j $ %{} :Expr (:at 1619784704805) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1619784704805) (:by |rJG4IHzWf) (:text |get)
                              |j $ %{} :Leaf (:at 1619784704805) (:by |rJG4IHzWf) (:text |expr)
                              |r $ %{} :Leaf (:at 1635963554395) (:by |rJG4IHzWf) (:text |:name)
                          |n $ %{} :Leaf (:at 1666717563131) (:by |rJG4IHzWf) (:text |css-code-fn)
                  |Qj $ %{} :Expr (:at 1612593702666) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1612593703715) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1619784544651) (:by |rJG4IHzWf) (:text |calcit-syntax?)
                          |j $ %{} :Leaf (:at 1612593708020) (:by |rJG4IHzWf) (:text |expr)
                      |b $ %{} :Expr (:at 1707548617556) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548619942) (:by |rJG4IHzWf) (:text |comp-syntax)
                          |b $ %{} :Leaf (:at 1707548621297) (:by |rJG4IHzWf) (:text |expr)
                  |R $ %{} :Expr (:at 1612593702666) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1612593703715) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693645303509) (:by |rJG4IHzWf) (:text |calcit-method?)
                          |j $ %{} :Leaf (:at 1612593708020) (:by |rJG4IHzWf) (:text |expr)
                      |b $ %{} :Expr (:at 1707548714695) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548716129) (:by |rJG4IHzWf) (:text |comp-method)
                          |b $ %{} :Leaf (:at 1707548716983) (:by |rJG4IHzWf) (:text |expr)
                  |S $ %{} :Expr (:at 1707592398536) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1707592399653) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707592404511) (:by |rJG4IHzWf) (:text |calcit-raw-code?)
                          |b $ %{} :Leaf (:at 1707592406703) (:by |rJG4IHzWf) (:text |expr)
                      |b $ %{} :Expr (:at 1707592407506) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707592411828) (:by |rJG4IHzWf) (:text |comp-raw-code)
                          |b $ %{} :Leaf (:at 1707592412658) (:by |rJG4IHzWf) (:text |expr)
                  |T $ %{} :Expr (:at 1612339939185) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612339940423) (:by |rJG4IHzWf) (:text |true)
                      |T $ %{} :Expr (:at 1635965834132) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1635965834809) (:by |rJG4IHzWf) (:text |pre)
                          |L $ %{} :Expr (:at 1635965835309) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1635965835710) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1635965844448) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717594920) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1666717599402) (:by |rJG4IHzWf) (:text |css-code-default)
                          |T $ %{} :Expr (:at 1612339944437) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612339944437) (:by |rJG4IHzWf) (:text |<>)
                              |j $ %{} :Expr (:at 1612340752301) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1693643854819) (:by |rJG4IHzWf) (:text |to-lispy-string)
                                  |T $ %{} :Leaf (:at 1612339944437) (:by |rJG4IHzWf) (:text |expr)
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461830530) (:by |root) (:text |reel)
              |v $ %{} :Expr (:at 1507461832154) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507461833421) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1507461834351) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1507461834650) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461835738) (:by |root) (:text |store)
                          |j $ %{} :Expr (:at 1507461836110) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461837276) (:by |root) (:text |:store)
                              |j $ %{} :Leaf (:at 1507461838285) (:by |root) (:text |reel)
                      |j $ %{} :Expr (:at 1509727104820) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509727105928) (:by |root) (:text |states)
                          |j $ %{} :Expr (:at 1509727106316) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509727107223) (:by |root) (:text |:states)
                              |j $ %{} :Leaf (:at 1509727108033) (:by |root) (:text |store)
                      |n $ %{} :Expr (:at 1584780921790) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584780923771) (:by |rJG4IHzWf) (:text |cursor)
                          |j $ %{} :Expr (:at 1584780991636) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1610793422595) (:by |rJG4IHzWf) (:text |either)
                              |T $ %{} :Expr (:at 1584780923944) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780925829) (:by |rJG4IHzWf) (:text |:cursor)
                                  |j $ %{} :Leaf (:at 1584780926681) (:by |rJG4IHzWf) (:text |states)
                              |j $ %{} :Expr (:at 1584780993270) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780994497) (:by |rJG4IHzWf) (:text |[])
                  |T $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1499755354983) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717233951) (:by |rJG4IHzWf) (:text |:class-name)
                              |j $ %{} :Expr (:at 1499755354983) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717236906) (:by |rJG4IHzWf) (:text |str-spaced)
                                  |j $ %{} :Leaf (:at 1666717258562) (:by |rJG4IHzWf) (:text |css/global)
                                  |n $ %{} :Leaf (:at 1666717259494) (:by |rJG4IHzWf) (:text |css/fullscreen)
                                  |t $ %{} :Leaf (:at 1707626768491) (:by |rJG4IHzWf) (:text |css/column)
                      |v $ %{} :Expr (:at 1612334444489) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1707501797032) (:by |rJG4IHzWf) (:text |memof1-call)
                          |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |comp-header)
                      |w $ %{} :Expr (:at 1711478850427) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1711478853191) (:by |rJG4IHzWf) (:text |if-let)
                          |L $ %{} :Expr (:at 1711478855246) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711478855246) (:by |rJG4IHzWf) (:text |pointer)
                              |b $ %{} :Expr (:at 1711478855246) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1711478855246) (:by |rJG4IHzWf) (:text |:pointer)
                                  |b $ %{} :Leaf (:at 1711478855246) (:by |rJG4IHzWf) (:text |store)
                          |T $ %{} :Expr (:at 1707627592679) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1707627594397) (:by |rJG4IHzWf) (:text |let)
                              |L $ %{} :Expr (:at 1707627594665) (:by |rJG4IHzWf)
                                :data $ {}
                                  |b $ %{} :Expr (:at 1707627643629) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707628295985) (:by |rJG4IHzWf) (:text |bookmarks)
                                      |b $ %{} :Expr (:at 1707628296321) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707628297873) (:by |rJG4IHzWf) (:text |:bookmarks)
                                          |b $ %{} :Leaf (:at 1707628298597) (:by |rJG4IHzWf) (:text |store)
                                  |h $ %{} :Expr (:at 1707628330822) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707628332822) (:by |rJG4IHzWf) (:text |bookmark)
                                      |b $ %{} :Expr (:at 1707628334487) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707628334933) (:by |rJG4IHzWf) (:text |get)
                                          |b $ %{} :Leaf (:at 1707628336603) (:by |rJG4IHzWf) (:text |bookmarks)
                                          |h $ %{} :Leaf (:at 1707628338087) (:by |rJG4IHzWf) (:text |pointer)
                              |T $ %{} :Expr (:at 1707628342413) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1707628388521) (:by |rJG4IHzWf) (:text |tag-match)
                                  |L $ %{} :Leaf (:at 1707628394143) (:by |rJG4IHzWf) (:text |bookmark)
                                  |T $ %{} :Expr (:at 1707628394773) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Expr (:at 1707628396906) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707628399499) (:by |rJG4IHzWf) (:text |:bookmark)
                                          |b $ %{} :Leaf (:at 1707628401553) (:by |rJG4IHzWf) (:text |ns)
                                          |h $ %{} :Leaf (:at 1707628430043) (:by |rJG4IHzWf) (:text |definition)
                                      |T $ %{} :Expr (:at 1707628464273) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1707628465262) (:by |rJG4IHzWf) (:text |do)
                                          |L $ %{} :Expr (:at 1707628465825) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1738681448170) (:by |rJG4IHzWf) (:text |;)
                                              |T $ %{} :Leaf (:at 1707628467877) (:by |rJG4IHzWf) (:text |println)
                                              |b $ %{} :Leaf (:at 1707628472042) (:by |rJG4IHzWf) (:text |ns)
                                              |h $ %{} :Leaf (:at 1707628473568) (:by |rJG4IHzWf) (:text |definition)
                                          |T $ %{} :Expr (:at 1707626783101) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1707626783915) (:by |rJG4IHzWf) (:text |div)
                                              |L $ %{} :Expr (:at 1707626784232) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1707626785689) (:by |rJG4IHzWf) (:text |{})
                                                  |b $ %{} :Expr (:at 1707626786012) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1707626789399) (:by |rJG4IHzWf) (:text |:class-name)
                                                      |b $ %{} :Expr (:at 1707626804900) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1707626808503) (:by |rJG4IHzWf) (:text |str-spaced)
                                                          |T $ %{} :Leaf (:at 1707626790676) (:by |rJG4IHzWf) (:text |css/row)
                                                          |b $ %{} :Leaf (:at 1707626812480) (:by |rJG4IHzWf) (:text |css/expand)
                                              |T $ %{} :Expr (:at 1707627395288) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1707627398500) (:by |rJG4IHzWf) (:text |comp-file-entry)
                                                  |b $ %{} :Expr (:at 1707627403075) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1707627404010) (:by |rJG4IHzWf) (:text |>>)
                                                      |T $ %{} :Leaf (:at 1707627402010) (:by |rJG4IHzWf) (:text |states)
                                                      |b $ %{} :Leaf (:at 1707627406590) (:by |rJG4IHzWf) (:text |:file-entry)
                                                  |h $ %{} :Expr (:at 1707627443420) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1707627445659) (:by |rJG4IHzWf) (:text |get-in)
                                                      |b $ %{} :Leaf (:at 1707627446551) (:by |rJG4IHzWf) (:text |store)
                                                      |h $ %{} :Expr (:at 1707627447831) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1707627448012) (:by |rJG4IHzWf) (:text |[])
                                                          |b $ %{} :Leaf (:at 1707627459114) (:by |rJG4IHzWf) (:text |:ir)
                                                          |h $ %{} :Leaf (:at 1707627453640) (:by |rJG4IHzWf) (:text |:files)
                                              |X $ %{} :Expr (:at 1707628556536) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1707628559860) (:by |rJG4IHzWf) (:text |comp-bookmarks)
                                                  |b $ %{} :Leaf (:at 1707628564367) (:by |rJG4IHzWf) (:text |bookmarks)
                                                  |h $ %{} :Leaf (:at 1707628566135) (:by |rJG4IHzWf) (:text |pointer)
                                              |b $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |div)
                                                  |b $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |{})
                                                      |b $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |:class-name)
                                                          |b $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |css/expand)
                                                      |h $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |:style)
                                                          |b $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |{})
                                                              |b $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |:padding-bottom)
                                                                  |b $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |120)
                                                  |h $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |let)
                                                      |b $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |declaration)
                                                              |b $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |get-in)
                                                                  |a $ %{} :Leaf (:at 1707628539607) (:by |rJG4IHzWf) (:text |store)
                                                                  |h $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |[])
                                                                      |X $ %{} :Leaf (:at 1707628543054) (:by |rJG4IHzWf) (:text |:ir)
                                                                      |Z $ %{} :Leaf (:at 1707628544010) (:by |rJG4IHzWf) (:text |:files)
                                                                      |a $ %{} :Leaf (:at 1707628544860) (:by |rJG4IHzWf) (:text |ns)
                                                                      |b $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |:defs)
                                                                      |h $ %{} :Leaf (:at 1707628547536) (:by |rJG4IHzWf) (:text |definition)
                                                      |h $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |if)
                                                          |b $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |calcit-fn?)
                                                              |b $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |declaration)
                                                          |h $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |comp-fn)
                                                              |b $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |declaration)
                                                          |l $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |if)
                                                              |b $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |calcit-macro?)
                                                                  |b $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |declaration)
                                                              |h $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |comp-macro)
                                                                  |b $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |declaration)
                                                              |l $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |div)
                                                                  |b $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |{})
                                                                      |b $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |:class-name)
                                                                          |b $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |css-pad8)
                                                                  |h $ %{} :Expr (:at 1707626832148) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |comp-code)
                                                                      |b $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |declaration)
                                                                      |h $ %{} :Leaf (:at 1707626832148) (:by |rJG4IHzWf) (:text |false)
                                  |b $ %{} :Expr (:at 1707628404783) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707628405698) (:by |rJG4IHzWf) (:text |_)
                                      |b $ %{} :Expr (:at 1707628406910) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707628410154) (:by |rJG4IHzWf) (:text |eprintln)
                                          |b $ %{} :Leaf (:at 1707628417540) (:by |rJG4IHzWf) (:text "|\"unknown bookmark data")
                                          |h $ %{} :Leaf (:at 1707628420616) (:by |rJG4IHzWf) (:text |bookmark)
                      |wT $ %{} :Expr (:at 1615448120603) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615448123650) (:by |rJG4IHzWf) (:text |comp-preview)
                          |j $ %{} :Expr (:at 1615448123895) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615448124968) (:by |rJG4IHzWf) (:text |:preview)
                              |j $ %{} :Leaf (:at 1615448126588) (:by |rJG4IHzWf) (:text |store)
                      |x $ %{} :Expr (:at 1521954055333) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1521954057510) (:by |root) (:text |when)
                          |L $ %{} :Leaf (:at 1521954059290) (:by |root) (:text |dev?)
                          |T $ %{} :Expr (:at 1507461809635) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461815046) (:by |root) (:text |comp-reel)
                              |b $ %{} :Expr (:at 1584780610581) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1584780611347) (:by |rJG4IHzWf) (:text |>>)
                                  |T $ %{} :Leaf (:at 1509727101297) (:by |root) (:text |states)
                                  |j $ %{} :Leaf (:at 1584780613268) (:by |rJG4IHzWf) (:text |:reel)
                              |j $ %{} :Leaf (:at 1507461840459) (:by |root) (:text |reel)
                              |r $ %{} :Expr (:at 1507461840980) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507461841342) (:by |root) (:text |{})
                      |y $ %{} :Expr (:at 1707627218583) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707627219105) (:by |rJG4IHzWf) (:text |when)
                          |b $ %{} :Leaf (:at 1707627220404) (:by |rJG4IHzWf) (:text |dev?)
                          |h $ %{} :Expr (:at 1707627221211) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707627223396) (:by |rJG4IHzWf) (:text |comp-inspect)
                              |b $ %{} :Leaf (:at 1707627226156) (:by |rJG4IHzWf) (:text "|\"Store")
                              |h $ %{} :Leaf (:at 1707627227327) (:by |rJG4IHzWf) (:text |store)
                              |l $ %{} :Expr (:at 1707627244859) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707627245356) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1707627245644) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627246664) (:by |rJG4IHzWf) (:text |:bottom)
                                      |b $ %{} :Leaf (:at 1707627267215) (:by |rJG4IHzWf) (:text |0)
        |comp-file $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612336817394) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612336819195) (:by |rJG4IHzWf) (:text |defcomp)
              |j $ %{} :Leaf (:at 1612336817394) (:by |rJG4IHzWf) (:text |comp-file)
              |n $ %{} :Expr (:at 1612336819974) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1707627113896) (:by |rJG4IHzWf) (:text |ns)
                  |T $ %{} :Leaf (:at 1612336820681) (:by |rJG4IHzWf) (:text |file)
                  |b $ %{} :Leaf (:at 1707627188255) (:by |rJG4IHzWf) (:text |selected-def)
              |r $ %{} :Expr (:at 1612336835692) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1612336837214) (:by |rJG4IHzWf) (:text |div)
                  |L $ %{} :Expr (:at 1612336837462) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612336837786) (:by |rJG4IHzWf) (:text |{})
                      |j $ %{} :Expr (:at 1612337184922) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666717417098) (:by |rJG4IHzWf) (:text |:class-name)
                          |j $ %{} :Expr (:at 1612337188118) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1666717420493) (:by |rJG4IHzWf) (:text |str-spaced)
                              |T $ %{} :Leaf (:at 1666717422862) (:by |rJG4IHzWf) (:text |css/expand)
                              |j $ %{} :Leaf (:at 1666717425001) (:by |rJG4IHzWf) (:text |css/column)
                      |n $ %{} :Expr (:at 1707627036506) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707627036506) (:by |rJG4IHzWf) (:text |:style)
                          |b $ %{} :Expr (:at 1707627036506) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707627036506) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1707627036506) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707627036506) (:by |rJG4IHzWf) (:text |:border-top)
                                  |b $ %{} :Expr (:at 1707627036506) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627036506) (:by |rJG4IHzWf) (:text |str-spaced)
                                      |b $ %{} :Leaf (:at 1707627043926) (:by |rJG4IHzWf) (:text "|\"2px solid")
                                      |h $ %{} :Expr (:at 1707627036506) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627036506) (:by |rJG4IHzWf) (:text |hsl)
                                          |b $ %{} :Leaf (:at 1707627036506) (:by |rJG4IHzWf) (:text |0)
                                          |h $ %{} :Leaf (:at 1707627036506) (:by |rJG4IHzWf) (:text |0)
                                          |l $ %{} :Leaf (:at 1707627047482) (:by |rJG4IHzWf) (:text |80)
                  |j $ %{} :Expr (:at 1612337137079) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612337137721) (:by |rJG4IHzWf) (:text |let)
                      |L $ %{} :Expr (:at 1612337137961) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Expr (:at 1612337138107) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612337140596) (:by |rJG4IHzWf) (:text |defs)
                              |j $ %{} :Expr (:at 1612337141432) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612337143080) (:by |rJG4IHzWf) (:text |keys)
                                  |j $ %{} :Expr (:at 1612337143756) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612337144294) (:by |rJG4IHzWf) (:text |get)
                                      |j $ %{} :Leaf (:at 1612337148073) (:by |rJG4IHzWf) (:text |file)
                                      |r $ %{} :Leaf (:at 1635963520451) (:by |rJG4IHzWf) (:text |:defs)
                      |T $ %{} :Expr (:at 1612336873944) (:by |rJG4IHzWf)
                        :data $ {}
                          |5 $ %{} :Leaf (:at 1707626976845) (:by |rJG4IHzWf) (:text |list->)
                          |D $ %{} :Expr (:at 1612336876643) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612336874577) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1612337203753) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717428659) (:by |rJG4IHzWf) (:text |:class-name)
                                  |j $ %{} :Expr (:at 1612337205506) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1666717432643) (:by |rJG4IHzWf) (:text |str-spaced)
                                      |j $ %{} :Leaf (:at 1666717434798) (:by |rJG4IHzWf) (:text |css/expand)
                                      |r $ %{} :Leaf (:at 1707626998830) (:by |rJG4IHzWf) (:text |css/column)
                          |V $ %{} :Expr (:at 1612337153876) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1619784396284) (:by |rJG4IHzWf) (:text |->)
                              |j $ %{} :Leaf (:at 1612337157109) (:by |rJG4IHzWf) (:text |defs)
                              |n $ %{} :Expr (:at 1612337705879) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1635962788037) (:by |rJG4IHzWf) (:text |.to-list)
                              |p $ %{} :Expr (:at 1612343348425) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612343349288) (:by |rJG4IHzWf) (:text |sort)
                                  |j $ %{} :Leaf (:at 1635962718638) (:by |rJG4IHzWf) (:text |&compare)
                              |r $ %{} :Expr (:at 1612337624485) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612337625193) (:by |rJG4IHzWf) (:text |map)
                                  |j $ %{} :Expr (:at 1612337626978) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612337627257) (:by |rJG4IHzWf) (:text |fn)
                                      |j $ %{} :Expr (:at 1612337627487) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612337634413) (:by |rJG4IHzWf) (:text |name)
                                      |r $ %{} :Expr (:at 1707626981123) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1707626981657) (:by |rJG4IHzWf) (:text |[])
                                          |L $ %{} :Leaf (:at 1707627347035) (:by |rJG4IHzWf) (:text |name)
                                          |T $ %{} :Expr (:at 1612337636537) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1612337638163) (:by |rJG4IHzWf) (:text |div)
                                              |j $ %{} :Expr (:at 1612337638396) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612337638723) (:by |rJG4IHzWf) (:text |{})
                                                  |j $ %{} :Expr (:at 1612338764670) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612338767451) (:by |rJG4IHzWf) (:text |:class-name)
                                                      |j $ %{} :Expr (:at 1693644871811) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1693644874402) (:by |rJG4IHzWf) (:text |str-spaced)
                                                          |L $ %{} :Leaf (:at 1693644877087) (:by |rJG4IHzWf) (:text |css-pad8)
                                                          |T $ %{} :Leaf (:at 1693644694969) (:by |rJG4IHzWf) (:text |css-hover-item)
                                                          |b $ %{} :Leaf (:at 1693646775963) (:by |rJG4IHzWf) (:text |css/font-code!)
                                                  |n $ %{} :Expr (:at 1612338801992) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612338803718) (:by |rJG4IHzWf) (:text |:style)
                                                      |j $ %{} :Expr (:at 1612338810777) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1612338811206) (:by |rJG4IHzWf) (:text |if)
                                                          |f $ %{} :Expr (:at 1707627179591) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707627179687) (:by |rJG4IHzWf) (:text |=)
                                                              |b $ %{} :Leaf (:at 1707627181271) (:by |rJG4IHzWf) (:text |name)
                                                              |h $ %{} :Leaf (:at 1707627184899) (:by |rJG4IHzWf) (:text |selected-def)
                                                          |r $ %{} :Expr (:at 1612338820102) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1612338820586) (:by |rJG4IHzWf) (:text |{})
                                                              |j $ %{} :Expr (:at 1612338820984) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1612338824237) (:by |rJG4IHzWf) (:text |:background-color)
                                                                  |j $ %{} :Expr (:at 1612338824826) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1612338826137) (:by |rJG4IHzWf) (:text |hsl)
                                                                      |j $ %{} :Leaf (:at 1612338826628) (:by |rJG4IHzWf) (:text |0)
                                                                      |r $ %{} :Leaf (:at 1612338826984) (:by |rJG4IHzWf) (:text |0)
                                                                      |v $ %{} :Leaf (:at 1612338827694) (:by |rJG4IHzWf) (:text |95)
                                                  |r $ %{} :Expr (:at 1612338772627) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612338774183) (:by |rJG4IHzWf) (:text |:on-click)
                                                      |j $ %{} :Expr (:at 1612338774491) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1612338774831) (:by |rJG4IHzWf) (:text |fn)
                                                          |j $ %{} :Expr (:at 1612338775329) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1612338775588) (:by |rJG4IHzWf) (:text |e)
                                                              |j $ %{} :Leaf (:at 1612338776047) (:by |rJG4IHzWf) (:text |d!)
                                                          |r $ %{} :Expr (:at 1612338776521) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707627070994) (:by |rJG4IHzWf) (:text |d!)
                                                              |b $ %{} :Expr (:at 1707627072539) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707627073261) (:by |rJG4IHzWf) (:text |::)
                                                                  |b $ %{} :Leaf (:at 1707627075596) (:by |rJG4IHzWf) (:text |:new-bookmark)
                                                                  |h $ %{} :Expr (:at 1707627077099) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1707627077247) (:by |rJG4IHzWf) (:text |::)
                                                                      |b $ %{} :Leaf (:at 1707627094847) (:by |rJG4IHzWf) (:text |:bookmark)
                                                                      |h $ %{} :Leaf (:at 1707627111396) (:by |rJG4IHzWf) (:text |ns)
                                                                      |l $ %{} :Leaf (:at 1707627103287) (:by |rJG4IHzWf) (:text |name)
                                              |r $ %{} :Expr (:at 1612337639191) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612337639634) (:by |rJG4IHzWf) (:text |<>)
                                                  |j $ %{} :Leaf (:at 1612337640438) (:by |rJG4IHzWf) (:text |name)
        |comp-file-entry $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707627408411) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707627408411) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1707627408411) (:by |rJG4IHzWf) (:text |comp-file-entry)
              |h $ %{} :Expr (:at 1707627412164) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707627413199) (:by |rJG4IHzWf) (:text |states)
                  |b $ %{} :Leaf (:at 1707627441111) (:by |rJG4IHzWf) (:text |files)
              |l $ %{} :Expr (:at 1707627425901) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1707627426919) (:by |rJG4IHzWf) (:text |let)
                  |L $ %{} :Expr (:at 1707627427527) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Expr (:at 1707627514962) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707627516010) (:by |rJG4IHzWf) (:text |cursor)
                          |b $ %{} :Expr (:at 1707627516346) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707627526098) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1707627526919) (:by |rJG4IHzWf) (:text |states)
                      |T $ %{} :Expr (:at 1707627427862) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707627427862) (:by |rJG4IHzWf) (:text |state)
                          |b $ %{} :Expr (:at 1707627427862) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707627427862) (:by |rJG4IHzWf) (:text |either)
                              |b $ %{} :Expr (:at 1707627427862) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707627427862) (:by |rJG4IHzWf) (:text |:data)
                                  |b $ %{} :Leaf (:at 1707627427862) (:by |rJG4IHzWf) (:text |states)
                              |h $ %{} :Expr (:at 1707627427862) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707627427862) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1707627427862) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627427862) (:by |rJG4IHzWf) (:text |:selected)
                                      |b $ %{} :Leaf (:at 1707627427862) (:by |rJG4IHzWf) (:text |nil)
                  |T $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |div)
                      |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |css/column)
                          |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:style)
                              |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:width)
                                      |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |400)
                      |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |let)
                          |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |ns-names)
                                  |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |if)
                                      |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627494378) (:by |rJG4IHzWf) (:text |some?)
                                          |b $ %{} :Leaf (:at 1707627494839) (:by |rJG4IHzWf) (:text |files)
                                      |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |keys)
                                          |b $ %{} :Leaf (:at 1707627497120) (:by |rJG4IHzWf) (:text |files)
                                      |l $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |#{})
                          |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |;)
                              |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |when)
                              |h $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |dev?)
                              |l $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |js/console.log)
                                  |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |store)
                          |l $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |div)
                              |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |css/expand)
                                  |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:style)
                                      |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |{})
                                          |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:padding)
                                              |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text "|\"8 0px")
                                          |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:overflow)
                                              |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:auto)
                                          |l $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:border-right)
                                              |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |str)
                                                  |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                                  |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |hsl)
                                                      |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |0)
                                                      |h $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |0)
                                                      |l $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |90)
                              |h $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |&)
                              |l $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |if)
                                  |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |empty?)
                                      |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |ns-names)
                                  |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |[])
                                      |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |div)
                                          |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |{})
                                              |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:style)
                                                  |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |{})
                                                      |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:padding)
                                                          |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text "|\"0 12px")
                                          |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |<>)
                                              |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text "|\"No namespaces")
                                              |h $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |css/font-fancy)
                                  |l $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |->)
                                      |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |ns-names)
                                      |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |.to-list)
                                      |l $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |sort)
                                          |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |&compare)
                                      |o $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |map)
                                          |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |fn)
                                              |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |name)
                                              |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |div)
                                                  |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |{})
                                                      |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:on-click)
                                                          |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |fn)
                                                              |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |e)
                                                                  |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |d!)
                                                              |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |d!)
                                                                  |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |cursor)
                                                                  |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |assoc)
                                                                      |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |state)
                                                                      |h $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:selected)
                                                                      |l $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |name)
                                                      |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:style)
                                                          |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |if)
                                                              |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |=)
                                                                  |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |name)
                                                                  |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:selected)
                                                                      |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |state)
                                                              |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |{})
                                                                  |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:background-color)
                                                                      |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |hsl)
                                                                          |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |0)
                                                                          |h $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |0)
                                                                          |l $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |94)
                                                      |l $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:class-name)
                                                          |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |str-spaced)
                                                              |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |css-pad8)
                                                              |h $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |css-hover-item)
                                                              |l $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |css/font-code!)
                                                  |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |<>)
                                                      |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |name)
                      |l $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |let)
                          |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |selected)
                                  |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:selected)
                                      |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |state)
                              |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |has-file?)
                                  |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |some-in?)
                                      |b $ %{} :Leaf (:at 1707627503480) (:by |rJG4IHzWf) (:text |files)
                                      |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |[])
                                          |l $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |selected)
                          |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |if)
                              |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |has-file?)
                              |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |comp-file)
                                  |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |selected)
                                  |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |get-in)
                                      |b $ %{} :Leaf (:at 1707627507437) (:by |rJG4IHzWf) (:text |files)
                                      |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |[])
                                          |l $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |selected)
                                  |l $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |nil)
                              |l $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |div)
                                  |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |{})
                                      |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:class-name)
                                          |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |str-spaced)
                                              |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |css/expand)
                                              |h $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |css/font-fancy)
                                      |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:style)
                                          |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |{})
                                              |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |:padding)
                                                  |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text "|\"0 8px")
                                  |h $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |<>)
                                      |b $ %{} :Expr (:at 1707627414542) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |str)
                                          |b $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text "|\"No file slected: ")
                                          |h $ %{} :Leaf (:at 1707627414542) (:by |rJG4IHzWf) (:text |selected)
        |comp-fn $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612339104485) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612339106540) (:by |rJG4IHzWf) (:text |defcomp)
              |j $ %{} :Leaf (:at 1612339104485) (:by |rJG4IHzWf) (:text |comp-fn)
              |r $ %{} :Expr (:at 1612339104485) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612339109906) (:by |rJG4IHzWf) (:text |f)
              |v $ %{} :Expr (:at 1612339111128) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612339116854) (:by |rJG4IHzWf) (:text |div)
                  |j $ %{} :Expr (:at 1612339117075) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612339117384) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1693646588171) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693646590642) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1693646592696) (:by |rJG4IHzWf) (:text |css-pad8)
                  |r $ %{} :Expr (:at 1612339135679) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612339136345) (:by |rJG4IHzWf) (:text |div)
                      |L $ %{} :Expr (:at 1612339136610) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612339136892) (:by |rJG4IHzWf) (:text |{})
                      |T $ %{} :Expr (:at 1612339117947) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612339118960) (:by |rJG4IHzWf) (:text |<>)
                          |j $ %{} :Expr (:at 1612339120375) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612339121461) (:by |rJG4IHzWf) (:text |str)
                              |j $ %{} :Leaf (:at 1612339124501) (:by |rJG4IHzWf) (:text "|\"Name: ")
                              |n $ %{} :Expr (:at 1612339182460) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612339183185) (:by |rJG4IHzWf) (:text |get)
                                  |j $ %{} :Leaf (:at 1612339184252) (:by |rJG4IHzWf) (:text |f)
                                  |r $ %{} :Leaf (:at 1635963864621) (:by |rJG4IHzWf) (:text |:ns)
                              |o $ %{} :Leaf (:at 1612339188329) (:by |rJG4IHzWf) (:text "|\"/")
                              |r $ %{} :Expr (:at 1612339125083) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612339132646) (:by |rJG4IHzWf) (:text |get)
                                  |j $ %{} :Leaf (:at 1612339126791) (:by |rJG4IHzWf) (:text |f)
                                  |r $ %{} :Leaf (:at 1635963866893) (:by |rJG4IHzWf) (:text |:name)
                  |v $ %{} :Expr (:at 1612339137638) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612339138137) (:by |rJG4IHzWf) (:text |div)
                      |j $ %{} :Expr (:at 1612339138362) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612339138642) (:by |rJG4IHzWf) (:text |{})
                      |r $ %{} :Expr (:at 1612339139091) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612339139709) (:by |rJG4IHzWf) (:text |<>)
                          |j $ %{} :Expr (:at 1612339145342) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612339146572) (:by |rJG4IHzWf) (:text |str)
                              |j $ %{} :Leaf (:at 1612340373792) (:by |rJG4IHzWf) (:text "|\"Args:")
                      |v $ %{} :Expr (:at 1612340074014) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612340074014) (:by |rJG4IHzWf) (:text |comp-code)
                          |j $ %{} :Expr (:at 1612340074014) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612340074014) (:by |rJG4IHzWf) (:text |get)
                              |j $ %{} :Leaf (:at 1612340074014) (:by |rJG4IHzWf) (:text |f)
                              |r $ %{} :Leaf (:at 1635963870231) (:by |rJG4IHzWf) (:text |:args)
                          |r $ %{} :Leaf (:at 1612340614853) (:by |rJG4IHzWf) (:text |false)
                  |x $ %{} :Expr (:at 1612339190475) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612339191217) (:by |rJG4IHzWf) (:text |div)
                      |j $ %{} :Expr (:at 1612339191729) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612339192063) (:by |rJG4IHzWf) (:text |{})
                      |n $ %{} :Expr (:at 1612340355472) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612340356238) (:by |rJG4IHzWf) (:text |<>)
                          |j $ %{} :Expr (:at 1612340356979) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612340357582) (:by |rJG4IHzWf) (:text |str)
                              |j $ %{} :Leaf (:at 1612340369749) (:by |rJG4IHzWf) (:text "|\"Code:")
                      |r $ %{} :Expr (:at 1612339192655) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612339195709) (:by |rJG4IHzWf) (:text |comp-code)
                          |j $ %{} :Expr (:at 1612339196718) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612339197729) (:by |rJG4IHzWf) (:text |get)
                              |j $ %{} :Leaf (:at 1612339198036) (:by |rJG4IHzWf) (:text |f)
                              |r $ %{} :Leaf (:at 1635963872124) (:by |rJG4IHzWf) (:text |:code)
                          |r $ %{} :Leaf (:at 1612340610549) (:by |rJG4IHzWf) (:text |false)
        |comp-header $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612334425148) (:by |rJG4IHzWf) (:text |defcomp)
              |j $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |comp-header)
              |n $ %{} :Expr (:at 1612334427897) (:by |rJG4IHzWf)
                :data $ {}
              |r $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |div)
                  |j $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |{})
                      |j $ %{} :Expr (:at 1612334684458) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612334685905) (:by |rJG4IHzWf) (:text |:style)
                          |j $ %{} :Expr (:at 1612334686159) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612334686440) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1612334686715) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612334693392) (:by |rJG4IHzWf) (:text |:border-bottom)
                                  |j $ %{} :Expr (:at 1612334693764) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612334694295) (:by |rJG4IHzWf) (:text |str)
                                      |j $ %{} :Leaf (:at 1612334699938) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                      |r $ %{} :Expr (:at 1612334701414) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612334701905) (:by |rJG4IHzWf) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1612334702343) (:by |rJG4IHzWf) (:text |0)
                                          |r $ %{} :Leaf (:at 1612334702592) (:by |rJG4IHzWf) (:text |0)
                                          |v $ %{} :Leaf (:at 1612334740625) (:by |rJG4IHzWf) (:text |90)
                              |r $ %{} :Expr (:at 1612334730345) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612334731949) (:by |rJG4IHzWf) (:text |:padding)
                                  |j $ %{} :Leaf (:at 1612334732917) (:by |rJG4IHzWf) (:text |8)
                  |r $ %{} :Expr (:at 1666718174205) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1666718175258) (:by |rJG4IHzWf) (:text |div)
                      |L $ %{} :Expr (:at 1666718175718) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666718176040) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666718176539) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718621853) (:by |rJG4IHzWf) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1666718629347) (:by |rJG4IHzWf) (:text |css-file-button)
                          |h $ %{} :Expr (:at 1666718261402) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718266262) (:by |rJG4IHzWf) (:text |:on-click)
                              |b $ %{} :Expr (:at 1666718266585) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666718266837) (:by |rJG4IHzWf) (:text |fn)
                                  |b $ %{} :Expr (:at 1666718267233) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1666718267439) (:by |rJG4IHzWf) (:text |e)
                                      |b $ %{} :Leaf (:at 1666718269042) (:by |rJG4IHzWf) (:text |d!)
                                  |h $ %{} :Expr (:at 1666718269539) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1666718274796) (:by |rJG4IHzWf) (:text |->)
                                      |b $ %{} :Leaf (:at 1666718275913) (:by |rJG4IHzWf) (:text |e)
                                      |h $ %{} :Leaf (:at 1666718278392) (:by |rJG4IHzWf) (:text |:event)
                                      |l $ %{} :Leaf (:at 1666718377877) (:by |rJG4IHzWf) (:text |.-currentTarget)
                                      |m $ %{} :Leaf (:at 1666718301820) (:by |rJG4IHzWf) (:text |.-children)
                                      |n $ %{} :Leaf (:at 1666718304933) (:by |rJG4IHzWf) (:text |.-0)
                                      |o $ %{} :Expr (:at 1666718280885) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1666718285575) (:by |rJG4IHzWf) (:text |.!click)
                      |T $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |input)
                          |j $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |:type)
                                  |j $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text "|\"file")
                              |p $ %{} :Expr (:at 1666718217176) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666718221468) (:by |rJG4IHzWf) (:text |:style)
                                  |b $ %{} :Expr (:at 1666718222050) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1666718222453) (:by |rJG4IHzWf) (:text |{})
                                      |b $ %{} :Expr (:at 1666718222698) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1666718224840) (:by |rJG4IHzWf) (:text |:opacity)
                                          |b $ %{} :Leaf (:at 1666718229250) (:by |rJG4IHzWf) (:text |0.2)
                                      |e $ %{} :Expr (:at 1666718458105) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1666718459253) (:by |rJG4IHzWf) (:text |:width)
                                          |b $ %{} :Leaf (:at 1666718461310) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Expr (:at 1666718231358) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1666718233360) (:by |rJG4IHzWf) (:text |:top)
                                          |b $ %{} :Leaf (:at 1666718233551) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Expr (:at 1666718245418) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1666718248523) (:by |rJG4IHzWf) (:text |:position)
                                          |b $ %{} :Leaf (:at 1666718254699) (:by |rJG4IHzWf) (:text |:absolute)
                                      |o $ %{} :Expr (:at 1666718426871) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1666718429674) (:by |rJG4IHzWf) (:text |:pointer-events)
                                          |b $ %{} :Leaf (:at 1666718430572) (:by |rJG4IHzWf) (:text |:none)
                              |v $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |:on-change)
                                  |j $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |fn)
                                      |j $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |e)
                                          |j $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |d!)
                                      |r $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |let)
                                          |j $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |file)
                                                  |j $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |->)
                                                      |j $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |:event)
                                                          |j $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |e)
                                                      |r $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |.-target)
                                                      |v $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |.-files)
                                                      |x $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |aget)
                                                          |j $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |0)
                                              |j $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |fr)
                                                  |j $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1693645077584) (:by |rJG4IHzWf) (:text |new)
                                                      |b $ %{} :Leaf (:at 1693645075433) (:by |rJG4IHzWf) (:text |js/FileReader)
                                          |r $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |->)
                                              |j $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |:event)
                                                  |j $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |e)
                                              |r $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |.-target)
                                              |v $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |aset)
                                                  |j $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text "|\"value")
                                                  |r $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |nil)
                                          |v $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1693645101038) (:by |rJG4IHzWf) (:text |set!)
                                              |j $ %{} :Expr (:at 1693645096863) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1693645098884) (:by |rJG4IHzWf) (:text |.-onload)
                                                  |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |fr)
                                              |v $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |fn)
                                                  |j $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |event)
                                                  |r $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |:ir-data)
                                                      |r $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1635962913883) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                                          |j $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |->)
                                                              |j $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |event)
                                                              |r $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |.-target)
                                                              |v $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |.-result)
                                          |x $ %{} :Expr (:at 1612334422846) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1635962919995) (:by |rJG4IHzWf) (:text |.!readAsText)
                                              |j $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |fr)
                                              |r $ %{} :Leaf (:at 1612334422846) (:by |rJG4IHzWf) (:text |file)
                      |b $ %{} :Expr (:at 1666718189003) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666718189956) (:by |rJG4IHzWf) (:text |div)
                          |b $ %{} :Expr (:at 1666718190383) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718191540) (:by |rJG4IHzWf) (:text |{})
                          |h $ %{} :Expr (:at 1666718192279) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718192718) (:by |rJG4IHzWf) (:text |<>)
                              |b $ %{} :Leaf (:at 1666718201152) (:by |rJG4IHzWf) (:text "|\"Pick IR file")
        |comp-import $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707502376104) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707502377921) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1707502376104) (:by |rJG4IHzWf) (:text |comp-import)
              |h $ %{} :Expr (:at 1707502376104) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707502376104) (:by |rJG4IHzWf) (:text |expr)
              |l $ %{} :Expr (:at 1707502379111) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707502379111) (:by |rJG4IHzWf) (:text |div)
                  |b $ %{} :Expr (:at 1707502379111) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707502379111) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1707502379111) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707502379111) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Expr (:at 1707502379111) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707502379111) (:by |rJG4IHzWf) (:text |str-spaced)
                              |b $ %{} :Leaf (:at 1707502379111) (:by |rJG4IHzWf) (:text |css/column)
                              |h $ %{} :Leaf (:at 1707502379111) (:by |rJG4IHzWf) (:text |css-code-symbol)
                      |e $ %{} :Expr (:at 1707507477817) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507477817) (:by |rJG4IHzWf) (:text |:style)
                          |b $ %{} :Expr (:at 1707507477817) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707507477817) (:by |rJG4IHzWf) (:text |merge)
                              |b $ %{} :Expr (:at 1707507477817) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707507477817) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1707507477817) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707507477817) (:by |rJG4IHzWf) (:text |:display)
                                      |b $ %{} :Leaf (:at 1707507505307) (:by |rJG4IHzWf) (:text |:inline-flex)
                      |h $ %{} :Expr (:at 1707507475056) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507475056) (:by |rJG4IHzWf) (:text |:on-click)
                          |b $ %{} :Expr (:at 1707507475056) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707507475056) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1707507475056) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707507475056) (:by |rJG4IHzWf) (:text |e)
                                  |b $ %{} :Leaf (:at 1707507475056) (:by |rJG4IHzWf) (:text |d!)
                              |h $ %{} :Expr (:at 1707507475056) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707507475056) (:by |rJG4IHzWf) (:text |d!)
                                  |b $ %{} :Leaf (:at 1707507475056) (:by |rJG4IHzWf) (:text |:preview)
                                  |h $ %{} :Leaf (:at 1707507475056) (:by |rJG4IHzWf) (:text |expr)
                  |h $ %{} :Expr (:at 1707502379111) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707502379111) (:by |rJG4IHzWf) (:text |<>)
                      |X $ %{} :Expr (:at 1707507198606) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507198606) (:by |rJG4IHzWf) (:text |get)
                          |b $ %{} :Leaf (:at 1707507198606) (:by |rJG4IHzWf) (:text |expr)
                          |h $ %{} :Leaf (:at 1707507198606) (:by |rJG4IHzWf) (:text |:def)
                  |l $ %{} :Expr (:at 1707628912937) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1707628915167) (:by |rJG4IHzWf) (:text |div)
                      |L $ %{} :Expr (:at 1707628915413) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707628915697) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1707628915922) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707628917314) (:by |rJG4IHzWf) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1707628920389) (:by |rJG4IHzWf) (:text |css/row-middle)
                      |T $ %{} :Expr (:at 1707507199672) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507200730) (:by |rJG4IHzWf) (:text |<>)
                          |b $ %{} :Expr (:at 1707507203817) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707507203817) (:by |rJG4IHzWf) (:text |str)
                              |b $ %{} :Expr (:at 1707507203817) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707507203817) (:by |rJG4IHzWf) (:text |:ns)
                                  |b $ %{} :Leaf (:at 1707507203817) (:by |rJG4IHzWf) (:text |expr)
                          |h $ %{} :Leaf (:at 1707507212840) (:by |rJG4IHzWf) (:text |style-import-ns)
                      |b $ %{} :Expr (:at 1707628921650) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707628921880) (:by |rJG4IHzWf) (:text |a)
                          |b $ %{} :Expr (:at 1707628922526) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707628923240) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1707628923524) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707628926891) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1707628929290) (:by |rJG4IHzWf) (:text |css/link)
                              |h $ %{} :Expr (:at 1707628931218) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707628933399) (:by |rJG4IHzWf) (:text |:inner-text)
                                  |b $ %{} :Leaf (:at 1707628939198) (:by |rJG4IHzWf) (:text "|\"goto")
                              |j $ %{} :Expr (:at 1707629384530) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707629386117) (:by |rJG4IHzWf) (:text |:style)
                                  |b $ %{} :Expr (:at 1707629386849) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707629387912) (:by |rJG4IHzWf) (:text |{})
                                      |b $ %{} :Expr (:at 1707629388246) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707629389889) (:by |rJG4IHzWf) (:text |:font-size)
                                          |b $ %{} :Leaf (:at 1707629394192) (:by |rJG4IHzWf) (:text |10)
                              |l $ %{} :Expr (:at 1707628951278) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707628952566) (:by |rJG4IHzWf) (:text |:on-click)
                                  |b $ %{} :Expr (:at 1707628952871) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707628953135) (:by |rJG4IHzWf) (:text |fn)
                                      |b $ %{} :Expr (:at 1707628953372) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707628959766) (:by |rJG4IHzWf) (:text |e)
                                          |b $ %{} :Leaf (:at 1707628957898) (:by |rJG4IHzWf) (:text |d!)
                                      |h $ %{} :Expr (:at 1707628960937) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707628961423) (:by |rJG4IHzWf) (:text |d!)
                                          |b $ %{} :Expr (:at 1707628962677) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1707628968342) (:by |rJG4IHzWf) (:text |::)
                                              |T $ %{} :Leaf (:at 1707628966449) (:by |rJG4IHzWf) (:text |:new-bookmark)
                                              |b $ %{} :Expr (:at 1707629035149) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1707629035834) (:by |rJG4IHzWf) (:text |::)
                                                  |b $ %{} :Leaf (:at 1707629038876) (:by |rJG4IHzWf) (:text |:bookmark)
                                                  |h $ %{} :Expr (:at 1707629044444) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1707629045219) (:by |rJG4IHzWf) (:text |:ns)
                                                      |b $ %{} :Leaf (:at 1707629046032) (:by |rJG4IHzWf) (:text |expr)
                                                  |l $ %{} :Expr (:at 1707629046820) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1707629052601) (:by |rJG4IHzWf) (:text |:def)
                                                      |b $ %{} :Leaf (:at 1707629053733) (:by |rJG4IHzWf) (:text |expr)
        |comp-local $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707507339040) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707507345890) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1707507339040) (:by |rJG4IHzWf) (:text |comp-local)
              |e $ %{} :Expr (:at 1707507341935) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707507342623) (:by |rJG4IHzWf) (:text |expr)
              |h $ %{} :Expr (:at 1707507340772) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707507340772) (:by |rJG4IHzWf) (:text |div)
                  |b $ %{} :Expr (:at 1707507340772) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707507340772) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1707507340772) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507340772) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Expr (:at 1707507340772) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707507340772) (:by |rJG4IHzWf) (:text |str-spaced)
                              |b $ %{} :Leaf (:at 1707507340772) (:by |rJG4IHzWf) (:text |css/column)
                              |h $ %{} :Leaf (:at 1707507340772) (:by |rJG4IHzWf) (:text |css-code-symbol)
                      |h $ %{} :Expr (:at 1707548504485) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548504485) (:by |rJG4IHzWf) (:text |:style)
                          |b $ %{} :Expr (:at 1707548504485) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707548504485) (:by |rJG4IHzWf) (:text |merge)
                              |b $ %{} :Expr (:at 1707548504485) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548504485) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1707548504485) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707548504485) (:by |rJG4IHzWf) (:text |:display)
                                      |b $ %{} :Leaf (:at 1707548516962) (:by |rJG4IHzWf) (:text |:inline-flex)
                      |l $ %{} :Expr (:at 1707548507767) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548507767) (:by |rJG4IHzWf) (:text |:on-click)
                          |b $ %{} :Expr (:at 1707548507767) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707548507767) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1707548507767) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548507767) (:by |rJG4IHzWf) (:text |e)
                                  |b $ %{} :Leaf (:at 1707548507767) (:by |rJG4IHzWf) (:text |d!)
                              |h $ %{} :Expr (:at 1707548507767) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548507767) (:by |rJG4IHzWf) (:text |d!)
                                  |b $ %{} :Leaf (:at 1707548507767) (:by |rJG4IHzWf) (:text |:preview)
                                  |h $ %{} :Leaf (:at 1707548507767) (:by |rJG4IHzWf) (:text |expr)
                  |e $ %{} :Expr (:at 1707548513290) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707548513290) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Expr (:at 1707548513290) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548513290) (:by |rJG4IHzWf) (:text |get)
                          |b $ %{} :Leaf (:at 1707548513290) (:by |rJG4IHzWf) (:text |expr)
                          |h $ %{} :Leaf (:at 1707548513290) (:by |rJG4IHzWf) (:text |:val)
                  |j $ %{} :Expr (:at 1707548521238) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707548521663) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Leaf (:at 1707548524076) (:by |rJG4IHzWf) (:text "|\"local")
                      |h $ %{} :Leaf (:at 1707548532523) (:by |rJG4IHzWf) (:text |style-tiny-hint)
        |comp-macro $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1693645232693) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1693645243082) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1693645232693) (:by |rJG4IHzWf) (:text |comp-macro)
              |h $ %{} :Expr (:at 1693645232693) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693645238063) (:by |rJG4IHzWf) (:text |f)
              |l $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |div)
                  |b $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1693646600647) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693646600647) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1693646600647) (:by |rJG4IHzWf) (:text |css-pad8)
                  |h $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |div)
                      |b $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |{})
                      |h $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |<>)
                          |b $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |str)
                              |b $ %{} :Leaf (:at 1693645253643) (:by |rJG4IHzWf) (:text "|\"Macro name: ")
                              |h $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |get)
                                  |b $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |f)
                                  |h $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |:ns)
                              |l $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text "|\"/")
                              |o $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |get)
                                  |b $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |f)
                                  |h $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |:name)
                  |l $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |div)
                      |b $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |{})
                      |h $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |<>)
                          |b $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |str)
                              |b $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text "|\"Args:")
                      |l $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |comp-code)
                          |b $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |get)
                              |b $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |f)
                              |h $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |:args)
                          |h $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |false)
                  |o $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |div)
                      |b $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |{})
                      |h $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |<>)
                          |b $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |str)
                              |b $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text "|\"Code:")
                      |l $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |comp-code)
                          |b $ %{} :Expr (:at 1693645247296) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |get)
                              |b $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |f)
                              |h $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |:code)
                          |h $ %{} :Leaf (:at 1693645247296) (:by |rJG4IHzWf) (:text |false)
        |comp-method $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707548717633) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707548719909) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1707548717633) (:by |rJG4IHzWf) (:text |comp-method)
              |h $ %{} :Expr (:at 1707548717633) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707548717633) (:by |rJG4IHzWf) (:text |expr)
              |o $ %{} :Expr (:at 1707548727930) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707548727930) (:by |rJG4IHzWf) (:text |div)
                  |b $ %{} :Expr (:at 1707548727930) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707548727930) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1707548727930) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548727930) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1707548727930) (:by |rJG4IHzWf) (:text |css/column)
                      |h $ %{} :Expr (:at 1707548727930) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548727930) (:by |rJG4IHzWf) (:text |:style)
                          |b $ %{} :Expr (:at 1707548727930) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707548727930) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1707548727930) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548727930) (:by |rJG4IHzWf) (:text |:display)
                                  |b $ %{} :Leaf (:at 1707548727930) (:by |rJG4IHzWf) (:text |:inline-flex)
                              |h $ %{} :Expr (:at 1707548727930) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548727930) (:by |rJG4IHzWf) (:text |:line-height)
                                  |b $ %{} :Leaf (:at 1707548727930) (:by |rJG4IHzWf) (:text "|\"1.2")
                      |l $ %{} :Expr (:at 1707548750055) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548750055) (:by |rJG4IHzWf) (:text |:on-click)
                          |b $ %{} :Expr (:at 1707548750055) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707548750055) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1707548750055) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548750055) (:by |rJG4IHzWf) (:text |e)
                                  |b $ %{} :Leaf (:at 1707548750055) (:by |rJG4IHzWf) (:text |d!)
                              |h $ %{} :Expr (:at 1707548750055) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548750055) (:by |rJG4IHzWf) (:text |d!)
                                  |b $ %{} :Leaf (:at 1707548750055) (:by |rJG4IHzWf) (:text |:preview)
                                  |h $ %{} :Leaf (:at 1707548750055) (:by |rJG4IHzWf) (:text |expr)
                  |h $ %{} :Expr (:at 1707548731457) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707548731457) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Expr (:at 1707548731457) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548731457) (:by |rJG4IHzWf) (:text |str)
                          |b $ %{} :Leaf (:at 1707548731457) (:by |rJG4IHzWf) (:text "|\".")
                          |h $ %{} :Expr (:at 1707548731457) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707548731457) (:by |rJG4IHzWf) (:text |get)
                              |b $ %{} :Leaf (:at 1707548731457) (:by |rJG4IHzWf) (:text |expr)
                              |h $ %{} :Leaf (:at 1707548731457) (:by |rJG4IHzWf) (:text |:method)
                      |h $ %{} :Leaf (:at 1707548731457) (:by |rJG4IHzWf) (:text |css-code-method)
                  |l $ %{} :Expr (:at 1707548727930) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707548727930) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Expr (:at 1707548775889) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1707548776619) (:by |rJG4IHzWf) (:text |str)
                          |T $ %{} :Leaf (:at 1707548777562) (:by |rJG4IHzWf) (:text "|\"method ")
                          |b $ %{} :Expr (:at 1707548783385) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707548785859) (:by |rJG4IHzWf) (:text |:behavior)
                              |b $ %{} :Leaf (:at 1707548788036) (:by |rJG4IHzWf) (:text |expr)
                      |h $ %{} :Leaf (:at 1707548727930) (:by |rJG4IHzWf) (:text |style-tiny-hint)
        |comp-preview $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1615448127952) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1615448129893) (:by |rJG4IHzWf) (:text |defcomp)
              |j $ %{} :Leaf (:at 1615448127952) (:by |rJG4IHzWf) (:text |comp-preview)
              |r $ %{} :Expr (:at 1615448127952) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615448133556) (:by |rJG4IHzWf) (:text |data)
              |v $ %{} :Expr (:at 1615448511858) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1615448512388) (:by |rJG4IHzWf) (:text |if)
                  |L $ %{} :Expr (:at 1615448512689) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615448514943) (:by |rJG4IHzWf) (:text |some?)
                      |j $ %{} :Leaf (:at 1615448515450) (:by |rJG4IHzWf) (:text |data)
                  |T $ %{} :Expr (:at 1615448133989) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615448134447) (:by |rJG4IHzWf) (:text |div)
                      |j $ %{} :Expr (:at 1615448134646) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615448136212) (:by |rJG4IHzWf) (:text |{})
                          |j $ %{} :Expr (:at 1615448155212) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717358051) (:by |rJG4IHzWf) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1666717361613) (:by |rJG4IHzWf) (:text |css-preview-tip)
                      |r $ %{} :Expr (:at 1615448136873) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615448206043) (:by |rJG4IHzWf) (:text |div)
                          |j $ %{} :Expr (:at 1615448138493) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615448138747) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1615448144696) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615448147131) (:by |rJG4IHzWf) (:text |:innerText)
                                  |j $ %{} :Expr (:at 1615448420911) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1615448421668) (:by |rJG4IHzWf) (:text |trim)
                                      |T $ %{} :Expr (:at 1615448148226) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1635962750610) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                                          |j $ %{} :Leaf (:at 1615448151534) (:by |rJG4IHzWf) (:text |data)
                      |v $ %{} :Expr (:at 1615448603576) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615448604520) (:by |rJG4IHzWf) (:text |div)
                          |j $ %{} :Expr (:at 1615448604785) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615448605116) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1615448632545) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615448634781) (:by |rJG4IHzWf) (:text |:inner-text)
                                  |j $ %{} :Leaf (:at 1615448635948) (:by |rJG4IHzWf) (:text "|\"×")
                              |r $ %{} :Expr (:at 1615448644333) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717378123) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1666717381457) (:by |rJG4IHzWf) (:text |css-preview-close)
                              |v $ %{} :Expr (:at 1615448674166) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615448677592) (:by |rJG4IHzWf) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1615448677961) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1615448678278) (:by |rJG4IHzWf) (:text |fn)
                                      |j $ %{} :Expr (:at 1615448678531) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1615448678707) (:by |rJG4IHzWf) (:text |e)
                                          |j $ %{} :Leaf (:at 1615448679713) (:by |rJG4IHzWf) (:text |d!)
                                      |r $ %{} :Expr (:at 1615448680167) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1615448680576) (:by |rJG4IHzWf) (:text |d!)
                                          |j $ %{} :Leaf (:at 1615448681844) (:by |rJG4IHzWf) (:text |:preview)
                                          |r $ %{} :Leaf (:at 1615448682882) (:by |rJG4IHzWf) (:text |nil)
                  |j $ %{} :Expr (:at 1615448531780) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615448532495) (:by |rJG4IHzWf) (:text |div)
                      |j $ %{} :Expr (:at 1615448532853) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615448534988) (:by |rJG4IHzWf) (:text |{})
        |comp-proc $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707548367718) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707548370218) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1707548367718) (:by |rJG4IHzWf) (:text |comp-proc)
              |h $ %{} :Expr (:at 1707548367718) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707548367718) (:by |rJG4IHzWf) (:text |expr)
              |l $ %{} :Expr (:at 1707548372964) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1707548373609) (:by |rJG4IHzWf) (:text |div)
                  |L $ %{} :Expr (:at 1707548386051) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1707548386540) (:by |rJG4IHzWf) (:text |{})
                      |L $ %{} :Expr (:at 1707548413793) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548415525) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1707548418122) (:by |rJG4IHzWf) (:text |css/column)
                      |T $ %{} :Expr (:at 1707548387388) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1707548389831) (:by |rJG4IHzWf) (:text |:style)
                          |T $ %{} :Expr (:at 1707548390243) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1707548390737) (:by |rJG4IHzWf) (:text |{})
                              |T $ %{} :Expr (:at 1707548378726) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548380642) (:by |rJG4IHzWf) (:text |:display)
                                  |b $ %{} :Leaf (:at 1707548385298) (:by |rJG4IHzWf) (:text |:inline-flex)
                              |b $ %{} :Expr (:at 1707548591930) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548596353) (:by |rJG4IHzWf) (:text |:line-height)
                                  |b $ %{} :Leaf (:at 1707548598740) (:by |rJG4IHzWf) (:text "|\"1.2")
                  |T $ %{} :Expr (:at 1707548371178) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707548371178) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Expr (:at 1707548371178) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548371178) (:by |rJG4IHzWf) (:text |get)
                          |b $ %{} :Leaf (:at 1707548371178) (:by |rJG4IHzWf) (:text |expr)
                          |h $ %{} :Leaf (:at 1707548371178) (:by |rJG4IHzWf) (:text |:name)
                      |h $ %{} :Leaf (:at 1707548371178) (:by |rJG4IHzWf) (:text |css-code-proc)
                  |b $ %{} :Expr (:at 1707548406378) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707548406828) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Leaf (:at 1707548408820) (:by |rJG4IHzWf) (:text "|\"proc")
                      |h $ %{} :Leaf (:at 1707548449637) (:by |rJG4IHzWf) (:text |style-tiny-hint)
        |comp-raw-code $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707592427528) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707592428755) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1707592427528) (:by |rJG4IHzWf) (:text |comp-raw-code)
              |h $ %{} :Expr (:at 1707592427528) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707592427528) (:by |rJG4IHzWf) (:text |expr)
              |l $ %{} :Expr (:at 1707592429762) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707592430119) (:by |rJG4IHzWf) (:text |div)
                  |b $ %{} :Expr (:at 1707592430390) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707592430753) (:by |rJG4IHzWf) (:text |{})
                      |X $ %{} :Expr (:at 1707592461166) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707592463404) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1707592467517) (:by |rJG4IHzWf) (:text |css/column)
                      |b $ %{} :Expr (:at 1707592442866) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707592446931) (:by |rJG4IHzWf) (:text |:style)
                          |b $ %{} :Expr (:at 1707592449846) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707592451280) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1707592451549) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707592452432) (:by |rJG4IHzWf) (:text |:display)
                                  |b $ %{} :Leaf (:at 1707592456085) (:by |rJG4IHzWf) (:text |:inline-flex)
                              |h $ %{} :Expr (:at 1707592502739) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707592506216) (:by |rJG4IHzWf) (:text |:line-height)
                                  |b $ %{} :Leaf (:at 1707592507521) (:by |rJG4IHzWf) (:text |1.2)
                  |h $ %{} :Expr (:at 1707592432020) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707592432330) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Expr (:at 1707592435213) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707592436314) (:by |rJG4IHzWf) (:text |:code)
                          |b $ %{} :Leaf (:at 1707592438938) (:by |rJG4IHzWf) (:text |expr)
                  |l $ %{} :Expr (:at 1707592471686) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707592472036) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Leaf (:at 1707592479133) (:by |rJG4IHzWf) (:text "|\"js raw")
                      |h $ %{} :Leaf (:at 1707592490379) (:by |rJG4IHzWf) (:text |style-tiny-hint)
        |comp-registered $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707507646394) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707507648258) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1707507646394) (:by |rJG4IHzWf) (:text |comp-registered)
              |h $ %{} :Expr (:at 1707507646394) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707507646394) (:by |rJG4IHzWf) (:text |expr)
              |l $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |div)
                  |b $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |str-spaced)
                              |b $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |css/column)
                              |h $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |css-code-symbol)
                  |h $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |div)
                      |b $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |:style)
                              |b $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |merge)
                                  |b $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |{})
                                      |b $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |:display)
                                          |b $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |:inline-block)
                          |h $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |:on-click)
                              |b $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |fn)
                                  |b $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |e)
                                      |b $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |d!)
                                  |h $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |d!)
                                      |b $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |:preview)
                                      |h $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |expr)
                      |h $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |<>)
                          |b $ %{} :Expr (:at 1707507649476) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |get)
                              |b $ %{} :Leaf (:at 1707507649476) (:by |rJG4IHzWf) (:text |expr)
                              |h $ %{} :Leaf (:at 1707507657623) (:by |rJG4IHzWf) (:text |:alias)
        |comp-symbol $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612342159839) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612342163547) (:by |rJG4IHzWf) (:text |defcomp)
              |j $ %{} :Leaf (:at 1612342159839) (:by |rJG4IHzWf) (:text |comp-symbol)
              |r $ %{} :Expr (:at 1612342159839) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612342159839) (:by |rJG4IHzWf) (:text |expr)
              |v $ %{} :Expr (:at 1612342161340) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612342161340) (:by |rJG4IHzWf) (:text |div)
                  |j $ %{} :Expr (:at 1612342161340) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612342161340) (:by |rJG4IHzWf) (:text |{})
                      |j $ %{} :Expr (:at 1612342161340) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666717641705) (:by |rJG4IHzWf) (:text |:class-name)
                          |j $ %{} :Expr (:at 1612342161340) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717638637) (:by |rJG4IHzWf) (:text |str-spaced)
                              |j $ %{} :Leaf (:at 1666717634143) (:by |rJG4IHzWf) (:text |css/column)
                              |n $ %{} :Leaf (:at 1666717626400) (:by |rJG4IHzWf) (:text |css-code-symbol)
                      |n $ %{} :Expr (:at 1707548969382) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548969382) (:by |rJG4IHzWf) (:text |:style)
                          |b $ %{} :Expr (:at 1707548969382) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707548969382) (:by |rJG4IHzWf) (:text |merge)
                              |b $ %{} :Expr (:at 1707548969382) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548969382) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1707548969382) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707548969382) (:by |rJG4IHzWf) (:text |:display)
                                      |b $ %{} :Leaf (:at 1707549016365) (:by |rJG4IHzWf) (:text |:inline-flex)
                      |q $ %{} :Expr (:at 1707548972949) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548972949) (:by |rJG4IHzWf) (:text |:on-click)
                          |b $ %{} :Expr (:at 1707548972949) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707548972949) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1707548972949) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548972949) (:by |rJG4IHzWf) (:text |e)
                                  |b $ %{} :Leaf (:at 1707548972949) (:by |rJG4IHzWf) (:text |d!)
                              |h $ %{} :Expr (:at 1707548972949) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548972949) (:by |rJG4IHzWf) (:text |d!)
                                  |b $ %{} :Leaf (:at 1707548972949) (:by |rJG4IHzWf) (:text |:preview)
                                  |h $ %{} :Leaf (:at 1707548972949) (:by |rJG4IHzWf) (:text |expr)
                  |o $ %{} :Expr (:at 1707549001200) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707549003989) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Expr (:at 1707549005459) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707549006153) (:by |rJG4IHzWf) (:text |:val)
                          |b $ %{} :Leaf (:at 1707549007356) (:by |rJG4IHzWf) (:text |expr)
                  |t $ %{} :Expr (:at 1612342946252) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612342947787) (:by |rJG4IHzWf) (:text |div)
                      |L $ %{} :Expr (:at 1612342949282) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612342949575) (:by |rJG4IHzWf) (:text |{})
                      |T $ %{} :Expr (:at 1612342337694) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612342337694) (:by |rJG4IHzWf) (:text |<>)
                          |j $ %{} :Expr (:at 1612342337694) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612342337694) (:by |rJG4IHzWf) (:text |get)
                              |j $ %{} :Leaf (:at 1612342337694) (:by |rJG4IHzWf) (:text |expr)
                              |r $ %{} :Leaf (:at 1635963968929) (:by |rJG4IHzWf) (:text |:ns)
                          |n $ %{} :Leaf (:at 1666717679869) (:by |rJG4IHzWf) (:text |css-code-symbol-ns)
        |comp-syntax $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707548621887) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707548623200) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1707548621887) (:by |rJG4IHzWf) (:text |comp-syntax)
              |h $ %{} :Expr (:at 1707548621887) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707548621887) (:by |rJG4IHzWf) (:text |expr)
              |j $ %{} :Expr (:at 1707548635355) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707548635355) (:by |rJG4IHzWf) (:text |div)
                  |b $ %{} :Expr (:at 1707548635355) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707548635355) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1707548635355) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548635355) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1707548635355) (:by |rJG4IHzWf) (:text |css/column)
                      |h $ %{} :Expr (:at 1707548635355) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548635355) (:by |rJG4IHzWf) (:text |:style)
                          |b $ %{} :Expr (:at 1707548635355) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707548635355) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1707548635355) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548635355) (:by |rJG4IHzWf) (:text |:display)
                                  |b $ %{} :Leaf (:at 1707548635355) (:by |rJG4IHzWf) (:text |:inline-flex)
                              |h $ %{} :Expr (:at 1707548635355) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548635355) (:by |rJG4IHzWf) (:text |:line-height)
                                  |b $ %{} :Leaf (:at 1707548635355) (:by |rJG4IHzWf) (:text "|\"1.2")
                  |h $ %{} :Expr (:at 1707548635355) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707548635355) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Expr (:at 1707548640401) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548640401) (:by |rJG4IHzWf) (:text |get)
                          |b $ %{} :Leaf (:at 1707548640401) (:by |rJG4IHzWf) (:text |expr)
                          |h $ %{} :Leaf (:at 1707548640401) (:by |rJG4IHzWf) (:text |:name)
                      |h $ %{} :Leaf (:at 1707548643193) (:by |rJG4IHzWf) (:text |css-code-syntax)
                  |l $ %{} :Expr (:at 1707548635355) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707548635355) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Leaf (:at 1707548647225) (:by |rJG4IHzWf) (:text "|\"syntax")
                      |h $ %{} :Leaf (:at 1707548635355) (:by |rJG4IHzWf) (:text |style-tiny-hint)
        |css-code-default $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1666717599983) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1666717601332) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1666717599983) (:by |rJG4IHzWf) (:text |css-code-default)
              |h $ %{} :Expr (:at 1666717599983) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1666717602371) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1666717602833) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666717604044) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1666717604461) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666717604461) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666717604461) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717604461) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1666717604461) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717604461) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1666717604461) (:by |rJG4IHzWf) (:text |200)
                                  |h $ %{} :Leaf (:at 1666717604461) (:by |rJG4IHzWf) (:text |80)
                                  |l $ %{} :Leaf (:at 1666717604461) (:by |rJG4IHzWf) (:text |60)
                          |h $ %{} :Expr (:at 1666717604461) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717604461) (:by |rJG4IHzWf) (:text |:margin)
                              |b $ %{} :Leaf (:at 1666717604461) (:by |rJG4IHzWf) (:text "|\"0 4px")
                          |l $ %{} :Expr (:at 1666717604461) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717604461) (:by |rJG4IHzWf) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1666717604461) (:by |rJG4IHzWf) (:text |:pre)
                          |o $ %{} :Expr (:at 1666717604461) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717604461) (:by |rJG4IHzWf) (:text |:display)
                              |b $ %{} :Leaf (:at 1666717604461) (:by |rJG4IHzWf) (:text |:inline-block)
        |css-code-expr $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1666717526065) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1666717527396) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1666717526065) (:by |rJG4IHzWf) (:text |css-code-expr)
              |h $ %{} :Expr (:at 1666717526065) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1666717528641) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1666717528923) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666717530178) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1666717530566) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666717530566) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text |:border-width)
                              |b $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text "|\"1px 0 0 1px")
                          |h $ %{} :Expr (:at 1666717530566) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text |:margin-left)
                              |b $ %{} :Leaf (:at 1707593624393) (:by |rJG4IHzWf) (:text "|\"14px")
                          |j $ %{} :Expr (:at 1707593042316) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707593044845) (:by |rJG4IHzWf) (:text |:padding-left)
                              |b $ %{} :Leaf (:at 1707593049380) (:by |rJG4IHzWf) (:text "|\"2px")
                          |l $ %{} :Expr (:at 1666717530566) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text |ui/font-code)
                          |o $ %{} :Expr (:at 1666717530566) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text |:margin-bottom)
                              |b $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text "|\"2px")
                          |q $ %{} :Expr (:at 1666717530566) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text |:margin-top)
                              |b $ %{} :Leaf (:at 1707593056765) (:by |rJG4IHzWf) (:text "|\"4px")
                          |s $ %{} :Expr (:at 1666717530566) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text |:vertical-align)
                              |b $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text |:top)
                          |t $ %{} :Expr (:at 1666717530566) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text |:border-style)
                              |b $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text |:solid)
                          |u $ %{} :Expr (:at 1666717530566) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717530566) (:by |rJG4IHzWf) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1707593071112) (:by |rJG4IHzWf) (:text "|\"8px")
        |css-code-fn $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1666717563765) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1666717565140) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1666717563765) (:by |rJG4IHzWf) (:text |css-code-fn)
              |h $ %{} :Expr (:at 1666717563765) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1666717566261) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1666717566637) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666717567810) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1666717568235) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666717568235) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666717568235) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717568235) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1666717568235) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717568235) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1666717568235) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1666717568235) (:by |rJG4IHzWf) (:text |80)
                                  |l $ %{} :Leaf (:at 1666717568235) (:by |rJG4IHzWf) (:text |50)
                          |h $ %{} :Expr (:at 1666717568235) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717568235) (:by |rJG4IHzWf) (:text |:margin)
                              |b $ %{} :Leaf (:at 1666717568235) (:by |rJG4IHzWf) (:text "|\"0 4px")
                          |l $ %{} :Expr (:at 1666717568235) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717568235) (:by |rJG4IHzWf) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1666717568235) (:by |rJG4IHzWf) (:text |:pre-line)
                          |o $ %{} :Expr (:at 1666717568235) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717568235) (:by |rJG4IHzWf) (:text |:display)
                              |b $ %{} :Leaf (:at 1666717568235) (:by |rJG4IHzWf) (:text |:inline-block)
        |css-code-method $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1693645447992) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1693645451300) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1693645447992) (:by |rJG4IHzWf) (:text |css-code-method)
              |h $ %{} :Expr (:at 1693645449061) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693645449061) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1693645449061) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693645449061) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1693645449061) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693645449061) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1693645449061) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693645449061) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1693645449061) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1693645449061) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1693645455738) (:by |rJG4IHzWf) (:text |300)
                                  |h $ %{} :Leaf (:at 1693645463316) (:by |rJG4IHzWf) (:text |90)
                                  |l $ %{} :Leaf (:at 1693645460128) (:by |rJG4IHzWf) (:text |40)
                          |h $ %{} :Expr (:at 1693645449061) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693645449061) (:by |rJG4IHzWf) (:text |:margin)
                              |b $ %{} :Leaf (:at 1693645449061) (:by |rJG4IHzWf) (:text "|\"0 4px")
                          |l $ %{} :Expr (:at 1693645449061) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693645449061) (:by |rJG4IHzWf) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1693645449061) (:by |rJG4IHzWf) (:text |:pre-line)
                          |o $ %{} :Expr (:at 1693645449061) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693645449061) (:by |rJG4IHzWf) (:text |:display)
                              |b $ %{} :Leaf (:at 1693645449061) (:by |rJG4IHzWf) (:text |:inline-block)
        |css-code-proc $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1666717552317) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1666717553384) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1666717552317) (:by |rJG4IHzWf) (:text |css-code-proc)
              |h $ %{} :Expr (:at 1666717552317) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1666717554454) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1666717555108) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666717556246) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1666717557230) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666717557230) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666717557230) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717557230) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1666717557230) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717557230) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1666717557230) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1666717557230) (:by |rJG4IHzWf) (:text |80)
                                  |l $ %{} :Leaf (:at 1666717557230) (:by |rJG4IHzWf) (:text |50)
                          |h $ %{} :Expr (:at 1666717557230) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717557230) (:by |rJG4IHzWf) (:text |:margin)
                              |b $ %{} :Leaf (:at 1666717557230) (:by |rJG4IHzWf) (:text "|\"0 4px")
                          |l $ %{} :Expr (:at 1666717557230) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717557230) (:by |rJG4IHzWf) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1666717557230) (:by |rJG4IHzWf) (:text |:pre-line)
                          |o $ %{} :Expr (:at 1666717557230) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717557230) (:by |rJG4IHzWf) (:text |:display)
                              |b $ %{} :Leaf (:at 1666717557230) (:by |rJG4IHzWf) (:text |:inline-block)
        |css-code-symbol $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1666717626692) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1666717627808) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1666717626692) (:by |rJG4IHzWf) (:text |css-code-symbol)
              |h $ %{} :Expr (:at 1666717626692) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1666717628918) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1666717629259) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666717630631) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1666717631120) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666717631120) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666717631120) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717631120) (:by |rJG4IHzWf) (:text |:display)
                              |b $ %{} :Leaf (:at 1666717631120) (:by |rJG4IHzWf) (:text |:inline-flex)
                          |h $ %{} :Expr (:at 1666717631120) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717631120) (:by |rJG4IHzWf) (:text |:margin)
                              |b $ %{} :Leaf (:at 1666717631120) (:by |rJG4IHzWf) (:text "|\"0px 4px")
                          |l $ %{} :Expr (:at 1666717631120) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717631120) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1666717631120) (:by |rJG4IHzWf) (:text "|\"0 4px")
                          |o $ %{} :Expr (:at 1666717631120) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717631120) (:by |rJG4IHzWf) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1666717631120) (:by |rJG4IHzWf) (:text "|\"1.2")
        |css-code-symbol-ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1666717680846) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1666717682064) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1666717680846) (:by |rJG4IHzWf) (:text |css-code-symbol-ns)
              |h $ %{} :Expr (:at 1666717680846) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1666717683481) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1666717683848) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666717684993) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1666717685392) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666717685392) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666717685392) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717685392) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1666717685392) (:by |rJG4IHzWf) (:text |8)
                          |h $ %{} :Expr (:at 1666717685392) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717685392) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1666717685392) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717685392) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1666717685392) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1666717685392) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1666717685392) (:by |rJG4IHzWf) (:text |80)
                          |l $ %{} :Expr (:at 1666717685392) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717685392) (:by |rJG4IHzWf) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1666717685392) (:by |rJG4IHzWf) (:text |ui/font-normal)
        |css-code-symbol-resolved-ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1666717713781) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1666717715336) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1666717713781) (:by |rJG4IHzWf) (:text |css-code-symbol-resolved-ns)
              |h $ %{} :Expr (:at 1666717713781) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1666717716649) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1666717716975) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666717718135) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1666717718565) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666717718565) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666717718565) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717718565) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1666717718565) (:by |rJG4IHzWf) (:text "|\"8px")
                          |h $ %{} :Expr (:at 1666717718565) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717718565) (:by |rJG4IHzWf) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1666717718565) (:by |rJG4IHzWf) (:text |:nowrap)
                          |l $ %{} :Expr (:at 1666717718565) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717718565) (:by |rJG4IHzWf) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1666717718565) (:by |rJG4IHzWf) (:text |ui/font-normal)
                          |o $ %{} :Expr (:at 1666717718565) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717718565) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1666717718565) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717718565) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1666717718565) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1666717718565) (:by |rJG4IHzWf) (:text |80)
                                  |l $ %{} :Leaf (:at 1666717718565) (:by |rJG4IHzWf) (:text |70)
        |css-code-syntax $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1666717576141) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1666717577272) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1666717576141) (:by |rJG4IHzWf) (:text |css-code-syntax)
              |h $ %{} :Expr (:at 1666717576141) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1666717578433) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1666717578829) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666717580367) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1666717580796) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666717580796) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666717580796) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717580796) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1666717580796) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717580796) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1666717580796) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1666717580796) (:by |rJG4IHzWf) (:text |80)
                                  |l $ %{} :Leaf (:at 1666717580796) (:by |rJG4IHzWf) (:text |50)
                          |h $ %{} :Expr (:at 1666717580796) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717580796) (:by |rJG4IHzWf) (:text |:margin)
                              |b $ %{} :Leaf (:at 1666717580796) (:by |rJG4IHzWf) (:text "|\"0 4px")
                          |l $ %{} :Expr (:at 1666717580796) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717580796) (:by |rJG4IHzWf) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1666717580796) (:by |rJG4IHzWf) (:text |:pre-line)
                          |o $ %{} :Expr (:at 1666717580796) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717580796) (:by |rJG4IHzWf) (:text |:display)
                              |b $ %{} :Leaf (:at 1666717580796) (:by |rJG4IHzWf) (:text |:inline-block)
        |css-code-tag $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1666717460169) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1666717462533) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1693646426349) (:by |rJG4IHzWf) (:text |css-code-tag)
              |h $ %{} :Expr (:at 1666717460169) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1666717464517) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1666717464929) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666717466141) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1666717466627) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666717466627) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666717466627) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717466627) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1666717466627) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717466627) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1666717466627) (:by |rJG4IHzWf) (:text |200)
                                  |h $ %{} :Leaf (:at 1666717466627) (:by |rJG4IHzWf) (:text |80)
                                  |l $ %{} :Leaf (:at 1666717466627) (:by |rJG4IHzWf) (:text |40)
                          |h $ %{} :Expr (:at 1666717466627) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717466627) (:by |rJG4IHzWf) (:text |:margin)
                              |b $ %{} :Leaf (:at 1666717466627) (:by |rJG4IHzWf) (:text "|\"0 4px")
                          |l $ %{} :Expr (:at 1666717466627) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717466627) (:by |rJG4IHzWf) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1666717466627) (:by |rJG4IHzWf) (:text |:pre-line)
                          |o $ %{} :Expr (:at 1666717466627) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717466627) (:by |rJG4IHzWf) (:text |:display)
                              |b $ %{} :Leaf (:at 1666717466627) (:by |rJG4IHzWf) (:text |:inline-block)
        |css-expr-area $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1693644720895) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1693644722496) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1693644720895) (:by |rJG4IHzWf) (:text |css-expr-area)
              |h $ %{} :Expr (:at 1693644720895) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693644723989) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1693644724272) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693644725658) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1693644727171) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693644727490) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1693644748141) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693644759318) (:by |rJG4IHzWf) (:text |:border-color)
                              |b $ %{} :Leaf (:at 1693644762027) (:by |rJG4IHzWf) (:text "|\"hsl(0,0%,92%)")
                  |h $ %{} :Expr (:at 1693644728796) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693644741334) (:by |rJG4IHzWf) (:text "|\"&:hover")
                      |b $ %{} :Expr (:at 1693644741904) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693644742201) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1693644742456) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693644746022) (:by |rJG4IHzWf) (:text |:border-color)
                              |b $ %{} :Leaf (:at 1707592995810) (:by |rJG4IHzWf) (:text "|\"hsl(0,0%,70%)")
                  |l $ %{} :Expr (:at 1707592892387) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1707592965739) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1707592966639) (:by |rJG4IHzWf) (:text |str)
                          |T $ %{} :Leaf (:at 1707592978027) (:by |rJG4IHzWf) (:text "|\"&:has(.")
                          |b $ %{} :Leaf (:at 1707592967815) (:by |rJG4IHzWf) (:text |css-code-expr)
                          |h $ %{} :Leaf (:at 1707592975025) (:by |rJG4IHzWf) (:text "|\":hover)")
                      |b $ %{} :Expr (:at 1707592903500) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707592903888) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1707592911485) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707592911485) (:by |rJG4IHzWf) (:text |:border-color)
                              |b $ %{} :Leaf (:at 1707592911485) (:by |rJG4IHzWf) (:text "|\"hsl(0,0%,92%)")
        |css-file-button $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1666718629906) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1666718631539) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1666718629906) (:by |rJG4IHzWf) (:text |css-file-button)
              |h $ %{} :Expr (:at 1666718629906) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1666718632733) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1666718633041) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666718634330) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1666718634771) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666718634771) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |120)
                          |h $ %{} :Expr (:at 1666718634771) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |:relative)
                          |l $ %{} :Expr (:at 1666718634771) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |8)
                          |o $ %{} :Expr (:at 1666718634771) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1666718634771) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |200)
                                  |h $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |90)
                                  |l $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |72)
                          |q $ %{} :Expr (:at 1666718634771) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |:text-align)
                              |b $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |:center)
                          |s $ %{} :Expr (:at 1666718634771) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |:white)
                          |t $ %{} :Expr (:at 1666718634771) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |ui/font-fancy)
                          |u $ %{} :Expr (:at 1666718634771) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |18)
                          |v $ %{} :Expr (:at 1666718634771) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1666718634771) (:by |rJG4IHzWf) (:text "|\"32px")
                          |w $ %{} :Expr (:at 1666718651940) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718653166) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1666718654231) (:by |rJG4IHzWf) (:text |:pointer)
                          |x $ %{} :Expr (:at 1666718725143) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718767539) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1666718732082) (:by |rJG4IHzWf) (:text "|\"300ms")
                  |h $ %{} :Expr (:at 1666718657742) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666718664697) (:by |rJG4IHzWf) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1666718665617) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666718665970) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666718666280) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718673128) (:by |rJG4IHzWf) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1666718674249) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666718678703) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1666718684317) (:by |rJG4IHzWf) (:text "|\"1px 1px 4px ")
                                  |h $ %{} :Expr (:at 1666718685833) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1666718686298) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1666718686763) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1666718687050) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1666718688807) (:by |rJG4IHzWf) (:text |0)
                                      |o $ %{} :Leaf (:at 1666718690126) (:by |rJG4IHzWf) (:text |0.2)
                          |h $ %{} :Expr (:at 1666718755033) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718755033) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1666718755033) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666718755033) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1666718755033) (:by |rJG4IHzWf) (:text |200)
                                  |h $ %{} :Leaf (:at 1666718755033) (:by |rJG4IHzWf) (:text |90)
                                  |l $ %{} :Leaf (:at 1666718758174) (:by |rJG4IHzWf) (:text |76)
                  |l $ %{} :Expr (:at 1666718693968) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666718700111) (:by |rJG4IHzWf) (:text "|\"$0:active")
                      |b $ %{} :Expr (:at 1666718700423) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666718700789) (:by |rJG4IHzWf) (:text |{})
                          |X $ %{} :Expr (:at 1666718734476) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718769583) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1666718737753) (:by |rJG4IHzWf) (:text "|\"0ms")
                          |b $ %{} :Expr (:at 1666718701019) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666718703441) (:by |rJG4IHzWf) (:text |:transform)
                              |b $ %{} :Leaf (:at 1666718713987) (:by |rJG4IHzWf) (:text "|\"scale(1.02)")
        |css-hover-item $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1693644644831) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1693644647841) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1693644644831) (:by |rJG4IHzWf) (:text |css-hover-item)
              |h $ %{} :Expr (:at 1693644644831) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693644649508) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1693644649871) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693644651316) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1693644652358) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693644651930) (:by |rJG4IHzWf) (:text |{})
                          |X $ %{} :Expr (:at 1693646786848) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693646789476) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1693646789884) (:by |rJG4IHzWf) (:text |12)
                          |b $ %{} :Expr (:at 1693644662018) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693644662972) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1693644664012) (:by |rJG4IHzWf) (:text |:pointer)
                  |h $ %{} :Expr (:at 1693644664957) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693644667269) (:by |rJG4IHzWf) (:text "|\"&:hover")
                      |b $ %{} :Expr (:at 1693644674607) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693644674963) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1693644675268) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693644677817) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Leaf (:at 1693644678786) (:by |rJG4IHzWf) (:text "|\"hsl(350,0%,95%)")
        |css-pad8 $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1693644835445) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1693644837550) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1693644835445) (:by |rJG4IHzWf) (:text |css-pad8)
              |h $ %{} :Expr (:at 1693644835445) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693644838806) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1693644839133) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693644841071) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1693644842480) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693644842771) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1693644843107) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693644844459) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1693644846294) (:by |rJG4IHzWf) (:text "|\"0 8px")
        |css-preview-close $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1666717382670) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1666717383922) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1666717382670) (:by |rJG4IHzWf) (:text |css-preview-close)
              |h $ %{} :Expr (:at 1666717382670) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1666717386209) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1666717386587) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666717388258) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1666717388651) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666717388651) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |:absolute)
                          |h $ %{} :Expr (:at 1666717388651) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |:top)
                              |b $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |4)
                          |l $ %{} :Expr (:at 1666717388651) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |:right)
                              |b $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |4)
                          |o $ %{} :Expr (:at 1666717388651) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1666717388651) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |80)
                                  |l $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |60)
                          |q $ %{} :Expr (:at 1666717388651) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |:pointer)
                          |s $ %{} :Expr (:at 1666717388651) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1666717388651) (:by |rJG4IHzWf) (:text |14)
        |css-preview-tip $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1666717361944) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1666717363545) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1666717361944) (:by |rJG4IHzWf) (:text |css-preview-tip)
              |h $ %{} :Expr (:at 1666717361944) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1666717364622) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1666717364943) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1666717366143) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |:absolute)
                          |h $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |:bottom)
                              |b $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |0)
                          |l $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |:right)
                              |b $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |0)
                          |o $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |100)
                                  |o $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |0.6)
                          |q $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |ui/font-code)
                          |s $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |:pre)
                          |t $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |:border)
                              |b $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |90)
                          |u $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |12)
                          |v $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text "|\"20px")
                          |w $ %{} :Expr (:at 1666717366578) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1666717366578) (:by |rJG4IHzWf) (:text |8)
        |style-bookmark $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707628794466) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707628795767) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1707628794466) (:by |rJG4IHzWf) (:text |style-bookmark)
              |h $ %{} :Expr (:at 1707628794466) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707628796822) (:by |rJG4IHzWf) (:text |{})
                  |X $ %{} :Expr (:at 1707628821803) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707628822800) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1707628823109) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707628823433) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1707628833146) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707628834094) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1707628835200) (:by |rJG4IHzWf) (:text |:pointer)
                          |h $ %{} :Expr (:at 1707629081781) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707629082990) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1707629087068) (:by |rJG4IHzWf) (:text "|\"0 8px")
                          |l $ %{} :Expr (:at 1707629246115) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707629248332) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1707629249973) (:by |rJG4IHzWf) (:text |:relative)
                  |b $ %{} :Expr (:at 1707628815727) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707628815727) (:by |rJG4IHzWf) (:text "|\"&:hover")
                      |b $ %{} :Expr (:at 1707628815727) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707628815727) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1707628815727) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707628815727) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1707628815727) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707628815727) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1707628815727) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1707628815727) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1707628815727) (:by |rJG4IHzWf) (:text |98)
                  |h $ %{} :Expr (:at 1707628815727) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1707629272474) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1707629274637) (:by |rJG4IHzWf) (:text |str)
                          |T $ %{} :Leaf (:at 1707629277968) (:by |rJG4IHzWf) (:text "|\"&:hover .")
                          |b $ %{} :Leaf (:at 1707629276359) (:by |rJG4IHzWf) (:text |style-close)
                      |b $ %{} :Expr (:at 1707628815727) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707628815727) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1707629282443) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707629283767) (:by |rJG4IHzWf) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1707629284126) (:by |rJG4IHzWf) (:text |1)
        |style-bookmark-selected $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707628750155) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707628752524) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1707628750155) (:by |rJG4IHzWf) (:text |style-bookmark-selected)
              |h $ %{} :Expr (:at 1707628750155) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707628755364) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1707628755655) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707628756841) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1707628757358) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707628757695) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1707628757953) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707628761843) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1707628762241) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707628763539) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1707628763800) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1707628763993) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1707628769166) (:by |rJG4IHzWf) (:text |96)
        |style-close $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707629156672) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707629159019) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1707629156672) (:by |rJG4IHzWf) (:text |style-close)
              |h $ %{} :Expr (:at 1707629156672) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707629160259) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1707629160469) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707629161631) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1707629189552) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707629190131) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1707629231841) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707629232873) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1707629235480) (:by |rJG4IHzWf) (:text |:absolute)
                          |e $ %{} :Expr (:at 1707629287400) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707629289992) (:by |rJG4IHzWf) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1707629290767) (:by |rJG4IHzWf) (:text |0)
                          |h $ %{} :Expr (:at 1707629237766) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707629238670) (:by |rJG4IHzWf) (:text |:right)
                              |b $ %{} :Leaf (:at 1707629316282) (:by |rJG4IHzWf) (:text |4)
                          |l $ %{} :Expr (:at 1707629256862) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707629258622) (:by |rJG4IHzWf) (:text |:top)
                              |b $ %{} :Leaf (:at 1707629367312) (:by |rJG4IHzWf) (:text |6)
                          |o $ %{} :Expr (:at 1707629306469) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707629309024) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1707629309490) (:by |rJG4IHzWf) (:text |12)
                          |q $ %{} :Expr (:at 1707629318511) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707629320227) (:by |rJG4IHzWf) (:text |:font-weight)
                              |b $ %{} :Leaf (:at 1707629320761) (:by |rJG4IHzWf) (:text |100)
        |style-import-ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707507213287) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707507216912) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1707507213287) (:by |rJG4IHzWf) (:text |style-import-ns)
              |h $ %{} :Expr (:at 1707507213287) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707507218997) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1707507219295) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707507225371) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1707507226607) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707507227879) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1707507228190) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707507230654) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1707507448195) (:by |rJG4IHzWf) (:text |10)
                          |h $ %{} :Expr (:at 1707507236019) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707507237651) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1707507237981) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707507238403) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1707507238672) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1707507238881) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1707507239731) (:by |rJG4IHzWf) (:text |80)
                          |l $ %{} :Expr (:at 1707507250643) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707507253974) (:by |rJG4IHzWf) (:text |:margin-left)
                              |b $ %{} :Leaf (:at 1707507257933) (:by |rJG4IHzWf) (:text |4)
        |style-tiny-hint $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1707548451362) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1707548452701) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1707548451362) (:by |rJG4IHzWf) (:text |style-tiny-hint)
              |h $ %{} :Expr (:at 1707548451362) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1707548453685) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1707548455532) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707548455915) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1707548456224) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707548456564) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1707548457078) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707548459299) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1707549050477) (:by |rJG4IHzWf) (:text |10)
                          |e $ %{} :Expr (:at 1707548484002) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707548485941) (:by |rJG4IHzWf) (:text |:margin-left)
                              |b $ %{} :Leaf (:at 1707548486443) (:by |rJG4IHzWf) (:text |8)
                          |h $ %{} :Expr (:at 1707548462054) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707548465856) (:by |rJG4IHzWf) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1707549045874) (:by |rJG4IHzWf) (:text "|\"16px")
                          |l $ %{} :Expr (:at 1707548469562) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707548471643) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1707548472485) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707548472855) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1707548473112) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1707548473282) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1707548473593) (:by |rJG4IHzWf) (:text |80)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516527080962) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540958704705) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |l $ %{} :Leaf (:at 1573355389740) (:by |rJG4IHzWf) (:text |defeffect)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1584780606618) (:by |rJG4IHzWf) (:text |>>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1512359490531) (:by |rJG4IHzWf) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1552321107012) (:by |rJG4IHzWf) (:text |input)
                        |yj $ %{} :Leaf (:at 1635965839252) (:by |rJG4IHzWf) (:text |pre)
                        |z $ %{} :Leaf (:at 1707626990124) (:by |rJG4IHzWf) (:text |list->)
                        |zD $ %{} :Leaf (:at 1707628942999) (:by |rJG4IHzWf) (:text |a)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |xT $ %{} :Expr (:at 1707627233825) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1707627236247) (:by |rJG4IHzWf) (:text |respo.comp.inspect)
                    |b $ %{} :Leaf (:at 1707627237121) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1707627237340) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1707627239284) (:by |rJG4IHzWf) (:text |comp-inspect)
                |y $ %{} :Expr (:at 1507461845717) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507461855480) (:by |root) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507461856264) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507461856484) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507461858342) (:by |root) (:text |comp-reel)
                |yT $ %{} :Expr (:at 1519699088529) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1519699092590) (:by |root) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1519699093410) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519699093683) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519699096732) (:by |root) (:text |comp-md)
                |yj $ %{} :Expr (:at 1521954061310) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788377809) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1521954064826) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521954065004) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521954067604) (:by |root) (:text |dev?)
                |yr $ %{} :Expr (:at 1612334432239) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1707501800754) (:by |rJG4IHzWf) (:text |memof.once)
                    |r $ %{} :Leaf (:at 1612334437596) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1612334437773) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1707501801872) (:by |rJG4IHzWf) (:text |memof1-call)
                |yv $ %{} :Expr (:at 1612334706914) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1612334713666) (:by |rJG4IHzWf) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1612334714947) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1612334715150) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1612334715876) (:by |rJG4IHzWf) (:text |hsl)
                |z $ %{} :Expr (:at 1666717238786) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1666717241335) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1666717244814) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1666717245033) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1666717246152) (:by |rJG4IHzWf) (:text |defstyle)
                |zD $ %{} :Expr (:at 1666717247335) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1666717251758) (:by |rJG4IHzWf) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1666717255337) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1666717253492) (:by |rJG4IHzWf) (:text |css)
                |zP $ %{} :Expr (:at 1707629138025) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1707629140528) (:by |rJG4IHzWf) (:text |respo-ui.comp)
                    |b $ %{} :Leaf (:at 1707629143036) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1707629143322) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1707629144510) (:by |rJG4IHzWf) (:text |comp-close)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1544873875614) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |dev?)
              |r $ %{} :Expr (:at 1650535472919) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650535473802) (:by |rJG4IHzWf) (:text |=)
                  |b $ %{} :Leaf (:at 1650535475491) (:by |rJG4IHzWf) (:text "|\"dev")
                  |h $ %{} :Expr (:at 1650535478729) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650535479614) (:by |rJG4IHzWf) (:text |get-env)
                      |b $ %{} :Leaf (:at 1650535481102) (:by |rJG4IHzWf) (:text "|\"mode")
                      |h $ %{} :Leaf (:at 1658660046324) (:by |rJG4IHzWf) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545933382603) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1518157327696) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                  |y $ %{} :Expr (:at 1527868456422) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527868457305) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1540053963607) (:by |root) (:text "|\"Calcit")
                  |yT $ %{} :Expr (:at 1527868457696) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527868458476) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1527868478815) (:by |root) (:text "|\"http://cdn.tiye.me/logo/mvc-works.png")
                  |yf $ %{} :Expr (:at 1544956719115) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1650535396706) (:by |rJG4IHzWf) (:text "|\"calcit-ir-viewer")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788237503) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610792986987) (:by |rJG4IHzWf) (:text |defatom)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507399777531) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                  |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
              |t $ %{} :Expr (:at 1547437686766) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1547437687530) (:by |root) (:text |when)
                  |L $ %{} :Expr (:at 1584874661674) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1584874662518) (:by |rJG4IHzWf) (:text |and)
                      |T $ %{} :Leaf (:at 1547437691006) (:by |root) (:text |config/dev?)
                      |j $ %{} :Expr (:at 1584874663522) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874664551) (:by |rJG4IHzWf) (:text |not=)
                          |j $ %{} :Expr (:at 1693644405774) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1693644406745) (:by |rJG4IHzWf) (:text |nth)
                              |T $ %{} :Leaf (:at 1584874665829) (:by |rJG4IHzWf) (:text |op)
                              |b $ %{} :Leaf (:at 1693644407843) (:by |rJG4IHzWf) (:text |0)
                          |r $ %{} :Leaf (:at 1584874671745) (:by |rJG4IHzWf) (:text |:states)
                  |T $ %{} :Expr (:at 1518156274050) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1518156276516) (:by |root) (:text |println)
                      |r $ %{} :Leaf (:at 1547437698992) (:by |root) (:text "|\"Dispatch:")
                      |v $ %{} :Leaf (:at 1518156280471) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1584780634192) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1507399884621) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                      |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |s $ %{} :Expr (:at 1615446752731) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615446757673) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |t $ %{} :Expr (:at 1544874433785) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544874434638) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1544874440404) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544874440190) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1544874446442) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release")
              |x $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |y $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612277376640) (:by |rJG4IHzWf) (:text |reel)
                          |j $ %{} :Leaf (:at 1612277377632) (:by |rJG4IHzWf) (:text |prev)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |yD $ %{} :Expr (:at 1507461684494) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1507461691211) (:by |root) (:text ||a)
                  |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
              |yL $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1693644547857) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1518157458163) (:by |root) (:text ||beforeunload)
                  |v $ %{} :Expr (:at 1612336302643) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612336304008) (:by |rJG4IHzWf) (:text |fn)
                      |L $ %{} :Expr (:at 1612336304761) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612336306453) (:by |rJG4IHzWf) (:text |event)
                      |T $ %{} :Expr (:at 1612336307338) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yN $ %{} :Expr (:at 1533919529874) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544956062322) (:by |rJG4IHzWf) (:text |repeat!)
                  |b $ %{} :Leaf (:at 1544956066171) (:by |rJG4IHzWf) (:text |60)
                  |j $ %{} :Leaf (:at 1612336301631) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yP $ %{} :Expr (:at 1518157492640) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157495438) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1518157495644) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518157495826) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157496930) (:by |root) (:text |raw)
                          |j $ %{} :Expr (:at 1518157497615) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1693644469933) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1518157506313) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1527788293499) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1518157514334) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533919640958) (:by |rJG4IHzWf) (:text |when)
                      |j $ %{} :Expr (:at 1518157515117) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157515786) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1518157516878) (:by |root) (:text |raw)
                      |r $ %{} :Expr (:at 1518157521635) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157523818) (:by |root) (:text |dispatch!)
                          |r $ %{} :Expr (:at 1693644471832) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1693644472446) (:by |rJG4IHzWf) (:text |::)
                              |L $ %{} :Leaf (:at 1693644472890) (:by |rJG4IHzWf) (:text |:hydrate-storage)
                              |T $ %{} :Expr (:at 1518157527987) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610793172059) (:by |rJG4IHzWf) (:text |extract-cirru-edn)
                                  |j $ %{} :Expr (:at 1610793173220) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1610793177415) (:by |rJG4IHzWf) (:text |js/JSON.parse)
                                      |T $ %{} :Leaf (:at 1518157531240) (:by |root) (:text |raw)
              |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1693646550039) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
                  |j $ %{} :Leaf (:at 1693644575727) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                  |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site)
                  |v $ %{} :Expr (:at 1610793202935) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1610793207509) (:by |rJG4IHzWf) (:text |js/JSON.stringify)
                      |T $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610793196653) (:by |rJG4IHzWf) (:text |to-cirru-edn)
                          |j $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store)
                              |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |reload!)
              |r $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |nil?)
                      |j $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |build-errors)
                  |r $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |do)
                      |j $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |:changes)
                      |r $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |clear-cache!)
                      |v $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |:changes)
                          |v $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |reel)
                                  |j $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |prev)
                              |r $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |render-app!)
                      |x $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |reset!)
                          |j $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |refresh-reel)
                              |j $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |schema/store)
                              |v $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |updater)
                      |y $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |hud!)
                          |j $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text "|\"Ok")
                  |v $ %{} :Expr (:at 1636256693502) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |hud!)
                      |j $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text "|\"error")
                      |r $ %{} :Leaf (:at 1636256693502) (:by |rJG4IHzWf) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636256754284) (:by |rJG4IHzWf) (:text |render!)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1636256757345) (:by |rJG4IHzWf) (:text |dispatch!)
        |repeat! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610793045335) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1610793045335) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1610793045335) (:by |rJG4IHzWf) (:text |repeat!)
              |r $ %{} :Expr (:at 1610793045335) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610793047914) (:by |rJG4IHzWf) (:text |duration)
                  |j $ %{} :Leaf (:at 1610793055850) (:by |rJG4IHzWf) (:text |cb)
              |v $ %{} :Expr (:at 1610793056606) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610793066184) (:by |rJG4IHzWf) (:text |js/setTimeout)
                  |j $ %{} :Expr (:at 1610793079106) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610793079545) (:by |rJG4IHzWf) (:text |fn)
                      |j $ %{} :Expr (:at 1610793080160) (:by |rJG4IHzWf)
                        :data $ {}
                      |n $ %{} :Expr (:at 1610793090420) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610793091010) (:by |rJG4IHzWf) (:text |cb)
                      |r $ %{} :Expr (:at 1610793080941) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610793083422) (:by |rJG4IHzWf) (:text |repeat!)
                          |j $ %{} :Expr (:at 1610794352418) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610794352418) (:by |rJG4IHzWf) (:text |*)
                              |j $ %{} :Leaf (:at 1610794467961) (:by |rJG4IHzWf) (:text |1000)
                              |r $ %{} :Leaf (:at 1610794352418) (:by |rJG4IHzWf) (:text |duration)
                          |r $ %{} :Leaf (:at 1610794361837) (:by |rJG4IHzWf) (:text |cb)
                  |r $ %{} :Expr (:at 1610793071391) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1610793072002) (:by |rJG4IHzWf) (:text |*)
                      |L $ %{} :Leaf (:at 1610794470143) (:by |rJG4IHzWf) (:text |1000)
                      |T $ %{} :Leaf (:at 1610793071233) (:by |rJG4IHzWf) (:text |duration)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.main)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |y $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1508556737455) (:by |root) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1507399674125) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507399674614) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399680857) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399681518) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1518156292092) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at 1507399683930) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507399684313) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399688322) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399688928) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                        |q $ %{} :Leaf (:at 1518156288482) (:by |root) (:text |refresh-reel)
                |yv $ %{} :Expr (:at 1507399715229) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507399715600) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                |yy $ %{} :Expr (:at 1527788302920) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788303612) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788304925) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788306048) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788306884) (:by |root) (:text |config)
                |yyT $ %{} :Expr (:at 1636256706820) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636256706820) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1636256706820) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1636256706820) (:by |rJG4IHzWf) (:text |build-errors)
                |yyj $ %{} :Expr (:at 1636256706820) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636256706820) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1636256706820) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1636256706820) (:by |rJG4IHzWf) (:text |hud!)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1584781004285) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor)
                              |j $ %{} :Expr (:at 1584781007287) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584781007486) (:by |rJG4IHzWf) (:text |[])
                  |r $ %{} :Expr (:at 1612278909070) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707627469648) (:by |rJG4IHzWf) (:text |:ir)
                      |j $ %{} :Leaf (:at 1612278911691) (:by |rJG4IHzWf) (:text |nil)
                  |v $ %{} :Expr (:at 1615448083836) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615448087864) (:by |rJG4IHzWf) (:text |:preview)
                      |j $ %{} :Leaf (:at 1615448089423) (:by |rJG4IHzWf) (:text |nil)
                  |w $ %{} :Expr (:at 1707625671189) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707625680597) (:by |rJG4IHzWf) (:text |:bookmarks)
                      |b $ %{} :Expr (:at 1707625692654) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707625681087) (:by |rJG4IHzWf) (:text |[])
                  |x $ %{} :Expr (:at 1707625863347) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1707625864864) (:by |rJG4IHzWf) (:text |:pointer)
                      |b $ %{} :Leaf (:at 1707626116713) (:by |rJG4IHzWf) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693644419597) (:by |rJG4IHzWf) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |n $ %{} :Expr (:at 1507399852251) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1693644421305) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1693644423331) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1693644423794) (:by |rJG4IHzWf) (:text |s)
                      |j $ %{} :Expr (:at 1584874625235) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states)
                          |j $ %{} :Leaf (:at 1584874628374) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1693644426620) (:by |rJG4IHzWf) (:text |cursor)
                          |t $ %{} :Leaf (:at 1693644426884) (:by |rJG4IHzWf) (:text |s)
                  |q $ %{} :Expr (:at 1612278886218) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1693644428580) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612278890513) (:by |rJG4IHzWf) (:text |:ir-data)
                          |b $ %{} :Leaf (:at 1693644430568) (:by |rJG4IHzWf) (:text |data)
                      |j $ %{} :Expr (:at 1612278890803) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612278894937) (:by |rJG4IHzWf) (:text |assoc)
                          |j $ %{} :Leaf (:at 1612278897222) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1612278899268) (:by |rJG4IHzWf) (:text |:ir)
                          |v $ %{} :Leaf (:at 1612279284132) (:by |rJG4IHzWf) (:text |data)
                  |r $ %{} :Expr (:at 1615448303647) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1693644431453) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615448306456) (:by |rJG4IHzWf) (:text |:preview)
                          |b $ %{} :Leaf (:at 1693644432502) (:by |rJG4IHzWf) (:text |data)
                      |j $ %{} :Expr (:at 1615448307167) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615448308056) (:by |rJG4IHzWf) (:text |assoc)
                          |j $ %{} :Leaf (:at 1615448309356) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1615448311610) (:by |rJG4IHzWf) (:text |:preview)
                          |v $ %{} :Leaf (:at 1615448312196) (:by |rJG4IHzWf) (:text |data)
                  |t $ %{} :Expr (:at 1518157547521) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1693644433128) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1693644433885) (:by |rJG4IHzWf) (:text |data)
                      |j $ %{} :Leaf (:at 1584874637339) (:by |rJG4IHzWf) (:text |data)
                  |u $ %{} :Expr (:at 1707626016485) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1707626017593) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707626060443) (:by |rJG4IHzWf) (:text |:new-bookmark)
                          |b $ %{} :Leaf (:at 1707626026053) (:by |rJG4IHzWf) (:text |b)
                      |b $ %{} :Expr (:at 1707626053225) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1707626054057) (:by |rJG4IHzWf) (:text |->)
                          |L $ %{} :Leaf (:at 1707626055642) (:by |rJG4IHzWf) (:text |store)
                          |T $ %{} :Expr (:at 1707626026839) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707626030257) (:by |rJG4IHzWf) (:text |update)
                              |h $ %{} :Leaf (:at 1707626038394) (:by |rJG4IHzWf) (:text |:bookmarks)
                              |l $ %{} :Expr (:at 1707626039335) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707626040829) (:by |rJG4IHzWf) (:text |fn)
                                  |b $ %{} :Expr (:at 1707626041172) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707626041413) (:by |rJG4IHzWf) (:text |bs)
                                  |h $ %{} :Expr (:at 1707626042087) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707628865899) (:by |rJG4IHzWf) (:text |prepend)
                                      |b $ %{} :Leaf (:at 1707626043611) (:by |rJG4IHzWf) (:text |bs)
                                      |h $ %{} :Leaf (:at 1707626044067) (:by |rJG4IHzWf) (:text |b)
                          |b $ %{} :Expr (:at 1707626070100) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707626075956) (:by |rJG4IHzWf) (:text |assoc)
                              |b $ %{} :Leaf (:at 1707626077799) (:by |rJG4IHzWf) (:text |:pointer)
                              |h $ %{} :Leaf (:at 1707628873452) (:by |rJG4IHzWf) (:text |0)
                  |uT $ %{} :Expr (:at 1707626118959) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1707626123754) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707626122451) (:by |rJG4IHzWf) (:text |:point-to)
                          |b $ %{} :Leaf (:at 1707626126304) (:by |rJG4IHzWf) (:text |idx)
                      |b $ %{} :Expr (:at 1707626127343) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707626129278) (:by |rJG4IHzWf) (:text |assoc)
                          |X $ %{} :Leaf (:at 1707628721740) (:by |rJG4IHzWf) (:text |store)
                          |b $ %{} :Leaf (:at 1707626130488) (:by |rJG4IHzWf) (:text |:pointer)
                          |h $ %{} :Leaf (:at 1707626131788) (:by |rJG4IHzWf) (:text |idx)
                  |uj $ %{} :Expr (:at 1707626133926) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1707626144799) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707626152668) (:by |rJG4IHzWf) (:text |:remove-bookmark)
                          |b $ %{} :Leaf (:at 1707626156541) (:by |rJG4IHzWf) (:text |idx)
                      |b $ %{} :Expr (:at 1707626157090) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1707626161197) (:by |rJG4IHzWf) (:text |->)
                          |b $ %{} :Leaf (:at 1707626162030) (:by |rJG4IHzWf) (:text |store)
                          |h $ %{} :Expr (:at 1707626173987) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1707626164244) (:by |rJG4IHzWf) (:text |update)
                              |b $ %{} :Leaf (:at 1707626174547) (:by |rJG4IHzWf) (:text |:bookmarks)
                              |h $ %{} :Expr (:at 1707626175139) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1707626176251) (:by |rJG4IHzWf) (:text |fn)
                                  |b $ %{} :Expr (:at 1707626176537) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707626176730) (:by |rJG4IHzWf) (:text |bs)
                                  |h $ %{} :Expr (:at 1707626269643) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1707626271410) (:by |rJG4IHzWf) (:text |.dissoc)
                                      |b $ %{} :Leaf (:at 1707626274468) (:by |rJG4IHzWf) (:text |bs)
                                      |h $ %{} :Leaf (:at 1707626276815) (:by |rJG4IHzWf) (:text |idx)
                  |v $ %{} :Expr (:at 1610792975765) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1693644437849) (:by |rJG4IHzWf) (:text |_)
                      |T $ %{} :Expr (:at 1693644438968) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1693644439773) (:by |rJG4IHzWf) (:text |do)
                          |L $ %{} :Expr (:at 1693644440166) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693644442060) (:by |rJG4IHzWf) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1693644447496) (:by |rJG4IHzWf) (:text "|\"unknown op:")
                              |h $ %{} :Leaf (:at 1693644448462) (:by |rJG4IHzWf) (:text |op)
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1584874614885) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1584874616720) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1584874616895) (:by |rJG4IHzWf) (:text |[])
                    |j $ %{} :Leaf (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1584874621524) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1584874621745) (:by |rJG4IHzWf) (:text |[])
                        |j $ %{} :Leaf (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
