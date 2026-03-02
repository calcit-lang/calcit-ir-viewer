
{} (:about "|file is generated - never edit directly; learn cr edit/tree workflows before changing") (:package |app)
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
          :examples $ []
        |calcit-import? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-import? (x)
              and (map? x)
                = (get x :kind) :import
          :examples $ []
        |calcit-literal? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-literal? (x)
              let
                  ret $ or (number? x) (string? x) (bool? x)
                    and (map? x)
                      includes? (#{} :symbol :number :tag :proc :syntax :local :registered) (get x :kind)
                ; println "\"DETECTHING:" x ret
                , ret
          :examples $ []
        |calcit-local? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-local? (x)
              and (map? x)
                = :local $ get x :kind
          :examples $ []
        |calcit-macro? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-macro? (x)
              and (map? x)
                = :macro $ get x :kind
          :examples $ []
        |calcit-method? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-method? (x)
              and (map? x)
                = (get x :kind) :method
          :examples $ []
        |calcit-proc? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-proc? (x)
              and (map? x)
                = :proc $ get x :kind
          :examples $ []
        |calcit-raw-code? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-raw-code? (x)
              and (map? x)
                = (get x :kind) :raw-code
          :examples $ []
        |calcit-registered? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-registered? (x)
              and (map? x)
                = :registered $ get x :kind
          :examples $ []
        |calcit-symbol? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-symbol? (x)
              and (map? x)
                = :symbol $ get x :kind
          :examples $ []
        |calcit-syntax? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-syntax? (x)
              and (map? x)
                = (get x :kind) :syntax
          :examples $ []
        |calcit-tag? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calcit-tag? (x)
              and (map? x)
                = "\"tag" $ get x :kind
          :examples $ []
        |comp-bookmarks $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-bookmarks (bookmarks pointer)
              list->
                {} (:class-name css/column)
                  :style $ {} (:overflow-y :auto) (:width 300)
                    :border-right $ str "|1px solid " (hsl 0 0 90)
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
          :examples $ []
        |comp-cirru-quote $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-cirru-quote (expr) (comp-ir-kind expr :cirru-quote)
          :examples $ []
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
                (and (map? expr) (= (get expr :kind) :cirru-quote))
                  comp-cirru-quote expr
                (and (map? expr) (= (get expr :kind) :tuple))
                  comp-tuple expr
                (and (map? expr) (= (get expr :kind) :struct))
                  comp-struct expr
                (and (map? expr) (= (get expr :kind) :enum))
                  comp-enum expr
                (and (map? expr) (= (get expr :kind) :record))
                  comp-record expr
                true $ pre
                  {} $ :class-name css-code-default
                  <> $ to-lispy-string expr
          :examples $ []
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                  cursor $ either (:cursor states) ([])
                  pointer $ either (:pointer store) 0
                  bookmarks $ :bookmarks store
                div
                  {} $ :class-name (str-spaced css/global css/fullscreen css/column)
                  div
                    {} $ :class-name (str-spaced css/row css/expand)
                    comp-file-entry (>> states :file-entry)
                      get-in store $ [] :ir :files
                    comp-bookmarks bookmarks pointer
                    if-let
                      bookmark $ get bookmarks pointer
                      tag-match bookmark
                          :bookmark ns definition
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
                        _ $ div ({})
                          <> $ str "|unknown bookmark data: " bookmark
                      div
                        {} $ :class-name css/expand
                        <> "|No bookmark selected"
                  comp-preview $ :preview store
                  when dev? $ comp-reel (>> states :reel) reel ({})
                  when dev? $ comp-inspect |Store store
                    {} $ :bottom 0
          :examples $ []
        |comp-enum $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-enum (expr) (comp-ir-kind expr :enum)
          :examples $ []
        |comp-file $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-file (ns file selected-def)
              div
                {} $ :class-name (str-spaced css/column)
                let
                    defs $ if (some? file)
                      keys $ get file :defs
                      #{}
                  list->
                    {} $ :class-name (str-spaced css/column)
                    -> defs (.to-list) (sort &compare)
                      map $ fn (name)
                        [] name $ div
                          {}
                            :class-name $ str-spaced css-pad8 css-hover-item css/font-code!
                            :style $ if (= name selected-def)
                              {} $ :background-color (hsl 0 0 95)
                              {}
                            :on-click $ fn (e d!)
                              d! $ :: :new-bookmark (:: :bookmark ns name)
                          <> name
          :examples $ []
        |comp-file-entry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-file-entry (states files)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} (:selected nil) (:query |)
                  selected $ :selected state
                  query $ or (:query state) |
                div
                  {}
                    :class-name $ str-spaced css/column
                    :style $ {} (:width 400) (:overflow :hidden)
                      :border-right $ str "|1px solid " (hsl 0 0 90)
                  div
                    {} $ :style
                      {} $ :padding 4
                    input $ {} (:value query) (:placeholder "|Search ns...") (:class-name css/input)
                      :style $ {} (:width |100%)
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :query (:value e)
                  div
                    {} (:class-name css/expand)
                      :style $ {} (:overflow-y :auto) (:max-height |40%)
                        :border-bottom $ str "|1px solid " (hsl 0 0 95)
                    let
                        ns-names $ if (some? files) (keys files) (#{})
                      list-> ({})
                        -> ns-names (.to-list) (sort &compare)
                          filter $ fn (name) (includes? name query)
                          map $ fn (name)
                            [] name $ div
                              {}
                                :on-click $ fn (e d!)
                                  d! cursor $ assoc state :selected name
                                :style $ if (= name selected)
                                  {} $ :background-color (hsl 0 0 94)
                                  {}
                                :class-name $ str-spaced css-pad8 css-hover-item css/font-code!
                              <> name
                  div
                    {} (:class-name css/expand)
                      :style $ {} (:overflow-y :auto) (:min-height 0)
                    if (some? selected)
                      comp-file selected
                        get-in files $ [] selected
                        , nil
                      div
                        {} $ :class-name (str-spaced css-pad8 css/font-fancy)
                        <> "|No NS selected"
                  div
                    {} $ :style
                      {} (:padding 16)
                        :border-top $ str "|1px solid " (hsl 0 0 90)
                    div
                      {} (:class-name css-file-button)
                        :on-click $ fn (e d!) (-> e :event .-currentTarget .-children .-0 .!click)
                      input $ {} (:type |file)
                        :style $ {} (:opacity 0.2) (:width 0) (:top 0) (:position :absolute) (:pointer-events :none)
                        :on-change $ fn (e d!)
                          let
                              file $ -> (:event e) .-target .-files (aget 0)
                              fr $ new js/FileReader
                            aset
                              .-target $ :event e
                              , |value nil
                            set! (.-onload fr)
                              fn (event)
                                d! :ir-data $ parse-cirru-edn (-> event .-target .-result)
                            .!readAsText fr file
                      div ({}) (<> "|Pick IR file")
          :examples $ []
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
          :examples $ []
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
          :examples $ []
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
                when
                  and
                    some? $ :info expr
                    some? $ get (:info expr) :kind
                  <>
                    str "|import " $ get (:info expr) :kind
                    , style-tiny-hint
                when
                  some? $ :type-hint expr
                  div
                    {} $ :class-name css/row-middle
                    <>
                      str |type: $ let
                          t $ :type-hint expr
                        format-type-display $ format-type-info t |
                      , style-tiny-hint
          :examples $ []
        |comp-ir-kind $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-ir-kind (expr kind)
              div
                {} (:class-name css/column)
                  :style $ {} (:display :inline-flex)
                  :on-click $ fn (e d!) (d! :preview expr)
                <> (str "|ir " kind) style-tiny-hint
                <> (to-lispy-string expr) css-code-default
          :examples $ []
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
                <>
                  str |type: $ let
                      t $ or (get expr :type-info) |unknown
                    format-type-display $ format-type-info t |
                  , style-tiny-hint
          :examples $ []
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
          :examples $ []
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
          :examples $ []
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
          :examples $ []
        |comp-proc $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-proc (expr)
              div
                {} (:class-name css/column)
                  :style $ {} (:display :inline-flex) (:line-height "\"1.2")
                <> (get expr :name) css-code-proc
                <> "\"proc" style-tiny-hint
                if
                  or
                    some? $ get expr :arg-types
                    some? $ get expr :return-type
                  <>
                    str
                      if
                        some? $ get expr :arg-types
                        format-type-display $ [] |args:
                          format-type-info (get expr :arg-types) |
                        , |
                      if
                        some? $ get expr :return-type
                        str
                          if
                            some? $ get expr :arg-types
                            , &newline |
                          format-type-display $ [] |return:
                            format-type-info (get expr :return-type) |
                        , |
                    , style-tiny-hint
                  <> |
          :examples $ []
        |comp-raw-code $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-raw-code (expr)
              div
                {} (:class-name css/column)
                  :style $ {} (:display :inline-flex) (:line-height 1.2)
                <> $ :code expr
                <> "\"js raw" style-tiny-hint
          :examples $ []
        |comp-record $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-record (expr) (comp-ir-kind expr :record)
          :examples $ []
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
          :examples $ []
        |comp-struct $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-struct (expr) (comp-ir-kind expr :struct)
          :examples $ []
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
          :examples $ []
        |comp-syntax $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-syntax (expr)
              div
                {} (:class-name css/column)
                  :style $ {} (:display :inline-flex) (:line-height "\"1.2")
                <> (get expr :name) css-code-syntax
                <> "\"syntax" style-tiny-hint
          :examples $ []
        |comp-tuple $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-tuple (expr) (comp-ir-kind expr :tuple)
          :examples $ []
        |css-code-default $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-default $ {}
              "\"$0" $ {}
                :color $ hsl 200 80 60
                :margin "\"0 4px"
                :white-space :pre
                :display :inline-block
          :examples $ []
        |css-code-expr $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-expr $ {}
              "\"$0" $ {} (:border-width "\"1px 0 0 1px") (:margin-left "\"14px") (:padding-left "\"2px") (:font-family ui/font-code) (:margin-bottom "\"2px") (:margin-top "\"4px") (:vertical-align :top) (:border-style :solid) (:border-radius "\"8px")
          :examples $ []
        |css-code-fn $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-fn $ {}
              "\"$0" $ {}
                :color $ hsl 0 80 50
                :margin "\"0 4px"
                :white-space :pre-line
                :display :inline-block
          :examples $ []
        |css-code-method $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-method $ {}
              "\"$0" $ {}
                :color $ hsl 300 90 40
                :margin "\"0 4px"
                :white-space :pre-line
                :display :inline-block
          :examples $ []
        |css-code-proc $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-proc $ {}
              "\"$0" $ {}
                :color $ hsl 0 80 50
                :margin "\"0 4px"
                :white-space :pre-line
                :display :inline-block
          :examples $ []
        |css-code-symbol $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-symbol $ {}
              "\"$0" $ {} (:display :inline-flex) (:margin "\"0px 4px") (:padding "\"0 4px") (:line-height "\"1.2")
          :examples $ []
        |css-code-symbol-ns $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-symbol-ns $ {}
              "\"$0" $ {} (:font-size 8)
                :color $ hsl 0 0 80
                :font-family ui/font-normal
          :examples $ []
        |css-code-symbol-resolved-ns $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-symbol-resolved-ns $ {}
              "\"$0" $ {} (:font-size "\"8px") (:white-space :nowrap) (:font-family ui/font-normal)
                :color $ hsl 0 80 70
          :examples $ []
        |css-code-syntax $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-syntax $ {}
              "\"$0" $ {}
                :color $ hsl 0 80 50
                :margin "\"0 4px"
                :white-space :pre-line
                :display :inline-block
          :examples $ []
        |css-code-tag $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-code-tag $ {}
              "\"$0" $ {}
                :color $ hsl 200 80 40
                :margin "\"0 4px"
                :white-space :pre-line
                :display :inline-block
          :examples $ []
        |css-expr-area $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-expr-area $ {}
              "\"&" $ {} (:border-color "\"hsl(0,0%,92%)")
              "\"&:hover" $ {} (:border-color "\"hsl(0,0%,70%)")
              (str "\"&:has(." css-code-expr "\":hover)")
                {} $ :border-color "\"hsl(0,0%,92%)"
          :examples $ []
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
          :examples $ []
        |css-hover-item $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-hover-item $ {}
              "\"&" $ {} (:font-size 12) (:cursor :pointer)
              "\"&:hover" $ {} (:background-color "\"hsl(350,0%,95%)")
          :examples $ []
        |css-pad8 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-pad8 $ {}
              "\"&" $ {} (:padding "\"0 8px")
          :examples $ []
        |css-preview-close $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-preview-close $ {}
              "\"$0" $ {} (:position :absolute) (:top 4) (:right 4)
                :color $ hsl 0 80 60
                :cursor :pointer
                :font-size 14
          :examples $ []
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
          :examples $ []
        |format-type-display $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn format-type-display (t)
              if (nil? t) |nil $ if (string? t) t (format-cirru-one-liner t)
          :examples $ []
        |format-type-info $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn format-type-info (t indent)
              if (map? t)
                if
                  = (get t :type) :fn
                  let
                      entries $ []
                        if
                          some? $ get t :args
                          [] |:args $ format-type-info (get t :args) indent
                        if
                          some? $ or (get t :return) (get t :return-type)
                          [] |:return $ format-type-info
                            or (get t :return) (get t :return-type)
                            , indent
                    -> entries
                      map $ fn (x)
                        if (nil? x) |nil x
                      prepend |fn
                  if
                    = (get t :type) :tuple
                    let
                        entries $ []
                          if
                            some? $ get t :tag
                            [] |:tag $ turn-string (get t :tag)
                          if
                            some? $ get t :payload
                            [] |:payload $ format-type-info (get t :payload) indent
                      -> entries
                        map $ fn (x)
                          if (nil? x) |nil x
                        prepend |tuple
                    if
                      = (get t :type) :record
                      let
                          entries $ []
                            if
                              some? $ get t :name
                              [] |:name $ turn-string (get t :name)
                            if
                              some? $ get t :fields
                              [] |:fields $ format-type-info (get t :fields) indent
                        -> entries
                          map $ fn (x)
                            if (nil? x) |nil x
                          prepend |record
                      if
                        = (get t :type) :optional
                        let
                            entries $ []
                              if
                                some? $ get t :inner
                                [] |:inner $ format-type-info (get t :inner) indent
                          -> entries
                            map $ fn (x)
                              if (nil? x) |nil x
                            prepend |optional
                        if
                          = (get t :type) :variadic
                          let
                              entries $ []
                                if
                                  some? $ get t :inner
                                  [] |:inner $ format-type-info (get t :inner) indent
                            -> entries
                              map $ fn (x)
                                if (nil? x) |nil x
                              prepend |variadic
                          -> (keys t) (.to-list) (sort &compare)
                            map $ fn (k)
                              [] (turn-string k)
                                format-type-info (get t k) indent
                            prepend |{}
                if (list? t)
                  -> t
                    map $ fn (item)
                      if (nil? item) |nil $ format-type-info item indent
                    prepend |[]
                  turn-string t
          :examples $ []
        |style-bookmark $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-bookmark $ {}
              "\"&" $ {} (:cursor :pointer) (:padding "\"0 8px") (:position :relative)
              "\"&:hover" $ {}
                :background-color $ hsl 0 0 98
              (str "\"&:hover ." style-close)
                {} $ :opacity 1
          :examples $ []
        |style-bookmark-selected $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-bookmark-selected $ {}
              "\"&" $ {}
                :background-color $ hsl 0 0 96
          :examples $ []
        |style-close $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-close $ {}
              "\"&" $ {} (:position :absolute) (:opacity 0) (:right 4) (:top 6) (:font-size 12) (:font-weight 100)
          :examples $ []
        |style-import-ns $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-import-ns $ {}
              "\"&" $ {} (:font-size 10)
                :color $ hsl 0 0 80
                :margin-left 4
          :examples $ []
        |style-tiny-hint $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-tiny-hint $ {}
              "\"&" $ {} (:font-size 10) (:margin-left 8) (:line-height "\"16px") (:white-space :pre-wrap)
                :color $ hsl 0 0 80
          :examples $ []
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
        :examples $ []
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
          :examples $ []
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:title "\"Calcit") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png") (:storage-key "\"calcit-ir-viewer")
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.config)
        :examples $ []
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= (nth op 0) :states
                println "\"Dispatch:" op
              reset! *reel $ reel-updater updater @*reel op
          :examples $ []
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
          :examples $ []
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! () $ js/localStorage.setItem (:storage-key config/site)
              js/JSON.stringify $ to-cirru-edn (:store @*reel)
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
          :examples $ []
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
        |repeat! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn repeat! (duration cb)
              js/setTimeout
                fn () (cb)
                  repeat! (* 1000 duration) cb
                * 1000 duration
          :examples $ []
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
        :examples $ []
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
              :pointer 0
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.schema)
        :examples $ []
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                  :states cursor s
                  update-states store cursor s
                (:ir-data data)
                  -> store (assoc :ir data)
                    assoc :bookmarks $ []
                    assoc :pointer 0
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
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            [] respo.cursor :refer $ [] update-states
        :examples $ []
