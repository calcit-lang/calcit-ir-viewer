
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
    :version |0.0.1
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require ([] respo-ui.core :as ui)
          [] respo.core :refer $ [] defcomp defeffect <> >> div button textarea span input
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] respo-md.comp.md :refer $ [] comp-md
          [] app.config :refer $ [] dev?
          [] memof.alias :refer $ [] memof-call
          [] respo.util.format :refer $ [] hsl
      :defs $ {}
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
                    defs $ keys (get file "\"defs")
                  div
                    {} $ :style (merge ui/expand ui/row)
                    div
                      {} $ :style
                        {} (:overflow :auto) (:min-width "\"12%")
                      , & $ ->> defs (set->list) (sort compare-string)
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
                          declaration $ get-in file ([] "\"defs" selected)
                        if (calcit-fn? declaration) (comp-fn declaration) (comp-code declaration false)
                =< nil 8
                comp-imports $ get file "\"import"
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
                  :innerText $ trim (write-cirru-edn data)
                div $ {} (:inner-text "\"×")
                  :style $ {} (:position :absolute) (:top 4) (:right 4)
                    :color $ hsl 0 80 60
                    :cursor :pointer
                    :font-size 14
                  :on-click $ fn (e d!) (d! :preview nil)
              div $ {}
        |comp-fn $ quote
          defcomp comp-fn (f)
            div ({})
              div ({})
                <> $ str "\"Name: " (get f "\"ns") "\"/" (get f "\"name")
              div ({})
                <> $ str "\"Args:"
                comp-code (get f "\"args") false
              div ({})
                <> $ str "\"Code:"
                comp-code (get f "\"code") false
        |calcit-proc? $ quote
          defn calcit-proc? (x)
            and (map? x)
              = "\"proc" $ get x "\"kind"
        |comp-imports $ quote
          defcomp comp-imports (imports)
            div
              {} $ :style
                merge ui/expand ui/column $ {}
                  :border-top $ str "\"1px solid " (hsl 0 0 90)
                  :max-height "\"20%"
                  :overflow :auto
                  :padding "\"0 8px"
              , & $ ->> imports (to-pairs) (set->list)
                map $ fn (pair)
                  let[] (name info) pair $ div
                    {} $ :style
                      merge ui/row $ {} (:line-height "\"1.6")
                    div
                      {} $ :style
                        {} $ :min-width "\"12%"
                      <> name
                    div
                      {} $ :style
                        merge ui/expand $ {} (:font-family ui/font-normal)
                      <> info
        |calcit-fn? $ quote
          defn calcit-fn? (x)
            and (map? x)
              = (get x "\"kind") "\"fn"
        |comp-code $ quote
          defcomp comp-code (expr last?)
            cond
                list? expr
                div
                  {} (:class-name "\"expr-area")
                    :style $ merge
                      {} (:border-width "\"1px 0 0 1px") (:margin-left "\"12px") (:font-family ui/font-code) (:margin-bottom "\"2px") (:margin-top "\"2px") (:vertical-align :top) (:border-style :solid) (:border-radius "\"4px")
                      if
                        and
                          <= (count expr) 2
                          every? calcit-symbol? expr
                        {} $ :display :inline-block
                      if last? $ {} (:display :inline-block)
                  , & $ let
                      size $ count expr
                    map-indexed
                      fn (idx x)
                        comp-code x $ = (inc idx) size
                      , expr
              (calcit-symbol? expr) (comp-symbol expr)
              (calcit-proc? expr)
                <> "\"Proc" $ {}
                  :color $ hsl 0 80 50
                  :margin "\"0 4px"
                  :white-space :pre-line
                  :display :inline-block
              (calcit-keyword? expr)
                <>
                  str "\":" $ get expr "\"val"
                  {}
                    :color $ hsl 200 80 40
                    :margin "\"0 4px"
                    :white-space :pre-line
                    :display :inline-block
              true $ <> (escape expr)
                {}
                  :color $ hsl 200 80 60
                  :margin "\"0 4px"
                  :white-space :pre
                  :display :inline-block
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
                        some-in? store $ [] :ir "\"files"
                        keys $ get-in store ([] :ir "\"files")
                        #{}
                    div
                      {} $ :style
                        {} (:padding "\"8 0px") (:width "\"20%") (:overflow :auto)
                          :border-right $ str "\"1px solid " (hsl 0 0 90)
                      , & $ if (empty? ns-names)
                        [] $ div ({})
                          <> "\"No namespaces" $ {} (:font-family ui/font-fancy)
                        ->> ns-names (set->list) (sort compare-string)
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
                      has-file? $ some-in? store ([] :ir "\"files" selected)
                    if has-file?
                      comp-file (>> states selected)
                        get-in store $ [] :ir "\"files" selected
                      div
                        {} $ :style ui/expand
                        <> $ str "\"No file slected: " selected
                comp-preview $ :preview store
                when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-header $ quote
          defcomp comp-header () $ div
            {} $ :style
              {}
                :border-bottom $ str "\"1px solid " (hsl 0 0 90)
                :padding 8
            input $ {} (:type "\"file") (:accept "\"application/json")
              :on-change $ fn (e d!)
                let
                    file $ -> (:event e) .-target .-files (aget 0)
                    fr $ "js/new FileReader"
                  -> (:event e) .-target $ aset "\"value" nil
                  aset fr "\"onload" $ fn (event)
                    d! :ir-data $ to-calcit-data
                      js/JSON.parse $ -> event .-target .-result
                  .readAsText fr file
        |comp-symbol $ quote
          defcomp comp-symbol (expr)
            let
                resolved-ns $ get-in expr ([] "\"resolved" "\"ns")
              div
                {} $ :style
                  merge ui/column $ {} (:display :inline-flex) (:margin "\"0px 4px") (:padding "\"0 4px") (:line-height "\"1.2")
                div
                  {}
                    :style $ merge
                      {} $ :display :inline-block
                    :on-click $ fn (e d!) (d! :preview expr)
                  <> (get expr "\"val")
                    case-default
                      -> expr (get "\"resolved") (get "\"kind")
                      , nil
                      "\"resolvedLocal" $ {}
                        :color $ hsl 200 80 70
                      "\"notResolved" $ {}
                        :color $ hsl 150 80 70
                div ({})
                  <> (get expr "\"ns")
                    {} (:font-size 8)
                      :color $ hsl 0 0 80
                      :font-family ui/font-normal
                  =< 4 nil
                  if
                    /= (get expr "\"ns") resolved-ns
                    span $ {}
                      :style $ {} (:font-size "\"8px") (:white-space :nowrap) (:font-family ui/font-normal)
                        :color $ hsl 0 80 70
                      :inner-text resolved-ns
        |calcit-keyword? $ quote
          defn calcit-keyword? (x)
            and (map? x)
              = "\"keyword" $ get x "\"kind"
        |calcit-symbol? $ quote
          defn calcit-symbol? (x)
            and (map? x)
              = "\"symbol" $ get x "\"kind"
      :proc $ quote ()
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process) (= "\"true" js/process.env.cdn)
            :else false
        |dev? $ quote (def dev? true)
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/calcit-workflow/") (:title "\"Calcit") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png") (:storage-key "\"workflow")
      :proc $ quote ()
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] app.comp.container :refer $ [] comp-container
          [] app.updater :refer $ [] updater
          [] app.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.schema :as reel-schema
          [] app.config :as config
      :defs $ {}
        |ssr? $ quote
          def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |main! $ quote
          defn main! () (load-console-formatter!)
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if ssr? $ render-app! realize-ssr!
            render-app! render!
            add-watch *reel :changes $ fn (reel prev) (render-app! render!)
            listen-devtools! |a dispatch!
            .addEventListener js/window |beforeunload $ fn (event) (persist-storage!)
            repeat! 60 persist-storage!
            let
                raw $ .getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ extract-cirru-edn (js/JSON.parse raw)
            println "|App started."
        |persist-storage! $ quote
          defn persist-storage! () $ .setItem js/localStorage (:storage-key config/site)
            js/JSON.stringify $ to-cirru-edn (:store @*reel)
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |snippets $ quote
          defn snippets () $ println config/cdn?
        |render-app! $ quote
          defn render-app! (renderer)
            renderer mount-target (comp-container @*reel) (\ dispatch! % %2)
        |reload! $ quote
          defn reload! () (clear-cache!) (remove-watch *reel :changes)
            add-watch *reel :changes $ fn (reel prev) (render-app! render!)
            reset! *reel $ refresh-reel @*reel schema/store updater
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
      :proc $ quote ()
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
            :ir-data nil
            :preview nil
      :proc $ quote ()
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          [] respo.cursor :refer $ [] update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case op
              :states $ update-states store data
              :ir-data $ assoc store :ir data
              :preview $ assoc store :preview data
              :hydrate-storage data
              op store
      :proc $ quote ()
