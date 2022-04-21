
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
  :entries $ {}
  :files $ {}
    |app.comp.container $ {}
      :defs $ {}
        |calcit-fn? $ quote
          defn calcit-fn? (x)
            and (map? x)
              = :fn $ get x :kind
        |calcit-keyword? $ quote
          defn calcit-keyword? (x)
            and (map? x)
              = "\"keyword" $ get x :kind
        |calcit-proc? $ quote
          defn calcit-proc? (x)
            and (map? x)
              = :proc $ get x :kind
        |calcit-symbol? $ quote
          defn calcit-symbol? (x)
            and (map? x)
              = :symbol $ get x :kind
        |calcit-syntax? $ quote
          defn calcit-syntax? (x)
            and (map? x)
              = (get x :kind) :syntax
        |comp-code $ quote
          defcomp comp-code (expr last?)
            cond
                keyword? expr
                <> (str expr)
                  {}
                    :color $ hsl 200 80 40
                    :margin "\"0 4px"
                    :white-space :pre-line
                    :display :inline-block
              (calcit-keyword? expr)
                <>
                  str "\":" $ get expr :val
                  {}
                    :color $ hsl 200 80 40
                    :margin "\"0 4px"
                    :white-space :pre-line
                    :display :inline-block
              (list? expr)
                div
                  {} (:class-name "\"expr-area")
                    :style $ merge
                      {} (:border-width "\"1px 0 0 1px") (:margin-left "\"12px") (:font-family ui/font-code) (:margin-bottom "\"2px") (:margin-top "\"2px") (:vertical-align :top) (:border-style :solid) (:border-radius "\"4px")
                      if
                        and
                          <= (count expr) 2
                          every? expr calcit-symbol?
                        {} $ :display :inline-block
                      if last? $ {} (:display :inline-block)
                  , & $ let
                      size $ count expr
                    map-indexed expr $ fn (idx x)
                      comp-code x $ = (inc idx) size
              (calcit-symbol? expr) (comp-symbol expr)
              (calcit-proc? expr)
                <> (get expr :name)
                  {}
                    :color $ hsl 0 80 50
                    :margin "\"0 4px"
                    :white-space :pre-line
                    :display :inline-block
              (calcit-fn? expr)
                <> (get expr :name)
                  {}
                    :color $ hsl 0 80 50
                    :margin "\"0 4px"
                    :white-space :pre-line
                    :display :inline-block
              (calcit-syntax? expr)
                <> (get expr :name)
                  {}
                    :color $ hsl 0 80 50
                    :margin "\"0 4px"
                    :white-space :pre-line
                    :display :inline-block
              true $ pre
                {} $ :style
                  {}
                    :color $ hsl 200 80 60
                    :margin "\"0 4px"
                    :white-space :pre
                    :display :inline-block
                <> $ pr-str expr
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                cursor $ either (:cursor states) ([])
                state $ either (:data states)
                  {} $ :selected nil
              div
                {} $ :style (merge ui/global ui/fullscreen ui/column)
                memof-call comp-header
                div
                  {} $ :style (merge ui/expand ui/row)
                  let
                      ns-names $ if
                        some-in? store $ [] :ir :files
                        keys $ get-in store ([] :ir :files)
                        #{}
                    when dev? $ js/console.log store
                    div
                      {} $ :style
                        {} (:padding "\"8 0px") (:width "\"20%") (:overflow :auto)
                          :border-right $ str "\"1px solid " (hsl 0 0 90)
                      , & $ if (empty? ns-names)
                        [] $ div ({})
                          <> "\"No namespaces" $ {} (:font-family ui/font-fancy)
                        -> ns-names (.to-list) (sort &compare)
                          map $ fn (name)
                            div
                              {}
                                :on-click $ fn (e d!)
                                  d! cursor $ assoc state :selected name
                                :style $ merge
                                  {} $ :padding "\"0 8px"
                                  if
                                    = name $ :selected state
                                    {} $ :background-color (hsl 0 0 94)
                                :class-name "\"hover-item"
                              <> name
                  let
                      selected $ :selected state
                      has-file? $ some-in? store ([] :ir :files selected)
                    if has-file?
                      comp-file (>> states selected)
                        get-in store $ [] :ir :files selected
                      div
                        {} $ :style ui/expand
                        <> $ str "\"No file slected: " selected
                comp-preview $ :preview store
                when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-file $ quote
          defcomp comp-file (states file)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} $ :selected nil
                selected $ :selected state
              div
                {} $ :style (merge ui/expand ui/column)
                let
                    defs $ keys (get file :defs)
                  div
                    {} $ :style (merge ui/expand ui/row)
                    div
                      {} $ :style
                        {} (:overflow :auto) (:min-width "\"12%")
                      , & $ -> defs (.to-list) (sort &compare)
                        map $ fn (name)
                          div
                            {} (:class-name "\"hover-item")
                              :style $ merge
                                {} $ :padding "\"0 8px"
                                if (= name selected)
                                  {} $ :background-color (hsl 0 0 95)
                              :on-click $ fn (e d!)
                                d! cursor $ assoc state :selected name
                            <> name
                    div
                      {} $ :style ui/expand
                      let
                          declaration $ get-in file ([] :defs selected)
                        if (calcit-fn? declaration) (comp-fn declaration) (comp-code declaration false)
        |comp-fn $ quote
          defcomp comp-fn (f)
            div ({})
              div ({})
                <> $ str "\"Name: " (get f :ns) "\"/" (get f :name)
              div ({})
                <> $ str "\"Args:"
                comp-code (get f :args) false
              div ({})
                <> $ str "\"Code:"
                comp-code (get f :code) false
        |comp-header $ quote
          defcomp comp-header () $ div
            {} $ :style
              {}
                :border-bottom $ str "\"1px solid " (hsl 0 0 90)
                :padding 8
            input $ {} (:type "\"file")
              :on-change $ fn (e d!)
                let
                    file $ -> (:event e) .-target .-files (aget 0)
                    fr $ "js/new FileReader"
                  -> (:event e) .-target $ aset "\"value" nil
                  aset fr "\"onload" $ fn (event)
                    d! :ir-data $ parse-cirru-edn (-> event .-target .-result)
                  .!readAsText fr file
        |comp-preview $ quote
          defcomp comp-preview (data)
            if (some? data)
              div
                {} $ :style
                  {} (:position :absolute) (:bottom 0) (:right 0)
                    :background-color $ hsl 0 0 100 0.6
                    :font-family ui/font-code
                    :white-space :pre
                    :border $ str "\"1px solid " (hsl 0 0 90)
                    :font-size 12
                    :line-height "\"20px"
                    :padding 8
                div $ {}
                  :innerText $ trim (format-cirru-edn data)
                div $ {} (:inner-text "\"×")
                  :style $ {} (:position :absolute) (:top 4) (:right 4)
                    :color $ hsl 0 80 60
                    :cursor :pointer
                    :font-size 14
                  :on-click $ fn (e d!) (d! :preview nil)
              div $ {}
        |comp-symbol $ quote
          defcomp comp-symbol (expr)
            let
                resolved-ns $ get-in expr ([] :resolved :ns)
              div
                {} $ :style
                  merge ui/column $ {} (:display :inline-flex) (:margin "\"0px 4px") (:padding "\"0 4px") (:line-height "\"1.2")
                div
                  {}
                    :style $ merge
                      {} $ :display :inline-block
                    :on-click $ fn (e d!) (d! :preview expr)
                  <> (get expr :val)
                    case-default
                      -> expr (get "\"resolved") (get :kind)
                      , nil
                        "\"resolvedLocal" $ {}
                          :color $ hsl 200 80 70
                        "\"notResolved" $ {}
                          :color $ hsl 150 80 70
                div ({})
                  <> (get expr :ns)
                    {} (:font-size 8)
                      :color $ hsl 0 0 80
                      :font-family ui/font-normal
                  =< 4 nil
                  if
                    /= (get expr :ns) resolved-ns
                    span $ {}
                      :style $ {} (:font-size "\"8px") (:white-space :nowrap) (:font-family ui/font-normal)
                        :color $ hsl 0 80 70
                      :inner-text resolved-ns
      :ns $ quote
        ns app.comp.container $ :require ([] respo-ui.core :as ui)
          [] respo.core :refer $ [] defcomp defeffect <> >> div button textarea span input pre
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] respo-md.comp.md :refer $ [] comp-md
          [] app.config :refer $ [] dev?
          [] memof.alias :refer $ [] memof-call
          [] respo.util.format :refer $ [] hsl
    |app.config $ {}
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process) (= "\"true" js/process.env.cdn)
            :else false
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:title "\"Calcit") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png") (:storage-key "\"calcit-ir-viewer")
      :ns $ quote (ns app.config)
    |app.main $ {}
      :defs $ {}
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |main! $ quote
          defn main! () (load-console-formatter!)
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |a dispatch!
            .addEventListener js/window |beforeunload $ fn (event) (persist-storage!)
            repeat! 60 persist-storage!
            let
                raw $ .getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ extract-cirru-edn (js/JSON.parse raw)
            println "|App started."
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |persist-storage! $ quote
          defn persist-storage! () $ .setItem js/localStorage (:storage-key config/site)
            js/JSON.stringify $ to-cirru-edn (:store @*reel)
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
        |snippets $ quote
          defn snippets () $ println config/cdn?
      :ns $ quote
        ns app.main $ :require
          [] respo.core :refer $ [] render! clear-cache!
          [] app.comp.container :refer $ [] comp-container
          [] app.updater :refer $ [] updater
          [] app.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.schema :as reel-schema
          [] app.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
    |app.schema $ {}
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
            :ir-data nil
            :preview nil
      :ns $ quote (ns app.schema)
    |app.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case op
              :states $ update-states store data
              :ir-data $ assoc store :ir data
              :preview $ assoc store :preview data
              :hydrate-storage data
              op store
      :ns $ quote
        ns app.updater $ :require
          [] respo.cursor :refer $ [] update-states
