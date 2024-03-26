
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |calcit-fn? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-fn? (x)
              and (map? x)
                = :fn $ get x :kind
        |calcit-import? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-import? (x)
              and (map? x)
                = (get x :kind) :import
        |calcit-literal? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-literal? (x)
              let
                  ret $ or (number? x) (string? x) (bool? x)
                    and (map? x)
                      includes? (#{} :symbol :number :tag :proc :syntax :local :registered) (get x :kind)
                ; println "\"DETECTHING:" x ret
                , ret
        |calcit-local? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-local? (x)
              and (map? x)
                = :local $ get x :kind
        |calcit-macro? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-macro? (x)
              and (map? x)
                = :macro $ get x :kind
        |calcit-method? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-method? (x)
              and (map? x)
                = (get x :kind) :method
        |calcit-proc? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-proc? (x)
              and (map? x)
                = :proc $ get x :kind
        |calcit-raw-code? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-raw-code? (x)
              and (map? x)
                = (get x :kind) :raw-code
        |calcit-registered? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-registered? (x)
              and (map? x)
                = :registered $ get x :kind
        |calcit-symbol? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-symbol? (x)
              and (map? x)
                = :symbol $ get x :kind
        |calcit-syntax? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-syntax? (x)
              and (map? x)
                = (get x :kind) :syntax
        |calcit-tag? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-tag? (x)
              and (map? x)
                = "\"tag" $ get x :kind
        |comp-bookmarks $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-bookmarks (bookmarks pointer)
              list-> ({})
                -> bookmarks $ map-indexed
                  fn (idx b)
                    [] idx $ tag-match b
                        :bookmark ns definition
                        div
                          {}
                            :on-click $ fn (e d!)
                              d! $ :: :point-to idx
                            :class-name $ str-spaced style-bookmark
                              if (= pointer idx) style-bookmark-selected
                          <> $ str ns "\"/" definition
                          comp-close $ {} (:class-name style-close)
                            :on-click $ fn (e d!)
                              d! $ :: :remove-bookmark idx
                      _ $ eprintln "\"unknown bookmark" b
        |comp-code $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-code (expr last?)
              cond
                  tag? expr
                  <> (str expr) css-code-tag
                (calcit-tag? expr)
                  <>
                    str "\":" $ get expr :val
                    , css-code-tag
                (list? expr)
                  div
                    {}
                      :class-name $ str-spaced css-expr-area css-code-expr
                      :style $ merge
                        if
                          and
                            <= (count expr) 3
                            every? expr calcit-literal?
                          {} $ :display :inline-flex
                        if last? $ {} (:display :inline-block)
                    , & $ let
                        size $ count expr
                      map-indexed expr $ fn (idx x)
                        comp-code x $ = (inc idx) size
                (calcit-import? expr) (comp-import expr)
                (calcit-local? expr) (comp-local expr)
                (calcit-registered? expr) (comp-registered expr)
                (calcit-symbol? expr) (comp-symbol expr)
                (calcit-proc? expr) (comp-proc expr)
                (calcit-fn? expr)
                  <> (get expr :name) css-code-fn
                (calcit-syntax? expr) (comp-syntax expr)
                (calcit-method? expr) (comp-method expr)
                (calcit-raw-code? expr) (comp-raw-code expr)
                true $ pre
                  {} $ :class-name css-code-default
                  <> $ to-lispy-string expr
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                  cursor $ either (:cursor states) ([])
                div
                  {} $ :class-name (str-spaced css/global css/fullscreen css/column)
                  memof1-call comp-header
                  if-let
                    pointer $ :pointer store
                    let
                        bookmarks $ :bookmarks store
                        bookmark $ get bookmarks pointer
                      tag-match bookmark
                          :bookmark ns definition
                          do (println ns definition)
                            div
                              {} $ :class-name (str-spaced css/row css/expand)
                              comp-file-entry (>> states :file-entry)
                                get-in store $ [] :ir :files
                              comp-bookmarks bookmarks pointer
                              div
                                {} (:class-name css/expand)
                                  :style $ {} (:padding-bottom 120)
                                let
                                    declaration $ get-in store ([] :ir :files ns :defs definition)
                                  if (calcit-fn? declaration) (comp-fn declaration)
                                    if (calcit-macro? declaration) (comp-macro declaration)
                                      div
                                        {} $ :class-name css-pad8
                                        comp-code declaration false
                        _ $ eprintln "\"unknown bookmark data" bookmark
                  comp-preview $ :preview store
                  when dev? $ comp-reel (>> states :reel) reel ({})
                  when dev? $ comp-inspect "\"Store" store
                    {} $ :bottom 0
        |comp-file $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-file (ns file selected-def)
              div
                {}
                  :class-name $ str-spaced css/expand css/column
                  :style $ {}
                    :border-top $ str-spaced "\"2px solid" (hsl 0 0 80)
                let
                    defs $ keys (get file :defs)
                  list->
                    {} $ :class-name (str-spaced css/expand css/column)
                    -> defs (.to-list) (sort &compare)
                      map $ fn (name)
                        [] name $ div
                          {}
                            :class-name $ str-spaced css-pad8 css-hover-item css/font-code!
                            :style $ if (= name selected-def)
                              {} $ :background-color (hsl 0 0 95)
                            :on-click $ fn (e d!)
                              d! $ :: :new-bookmark (:: :bookmark ns name)
                          <> name
        |comp-file-entry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-file-entry (states files)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} $ :selected nil
                div
                  {} (:class-name css/column)
                    :style $ {} (:width 400)
                  let
                      ns-names $ if (some? files) (keys files) (#{})
                    ; when dev? $ js/console.log store
                    div
                      {} (:class-name css/expand)
                        :style $ {} (:padding "\"8 0px") (:overflow :auto)
                          :border-right $ str "\"1px solid " (hsl 0 0 90)
                      , & $ if (empty? ns-names)
                        [] $ div
                          {} $ :style
                            {} $ :padding "\"0 12px"
                          <> "\"No namespaces" css/font-fancy
                        -> ns-names (.to-list) (sort &compare)
                          map $ fn (name)
                            div
                              {}
                                :on-click $ fn (e d!)
                                  d! cursor $ assoc state :selected name
                                :style $ if
                                  = name $ :selected state
                                  {} $ :background-color (hsl 0 0 94)
                                :class-name $ str-spaced css-pad8 css-hover-item css/font-code!
                              <> name
                  let
                      selected $ :selected state
                      has-file? $ some-in? files ([] selected)
                    if has-file?
                      comp-file selected
                        get-in files $ [] selected
                        , nil
                      div
                        {}
                          :class-name $ str-spaced css/expand css/font-fancy
                          :style $ {} (:padding "\"0 8px")
                        <> $ str "\"No file slected: " selected
        |comp-fn $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-fn (f)
              div
                {} $ :class-name css-pad8
                div ({})
                  <> $ str "\"Name: " (get f :ns) "\"/" (get f :name)
                div ({})
                  <> $ str "\"Args:"
                  comp-code (get f :args) false
                div ({})
                  <> $ str "\"Code:"
                  comp-code (get f :code) false
        |comp-header $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-header () $ div
              {} $ :style
                {}
                  :border-bottom $ str "\"1px solid " (hsl 0 0 90)
                  :padding 8
              div
                {} (:class-name css-file-button)
                  :on-click $ fn (e d!)
                    -> e :event .-currentTarget .-children .-0 $ .!click
                input $ {} (:type "\"file")
                  :style $ {} (:opacity 0.2) (:width 0) (:top 0) (:position :absolute) (:pointer-events :none)
                  :on-change $ fn (e d!)
                    let
                        file $ -> (:event e) .-target .-files (aget 0)
                        fr $ new js/FileReader
                      -> (:event e) .-target $ aset "\"value" nil
                      set! (.-onload fr)
                        fn (event)
                          d! :ir-data $ parse-cirru-edn (-> event .-target .-result)
                      .!readAsText fr file
                div ({}) (<> "\"Pick IR file")
        |comp-import $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-import (expr)
              div
                {}
                  :class-name $ str-spaced css/column css-code-symbol
                  :style $ merge
                    {} $ :display :inline-flex
                  :on-click $ fn (e d!) (d! :preview expr)
                <> $ get expr :def
                div
                  {} $ :class-name css/row-middle
                  <>
                    str $ :ns expr
                    , style-import-ns
                  a $ {} (:class-name css/link) (:inner-text "\"goto")
                    :style $ {} (:font-size 10)
                    :on-click $ fn (e d!)
                      d! $ :: :new-bookmark
                        :: :bookmark (:ns expr) (:def expr)
        |comp-local $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-local (expr)
              div
                {}
                  :class-name $ str-spaced css/column css-code-symbol
                  :style $ merge
                    {} $ :display :inline-flex
                  :on-click $ fn (e d!) (d! :preview expr)
                <> $ get expr :val
                <> "\"local" style-tiny-hint
        |comp-macro $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-macro (f)
              div
                {} $ :class-name css-pad8
                div ({})
                  <> $ str "\"Macro name: " (get f :ns) "\"/" (get f :name)
                div ({})
                  <> $ str "\"Args:"
                  comp-code (get f :args) false
                div ({})
                  <> $ str "\"Code:"
                  comp-code (get f :code) false
        |comp-method $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-method (expr)
              div
                {} (:class-name css/column)
                  :style $ {} (:display :inline-flex) (:line-height "\"1.2")
                  :on-click $ fn (e d!) (d! :preview expr)
                <>
                  str "\"." $ get expr :method
                  , css-code-method
                <>
                  str "\"method " $ :behavior expr
                  , style-tiny-hint
        |comp-preview $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-preview (data)
              if (some? data)
                div
                  {} $ :class-name css-preview-tip
                  div $ {}
                    :innerText $ trim (format-cirru-edn data)
                  div $ {} (:inner-text "\"×") (:class-name css-preview-close)
                    :on-click $ fn (e d!) (d! :preview nil)
                div $ {}
        |comp-proc $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-proc (expr)
              div
                {} (:class-name css/column)
                  :style $ {} (:display :inline-flex) (:line-height "\"1.2")
                <> (get expr :name) css-code-proc
                <> "\"proc" style-tiny-hint
        |comp-raw-code $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-raw-code (expr)
              div
                {} (:class-name css/column)
                  :style $ {} (:display :inline-flex) (:line-height 1.2)
                <> $ :code expr
                <> "\"js raw" style-tiny-hint
        |comp-registered $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-registered (expr)
              div
                {} $ :class-name (str-spaced css/column css-code-symbol)
                div
                  {}
                    :style $ merge
                      {} $ :display :inline-block
                    :on-click $ fn (e d!) (d! :preview expr)
                  <> $ get expr :alias
        |comp-symbol $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-symbol (expr)
              div
                {}
                  :class-name $ str-spaced css/column css-code-symbol
                  :style $ merge
                    {} $ :display :inline-flex
                  :on-click $ fn (e d!) (d! :preview expr)
                <> $ :val expr
                div ({})
                  <> (get expr :ns) css-code-symbol-ns
        |comp-syntax $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-syntax (expr)
              div
                {} (:class-name css/column)
                  :style $ {} (:display :inline-flex) (:line-height "\"1.2")
                <> (get expr :name) css-code-syntax
                <> "\"syntax" style-tiny-hint
        |css-code-default $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-default $ {}
              "\"$0" $ {}
                :color $ hsl 200 80 60
                :margin "\"0 4px"
                :white-space :pre
                :display :inline-block
        |css-code-expr $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-expr $ {}
              "\"$0" $ {} (:border-width "\"1px 0 0 1px") (:margin-left "\"14px") (:padding-left "\"2px") (:font-family ui/font-code) (:margin-bottom "\"2px") (:margin-top "\"4px") (:vertical-align :top) (:border-style :solid) (:border-radius "\"8px")
        |css-code-fn $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-fn $ {}
              "\"$0" $ {}
                :color $ hsl 0 80 50
                :margin "\"0 4px"
                :white-space :pre-line
                :display :inline-block
        |css-code-method $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-method $ {}
              "\"$0" $ {}
                :color $ hsl 300 90 40
                :margin "\"0 4px"
                :white-space :pre-line
                :display :inline-block
        |css-code-proc $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-proc $ {}
              "\"$0" $ {}
                :color $ hsl 0 80 50
                :margin "\"0 4px"
                :white-space :pre-line
                :display :inline-block
        |css-code-symbol $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-symbol $ {}
              "\"$0" $ {} (:display :inline-flex) (:margin "\"0px 4px") (:padding "\"0 4px") (:line-height "\"1.2")
        |css-code-symbol-ns $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-symbol-ns $ {}
              "\"$0" $ {} (:font-size 8)
                :color $ hsl 0 0 80
                :font-family ui/font-normal
        |css-code-symbol-resolved-ns $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-symbol-resolved-ns $ {}
              "\"$0" $ {} (:font-size "\"8px") (:white-space :nowrap) (:font-family ui/font-normal)
                :color $ hsl 0 80 70
        |css-code-syntax $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-syntax $ {}
              "\"$0" $ {}
                :color $ hsl 0 80 50
                :margin "\"0 4px"
                :white-space :pre-line
                :display :inline-block
        |css-code-tag $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-tag $ {}
              "\"$0" $ {}
                :color $ hsl 200 80 40
                :margin "\"0 4px"
                :white-space :pre-line
                :display :inline-block
        |css-expr-area $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-expr-area $ {}
              "\"&" $ {} (:border-color "\"hsl(0,0%,92%)")
              "\"&:hover" $ {} (:border-color "\"hsl(0,0%,70%)")
              (str "\"&:has(." css-code-expr "\":hover)")
                {} $ :border-color "\"hsl(0,0%,92%)"
        |css-file-button $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-file-button $ {}
              "\"$0" $ {} (:width 120) (:position :relative) (:border-radius 8)
                :background-color $ hsl 200 90 72
                :text-align :center
                :color :white
                :font-family ui/font-fancy
                :font-size 18
                :line-height "\"32px"
                :cursor :pointer
                :transition-duration "\"300ms"
              "\"$0:hover" $ {}
                :box-shadow $ str "\"1px 1px 4px " (hsl 0 0 0 0.2)
                :background-color $ hsl 200 90 76
              "\"$0:active" $ {} (:transition-duration "\"0ms") (:transform "\"scale(1.02)")
        |css-hover-item $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-hover-item $ {}
              "\"&" $ {} (:font-size 12) (:cursor :pointer)
              "\"&:hover" $ {} (:background-color "\"hsl(350,0%,95%)")
        |css-pad8 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-pad8 $ {}
              "\"&" $ {} (:padding "\"0 8px")
        |css-preview-close $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-preview-close $ {}
              "\"$0" $ {} (:position :absolute) (:top 4) (:right 4)
                :color $ hsl 0 80 60
                :cursor :pointer
                :font-size 14
        |css-preview-tip $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-preview-tip $ {}
              "\"$0" $ {} (:position :absolute) (:bottom 0) (:right 0)
                :background-color $ hsl 0 0 100 0.6
                :font-family ui/font-code
                :white-space :pre
                :border $ str "\"1px solid " (hsl 0 0 90)
                :font-size 12
                :line-height "\"20px"
                :padding 8
        |style-bookmark $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-bookmark $ {}
              "\"&" $ {} (:cursor :pointer) (:padding "\"0 8px") (:position :relative)
              "\"&:hover" $ {}
                :background-color $ hsl 0 0 98
              (str "\"&:hover ." style-close)
                {} $ :opacity 1
        |style-bookmark-selected $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-bookmark-selected $ {}
              "\"&" $ {}
                :background-color $ hsl 0 0 96
        |style-close $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-close $ {}
              "\"&" $ {} (:position :absolute) (:opacity 0) (:right 4) (:top 6) (:font-size 12) (:font-weight 100)
        |style-import-ns $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-import-ns $ {}
              "\"&" $ {} (:font-size 10)
                :color $ hsl 0 0 80
                :margin-left 4
        |style-tiny-hint $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-tiny-hint $ {}
              "\"&" $ {} (:font-size 10) (:margin-left 8) (:line-height "\"16px")
                :color $ hsl 0 0 80
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require (respo-ui.core :as ui)
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input pre list-> a
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            reel.comp.reel :refer $ comp-reel
            respo-md.comp.md :refer $ comp-md
            app.config :refer $ dev?
            memof.once :refer $ memof1-call
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo-ui.comp :refer $ comp-close
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:title "\"Calcit") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png") (:storage-key "\"calcit-ir-viewer")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= (nth op 0) :states
                println "\"Dispatch:" op
              reset! *reel $ reel-updater updater @*reel op
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () (load-console-formatter!)
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |a dispatch!
              js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              repeat! 60 persist-storage!
              let
                  raw $ js/localStorage.getItem (:storage-key config/site)
                when (some? raw)
                  dispatch! $ :: :hydrate-storage
                    extract-cirru-edn $ js/JSON.parse raw
              println "|App started."
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! () $ js/localStorage.setItem (:storage-key config/site)
              js/JSON.stringify $ to-cirru-edn (:store @*reel)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |repeat! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn repeat! (duration cb)
              js/setTimeout
                fn () (cb)
                  repeat! (* 1000 duration) cb
                * 1000 duration
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
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
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
                :cursor $ []
              :ir nil
              :preview nil
              :bookmarks $ []
              :pointer nil
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                  :states cursor s
                  update-states store cursor s
                (:ir-data data) (assoc store :ir data)
                (:preview data) (assoc store :preview data)
                (:hydrate-storage data) data
                (:new-bookmark b)
                  -> store
                    update :bookmarks $ fn (bs) (prepend bs b)
                    assoc :pointer 0
                (:point-to idx) (assoc store :pointer idx)
                (:remove-bookmark idx)
                  -> store $ update :bookmarks
                    fn (bs) (.dissoc bs idx)
                _ $ do (eprintln "\"unknown op:" op) store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            [] respo.cursor :refer $ [] update-states
