
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'calcit-fn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-fn? (x) (kind-tag? x :fn)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T
            :generics $ [] 'T
        'calcit-import? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-import? (x) (kind-tag? x :import)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T
            :generics $ [] 'T
        'calcit-literal? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-literal? (x)
            let
                ret $ or (number? x) (string? x) (bool? x) (kind-tag? x :symbol) (kind-tag? x :number) (calcit-tag? x) (kind-tag? x :proc) (kind-tag? x :syntax) (kind-tag? x :local) (kind-tag? x :registered)
              ; println |DETECTHING: x ret
              , ret
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T
            :generics $ [] 'T
        'calcit-local? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-local? (x) (kind-tag? x :local)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T
            :generics $ [] 'T
        'calcit-macro? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-macro? (x) (kind-tag? x :macro)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T
            :generics $ [] 'T
        'calcit-method? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-method? (x) (kind-tag? x :method)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T
            :generics $ [] 'T
        'calcit-proc? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-proc? (x) (kind-tag? x :proc)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T
            :generics $ [] 'T
        'calcit-raw-code? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-raw-code? (x) (kind-tag? x :raw-code)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T
            :generics $ [] 'T
        'calcit-registered? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-registered? (x) (kind-tag? x :registered)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T
            :generics $ [] 'T
        'calcit-symbol? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-symbol? (x) (kind-tag? x :symbol)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T
            :generics $ [] 'T
        'calcit-syntax? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-syntax? (x) (kind-tag? x :syntax)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T
            :generics $ [] 'T
        'calcit-tag? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-tag? (x) (kind-string? x |tag)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T
            :generics $ [] 'T
        'comp-bookmarks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-bookmarks (bookmarks pointer)
            list->
              {} (:class-name css/column)
                :style $ {} (:overflow-y :auto) (:width 300)
                  :border-right $ str "|1px solid " $ hsl 0 0 90
              -> bookmarks $ map-indexed $ fn (idx b)
                [] idx $ match b
                  (:bookmark ns definition)
                    div
                      {}
                        :on-click $ fn (e d!)
                          hint-fn $ {} (:return 'Unit)
                            :args $ [] 'Map $ :: 'Fn
                              {} (:return 'Unit)
                                :args $ [] 'Dynamic
                          d! $ :: :point-to idx
                        :class-name $ str-spaced style-bookmark $ if (= pointer idx) style-bookmark-selected
                      <> $ str ns |/ definition
                      comp-close $ %some $ %{} respo-ui.schema/ButtonOptions
                        :kind $ %none
                        :type $ %none
                        :disabled $ %none
                        :on-click $ %some $ fn (e d!)
                          hint-fn $ {} (:return 'Unit)
                            :args $ [] 'Map $ :: 'Fn
                              {} (:return 'Unit)
                                :args $ [] 'Dynamic
                          d! $ :: :remove-bookmark idx
                        :class-name $ %some style-close
                        :style $ %none
                  _ $ eprintln "|unknown bookmark" b
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'List 'app.types/Bookmark) 'Number
        'comp-cirru-quote $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-cirru-quote (expr) (comp-ir-kind expr :cirru-quote)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-code (expr last?)
            cond
                tag? expr
                <> (str expr) css-code-tag
              (calcit-tag? expr)
                <>
                  str |: $ option:unwrap-or (get expr :val) |
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
                        {}
                      if last?
                        {} $ :display :inline-block
                        {}
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
                <>
                  str $ option:unwrap-or (get expr :name) |
                  , css-code-fn
              (calcit-syntax? expr) (comp-syntax expr)
              (calcit-method? expr) (comp-method expr)
              (calcit-raw-code? expr) (comp-raw-code expr)
              (kind-tag? expr :cirru-quote) (comp-cirru-quote expr)
              (kind-tag? expr :tuple) (comp-tuple expr)
              (kind-tag? expr :struct) (comp-struct expr)
              (kind-tag? expr :enum) (comp-enum expr)
              (kind-tag? expr :record) (comp-record expr)
              true $ pre
                {} $ :class-name css-code-default
                <> $ to-lispy-string expr
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Bool
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                cursor $ option:unwrap-or (get states :cursor) ([])
                pointer $ :pointer store
                bookmarks $ :bookmarks store
                files $ assert-type
                  option:unwrap-or
                    get-in (:ir store) ([] :files)
                    {}
                  :: 'Map 'String 'Dynamic
              div
                {} $ :class-name $ str-spaced css/global css/fullscreen css/column
                div
                  {} $ :class-name $ str-spaced css/row css/expand
                  comp-file-entry (>> states :file-entry) files
                  comp-bookmarks bookmarks pointer
                  if-let
                    bookmark $ get bookmarks pointer
                    match bookmark
                      (:bookmark ns definition)
                        div
                          {} (:class-name css/expand)
                            :style $ {} $ :padding-bottom 120
                          let
                              declaration $ option:unwrap-or
                                get-in (:ir store) ([] :files ns :defs definition)
                                , nil
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
                when dev? $ comp-reel (>> states :reel) reel $ {}
                when dev? $ comp-inspect |Store store $ {} (:bottom 0)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'reel.typed/State 'app.types/Op 'app.types/StoreData
        'comp-enum $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-enum (expr) (comp-ir-kind expr :enum)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-file (ns file selected-def)
            div
              {} $ :class-name $ str-spaced css/column
              let
                  defs $ if (some? file)
                    keys $ assert-type
                      option:unwrap-or (get file :defs) ({})
                      :: 'Map 'String 'Dynamic
                    #{}
                list->
                  {} $ :class-name $ str-spaced css/column
                  -> defs &set:to-list (sort &compare)
                    map $ fn (name)
                      [] name $ div
                        {}
                          :class-name $ str-spaced css-pad8 css-hover-item css/font-code!
                          :style $ if (= name selected-def)
                            {} $ :background-color $ hsl 0 0 95
                            {}
                          :on-click $ fn (e d!)
                            d! $ :: :new-bookmark $ :: :bookmark ns name
                        <> name
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String (:: 'Map 'Tag 'Dynamic) 'String
        'comp-file-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-file-entry (states files)
            let
                cursor $ option:unwrap-or (get states :cursor) ([])
                state $ option:unwrap-or (get states :data)
                  {} (:selected nil) (:query |)
                selected $ assert-type
                  option:unwrap-or (get state :selected) |
                  , 'String
                query $ assert-type
                  option:unwrap-or (get state :query) |
                  , 'String
              div
                {}
                  :class-name $ str-spaced css/column
                  :style $ {} (:width 400) (:overflow :hidden)
                    :border-right $ str "|1px solid " $ hsl 0 0 90
                div
                  {} $ :style $ {} (:padding 4)
                  input $ {} (:value query) (:placeholder "|Search ns...") (:class-name css/input)
                    :style $ {} $ :width |100%
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :query $ option:unwrap (get e :value)
                div
                  {} (:class-name css/expand)
                    :style $ {} (:overflow-y :auto) (:max-height |40%)
                      :border-bottom $ str "|1px solid " $ hsl 0 0 95
                  let
                      ns-names $ if (some? files) (keys files) (#{})
                    list-> ({})
                      -> ns-names &set:to-list (sort &compare)
                        filter $ fn (name) (includes? name query)
                        map $ fn (name)
                          [] name $ div
                            {}
                              :on-click $ fn (e d!)
                                d! cursor $ assoc state :selected name
                              :style $ if (= name selected)
                                {} $ :background-color $ hsl 0 0 94
                                {}
                              :class-name $ str-spaced css-pad8 css-hover-item css/font-code!
                            <> name
                div
                  {} (:class-name css/expand)
                    :style $ {} (:overflow-y :auto) (:min-height 0)
                  if
                    not $ blank? selected
                    comp-file selected
                      option:unwrap-or (get files selected) ({})
                      , |
                    div
                      {} $ :class-name $ str-spaced css-pad8 css/font-fancy
                      <> "|No NS selected"
                div
                  {} $ :style $ {} (:padding 16)
                    :border-top $ str "|1px solid " $ hsl 0 0 90
                  respo.core/create-element :label
                    {} $ :class-name css-file-button
                    input $ {} (:type |file)
                      :style $ {} (:opacity 0.2) (:width 0) (:top 0) (:position :absolute) (:pointer-events :none)
                      :on-change $ fn (e d!)
                        hint-fn $ {} (:async true)
                          :features $ #{} :js-ffi
                        let
                            event-host $ unsafe-coerce
                              option:unwrap $ get e :event
                              , 'js-ffi.browser/EventHost
                            target $ unsafe-coerce
                              option:unwrap $ js-nullish->option $ event-host :target
                              , 'app.types/FileInputHost
                            files-host $ option:unwrap $ js-nullish->option (target :files)
                            file-host $ option:unwrap $ js-nullish->option (files-host .item 0)
                            text $ assert-type
                              js-await $ file-host .text
                              , 'String
                          js-set target :value |
                          d! :ir-data $ parse-cirru-edn text
                    div ({}) (<> "|Pick IR file")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'Dynamic $ :: 'Map 'String 'Dynamic
            :features $ #{} :js-ffi
        'comp-fn $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-fn (f)
            div
              {} $ :class-name css-pad8
              div ({})
                <> $ str "|Name: "
                  assert-type
                    option:unwrap-or (get f :ns) |
                    , 'String
                  , |/ $ assert-type
                    option:unwrap-or (get f :name) |
                    , 'String
              div ({})
                <> $ str |Args:
                comp-code
                  option:unwrap $ get f :args
                  , false
              div ({})
                <> $ str |Code:
                comp-code
                  option:unwrap $ get f :code
                  , false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-import $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-import (expr)
            div
              {}
                :class-name $ str-spaced css/column css-code-symbol
                :style $ merge $ {} (:display :inline-flex)
                :on-click $ fn (e d!) (d! :preview expr)
              <> $ str $ option:unwrap-or (get expr :def) |
              div
                {} $ :class-name css/row-middle
                <>
                  str $ option:unwrap-or (get expr :ns) nil
                  , style-import-ns
                a $ {} (:class-name css/link) (:inner-text |goto)
                  :style $ {} $ :font-size 10
                  :on-click $ fn (e d!)
                    d! $ :: :new-bookmark $ :: :bookmark
                      option:unwrap-or (get expr :ns) nil
                      option:unwrap-or (get expr :def) nil
              when
                and
                  option:some? $ get expr :info
                  option:some? $ get
                    option:unwrap-or (get expr :info) nil
                    , :kind
                <>
                  str "|import " $ option:unwrap-or
                    get
                      option:unwrap-or (get expr :info) nil
                      , :kind
                    , |
                  , style-tiny-hint
              when
                option:some? $ get expr :type-hint
                div
                  {} $ :class-name css/row-middle
                  <>
                    str |type: $ let
                        t $ option:unwrap $ get expr :type-hint
                      format-type-display $ format-type-info t |
                    , style-tiny-hint
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-ir-kind $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-ir-kind (expr kind)
            div
              {} (:class-name css/column)
                :style $ {} $ :display :inline-flex
                :on-click $ fn (e d!) (d! :preview expr)
              <> (str "|ir " kind) style-tiny-hint
              <> (to-lispy-string expr) css-code-default
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Tag
        'comp-local $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-local (expr)
            div
              {}
                :class-name $ str-spaced css/column css-code-symbol
                :style $ merge $ {} (:display :inline-flex)
                :on-click $ fn (e d!) (d! :preview expr)
              <> $ str $ option:unwrap-or (get expr :val) nil
              <> |local style-tiny-hint
              <>
                str |type: $ let
                    t $ option:unwrap-or (get expr :type-info) |unknown
                  format-type-display $ format-type-info t |
                , style-tiny-hint
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-macro $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-macro (f)
            div
              {} $ :class-name css-pad8
              div ({})
                <> $ str "|Macro name: "
                  assert-type
                    option:unwrap-or (get f :ns) |
                    , 'String
                  , |/ $ assert-type
                    option:unwrap-or (get f :name) |
                    , 'String
              div ({})
                <> $ str |Args:
                comp-code
                  option:unwrap $ get f :args
                  , false
              div ({})
                <> $ str |Code:
                comp-code
                  option:unwrap $ get f :code
                  , false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-method $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-method (expr)
            div
              {} (:class-name css/column)
                :style $ {} (:display :inline-flex) (:line-height |1.2)
                :on-click $ fn (e d!) (d! :preview expr)
              <>
                str |. $ option:unwrap-or (get expr :method) nil
                , css-code-method
              <>
                str "|method " $ option:unwrap-or (get expr :behavior) nil
                , style-tiny-hint
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-preview $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-preview (data)
            if (some? data)
              div
                {} $ :class-name css-preview-tip
                div $ {} $ :inner-text
                  trim $ format-cirru-edn data
                div $ {} (:inner-text "|×") (:class-name css-preview-close)
                  :on-click $ fn (e d!) (d! :preview nil)
              div $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-proc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-proc (expr)
            div
              {} (:class-name css/column)
                :style $ {} (:display :inline-flex) (:line-height |1.2)
              <>
                str $ option:unwrap-or (get expr :name) |
                , css-code-proc
              <> |proc style-tiny-hint
              if
                or
                  option:some? $ get expr :arg-types
                  option:some? $ get expr :return-type
                <>
                  str
                    if
                      option:some? $ get expr :arg-types
                      format-type-display $ [] |args: $ format-type-info
                        option:unwrap $ get expr :arg-types
                        , |
                      , |
                    if
                      option:some? $ get expr :return-type
                      str
                        if
                          option:some? $ get expr :arg-types
                          , &newline |
                        format-type-display $ [] |return: $ format-type-info
                          option:unwrap $ get expr :return-type
                          , |
                      , |
                  , style-tiny-hint
                <> |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-raw-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-raw-code (expr)
            div
              {} (:class-name css/column)
                :style $ {} (:display :inline-flex) (:line-height |1.2)
              <> $ str $ option:unwrap-or (get expr :code) |
              <> "|js raw" style-tiny-hint
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-record $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-record (expr) (comp-ir-kind expr :record)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-registered $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-registered (expr)
            div
              {} $ :class-name $ str-spaced css/column css-code-symbol
              div
                {}
                  :style $ merge $ {} (:display :inline-block)
                  :on-click $ fn (e d!) (d! :preview expr)
                <> $ str $ option:unwrap-or (get expr :alias) |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-struct $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-struct (expr) (comp-ir-kind expr :struct)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-symbol $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-symbol (expr)
            div
              {}
                :class-name $ str-spaced css/column css-code-symbol
                :style $ merge $ {} (:display :inline-flex)
                :on-click $ fn (e d!) (d! :preview expr)
              <> $ str $ option:unwrap-or (get expr :val) nil
              div ({})
                <>
                  str $ option:unwrap-or (get expr :ns) |
                  , css-code-symbol-ns
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-syntax $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-syntax (expr)
            div
              {} (:class-name css/column)
                :style $ {} (:display :inline-flex) (:line-height |1.2)
              <>
                str $ option:unwrap-or (get expr :name) |
                , css-code-syntax
              <> |syntax style-tiny-hint
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-tuple $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-tuple (expr) (comp-ir-kind expr :tuple)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'css-code-default $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-default
            {} $ |$0 $ {}
              :color $ hsl 200 80 60
              :margin "|0 4px"
              :white-space :pre
              :display :inline-block
          :examples $ []
          :schema $ :: 'String
        'css-code-expr $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-expr
            {} $ |$0 $ {} (:border-width "|1px 0 0 1px") (:margin-left |14px) (:padding-left |2px) (:font-family ui/font-code) (:margin-bottom |2px) (:margin-top |4px) (:vertical-align :top) (:border-style :solid) (:border-radius |8px)
          :examples $ []
          :schema $ :: 'String
        'css-code-fn $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-fn
            {} $ |$0 $ {}
              :color $ hsl 0 80 50
              :margin "|0 4px"
              :white-space :pre-line
              :display :inline-block
          :examples $ []
          :schema $ :: 'String
        'css-code-method $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-method
            {} $ |$0 $ {}
              :color $ hsl 300 90 40
              :margin "|0 4px"
              :white-space :pre-line
              :display :inline-block
          :examples $ []
          :schema $ :: 'String
        'css-code-proc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-proc
            {} $ |$0 $ {}
              :color $ hsl 0 80 50
              :margin "|0 4px"
              :white-space :pre-line
              :display :inline-block
          :examples $ []
          :schema $ :: 'String
        'css-code-symbol $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-symbol
            {} $ |$0 $ {} (:display :inline-flex) (:margin "|0px 4px") (:padding "|0 4px") (:line-height |1.2)
          :examples $ []
          :schema $ :: 'String
        'css-code-symbol-ns $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-symbol-ns
            {} $ |$0 $ {} (:font-size 8)
              :color $ hsl 0 0 80
              :font-family ui/font-normal
          :examples $ []
          :schema $ :: 'String
        'css-code-symbol-resolved-ns $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-symbol-resolved-ns
            {} $ |$0 $ {} (:font-size |8px) (:white-space :nowrap) (:font-family ui/font-normal)
              :color $ hsl 0 80 70
          :examples $ []
          :schema $ :: 'String
        'css-code-syntax $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-syntax
            {} $ |$0 $ {}
              :color $ hsl 0 80 50
              :margin "|0 4px"
              :white-space :pre-line
              :display :inline-block
          :examples $ []
          :schema $ :: 'String
        'css-code-tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-tag
            {} $ |$0 $ {}
              :color $ hsl 200 80 40
              :margin "|0 4px"
              :white-space :pre-line
              :display :inline-block
          :examples $ []
          :schema $ :: 'String
        'css-expr-area $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-expr-area
            {}
              |& $ {} $ :border-color "|hsl(0,0%,92%)"
              |&:hover $ {} $ :border-color "|hsl(0,0%,70%)"
              (str "|&:has(." css-code-expr "|:hover)")
                {} $ :border-color "|hsl(0,0%,92%)"
          :examples $ []
          :schema $ :: 'String
        'css-file-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-file-button
            {}
              |$0 $ {} (:width 120) (:position :relative) (:border-radius 8)
                :background-color $ hsl 200 90 72
                :text-align :center
                :color :white
                :font-family ui/font-fancy
                :font-size 18
                :line-height |32px
                :cursor :pointer
                :transition-duration |300ms
              |$0:hover $ {}
                :box-shadow $ str "|1px 1px 4px " $ hsl 0 0 0 0.2
                :background-color $ hsl 200 90 76
              |$0:active $ {} (:transition-duration |0ms) (:transform "|scale(1.02)")
          :examples $ []
          :schema $ :: 'String
        'css-hover-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-hover-item
            {}
              |& $ {} (:font-size 12) (:cursor :pointer)
              |&:hover $ {} $ :background-color "|hsl(350,0%,95%)"
          :examples $ []
          :schema $ :: 'String
        'css-pad8 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-pad8
            {} $ |& $ {} (:padding "|0 8px")
          :examples $ []
          :schema $ :: 'String
        'css-preview-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-preview-close
            {} $ |$0 $ {} (:position :absolute) (:top 4) (:right 4)
              :color $ hsl 0 80 60
              :cursor :pointer
              :font-size 14
          :examples $ []
          :schema $ :: 'String
        'css-preview-tip $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-preview-tip
            {} $ |$0 $ {} (:position :absolute) (:bottom 0) (:right 0)
              :background-color $ hsl 0 0 100 0.6
              :font-family ui/font-code
              :white-space :pre
              :border $ str "|1px solid " $ hsl 0 0 90
              :font-size 12
              :line-height |20px
              :padding 8
          :examples $ []
          :schema $ :: 'String
        'format-type-display $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-type-display (t)
            if (nil? t) |nil $ if (string? t) t $ trim (format-cirru-edn t)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'T
            :generics $ [] 'T
        'format-type-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-type-info (t indent)
            if (nil? t) |nil $ if
              or (tag? t) (symbol? t) (enum? t)
              , t $ if (map? t)
                if (kind-tag? t :fn)
                  let
                      entries $ []
                        if
                          option:some? $ get t :args
                          [] |:args $ format-type-info
                            option:unwrap $ get t :args
                            , indent
                        if
                          some? $ option:unwrap-or (get t :return)
                            option:unwrap-or (get t :return-type) nil
                          [] |:return $ format-type-info
                            option:unwrap-or (get t :return)
                              option:unwrap-or (get t :return-type) nil
                            , indent
                    -> entries
                      map $ fn (x)
                        if (nil? x) |nil x
                      prepend |fn
                  if (kind-tag? t :tuple)
                    let
                        entries $ []
                          if
                            option:some? $ get t :tag
                            [] |:tag $ turn-string $ option:unwrap (get t :tag)
                          if
                            option:some? $ get t :payload
                            [] |:payload $ format-type-info
                              option:unwrap $ get t :payload
                              , indent
                      -> entries
                        map $ fn (x)
                          if (nil? x) |nil x
                        prepend |tuple
                    if (kind-tag? t :record)
                      let
                          entries $ []
                            if
                              option:some? $ get t :name
                              [] |:name $ turn-string $ option:unwrap (get t :name)
                            if
                              option:some? $ get t :fields
                              [] |:fields $ format-type-info
                                option:unwrap $ get t :fields
                                , indent
                        -> entries
                          map $ fn (x)
                            if (nil? x) |nil x
                          prepend |record
                      if (kind-tag? t :optional)
                        let
                            entries $ [] $ if
                              option:some? $ get t :inner
                              [] |:inner $ format-type-info
                                option:unwrap $ get t :inner
                                , indent
                          -> entries
                            map $ fn (x)
                              if (nil? x) |nil x
                            prepend |optional
                        if (kind-tag? t :variadic)
                          let
                              entries $ [] $ if
                                option:some? $ get t :inner
                                [] |:inner $ format-type-info
                                  option:unwrap $ get t :inner
                                  , indent
                            -> entries
                              map $ fn (x)
                                if (nil? x) |nil x
                              prepend |variadic
                          trim $ format-cirru-edn t
                if (list? t) t $ trim $ format-cirru-edn t
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'String
        'kind-string? $ %{} 'CodeEntry
          :doc "|Validate a string discriminator read from an open Calcit IR map."
          :code $ quote $ defn kind-string? (x expected)
            if (map? x)
              match (get x :kind)
                (:some value)
                  and (string? value)
                    = (assert-type value 'String) expected
                (:none) false
              , false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T 'String
            :generics $ [] 'T
        'kind-tag? $ %{} 'CodeEntry
          :doc "|Validate a tag discriminator read from an open Calcit IR map."
          :code $ quote $ defn kind-tag? (x expected)
            if (map? x)
              match (get x :kind)
                (:some value)
                  and (tag? value)
                    = (assert-type value 'Tag) expected
                (:none) false
              , false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'T 'Tag
            :generics $ [] 'T
        'style-bookmark $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-bookmark
            {}
              |& $ {} (:cursor :pointer) (:padding "|0 8px") (:position :relative)
              |&:hover $ {} $ :background-color (hsl 0 0 98)
              (str "|&:hover ." style-close)
                {} $ :opacity 1
          :examples $ []
          :schema $ :: 'String
        'style-bookmark-selected $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-bookmark-selected
            {} $ |& $ {}
              :background-color $ hsl 0 0 96
          :examples $ []
          :schema $ :: 'String
        'style-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-close
            {} $ |& $ {} (:position :absolute) (:opacity 0) (:right 4) (:top 6) (:font-size 12) (:font-weight |100)
          :examples $ []
          :schema $ :: 'String
        'style-import-ns $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-import-ns
            {} $ |& $ {} (:font-size 10)
              :color $ hsl 0 0 80
              :margin-left 4
          :examples $ []
          :schema $ :: 'String
        'style-tiny-hint $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tiny-hint
            {} $ |& $ {} (:font-size 10) (:margin-left 8) (:line-height |16px) (:white-space :pre-wrap)
              :color $ hsl 0 0 80
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.core :as ui)
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
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:title |Calcit) (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:storage-key |calcit-ir-viewer)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'app.types/Op 'app.types/StoreData
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            let
                typed-op $ assert-type op 'Enum
                control $ typed/decode-control typed-op
              reset! *reel $ assert-type
                match control
                  (:some action) (typed/apply-control updater @*reel action)
                  (:none)
                    typed/record-op updater @*reel (assert-type typed-op 'app.types/Op) (generate-id!)
                      :timestamp $ shared/date-now-snapshot
                :: 'reel.typed/State 'app.types/Op 'app.types/StoreData
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (load-console-formatter!)
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |a dispatch!
            browser/set-before-unload! $ fn (event) (persist-storage!)
            browser/set-interval! persist-storage! 60000
            match
              browser/storage-get $ option:unwrap-or (get config/site :storage-key) |
              (:some raw)
                match
                  types/decode-store $ parse-cirru-edn raw
                  (:some stored)
                    dispatch! $ types/Op :hydrate-storage stored
                  (:none) (hud! |error "|Ignored invalid saved state")
              (:none) &unit
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            option:unwrap $ browser/query-selector |.app
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            browser/storage-set!
              option:unwrap-or (get config/site :storage-key) |
              format-cirru-edn $ :store @*reel
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration cb)
            browser/set-interval! cb $ * 1000 duration
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            app.types :as types
            reel.util :refer $ listen-devtools! generate-id!
            reel.typed :as typed
            app.config :as config
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    'app.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            app.types/StoreData :states
              {} $ :cursor $ []
              , :ir nil :preview nil :bookmarks ([]) :pointer 0
          :examples $ []
          :schema $ :: 'app.types/StoreData
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.types $ %{} 'FileEntry
      :defs $ {}
        'Bookmark $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Bookmark (:bookmark 'String 'String)
          :examples $ []
          :schema $ :: 'EnumDef
        'FileHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileHost (:name 'String) (:size 'Number) (:mime-type 'String) (:last-modified 'Number)
            .text $ :: 'Fn $ {}
              :args $ [] 'app.types/FileHost
              :return 'JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:last-modified |lastModified) (:mime-type |type)
          :schema $ :: 'Trait
          :tags $ #{} :ffi :js-host
        'FileInputHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileInputHost (:value 'String)
            :files $ :: 'JsNullish 'app.types/FileListHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {}
            :writable $ #{} :value
          :schema $ :: 'Trait
          :tags $ #{} :ffi :js-host
        'FileListHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileListHost (:length 'Number)
            .item $ :: 'Fn $ {}
              :args $ [] 'app.types/FileListHost 'Number
              :return $ :: 'JsNullish 'app.types/FileHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {}
          :schema $ :: 'Trait
          :tags $ #{} :ffi :js-host
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:states 'List 'Dynamic) (:ir-data 'Dynamic) (:preview 'Dynamic) (:hydrate-storage 'app.types/StoreData) (:new-bookmark 'app.types/Bookmark) (:point-to 'Number) (:remove-bookmark 'Number) (:reel/toggle) (:reel/recall 'Number) (:reel/merge) (:reel/reset) (:reel/step) (:reel/run) (:reel/remove 'Number)
          :examples $ []
          :schema $ :: 'EnumDef
        'StoreData $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StoreData (:states 'Map) (:ir 'Dynamic) (:preview 'Dynamic)
            :bookmarks $ :: 'List 'app.types/Bookmark
            :pointer 'Number
          :examples $ []
          :schema $ :: 'Enum
        'decode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-store (data)
            match (try-decode-map-as data app.types/StoreData)
              (:ok store) (%some store)
              (:err message) (%none)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'calcit.core/Option 'app.types/StoreData
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.types
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor data)
                assoc store :states $ assert-type
                  update-states (:states store) cursor data
                  , 'Map
              (:ir-data data)
                -> store (assoc :ir data)
                  assoc :bookmarks $ []
                  assoc :pointer 0
              (:preview data) (assoc store :preview data)
              (:hydrate-storage data) data
              (:new-bookmark bookmark)
                -> store
                  assoc :bookmarks $ prepend (:bookmarks store) bookmark
                  assoc :pointer 0
              (:point-to index) (assoc store :pointer index)
              (:remove-bookmark index)
                assoc store :bookmarks $ dissoc (:bookmarks store) index
              _ store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.types/StoreData)
            :args $ [] 'app.types/StoreData 'app.types/Op 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ [] respo.cursor :refer $ [] update-states
