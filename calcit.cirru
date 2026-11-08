
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/
      :type-slots $ {} $ :dispatch-op 'app.types/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'calcit-fn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-fn? (x) (kind-tag? x :fn)
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T)
        'calcit-import? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-import? (x) (kind-tag? x :import)
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T)
        'calcit-literal? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-literal? (x)
            let
                ret $ or (number? x) (string? x) (bool? x) (kind-tag? x :symbol) (kind-tag? x :number) (calcit-tag? x) (kind-tag? x :proc) (kind-tag? x :syntax) (kind-tag? x :local) (kind-tag? x :registered)
              ; println |DETECTHING: x ret
              , ret
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T)
        'calcit-local? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-local? (x) (kind-tag? x :local)
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T)
        'calcit-macro? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-macro? (x) (kind-tag? x :macro)
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T)
        'calcit-method? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-method? (x) (kind-tag? x :method)
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T)
        'calcit-proc? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-proc? (x) (kind-tag? x :proc)
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T)
        'calcit-raw-code? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-raw-code? (x) (kind-tag? x :raw-code)
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T)
        'calcit-registered? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-registered? (x) (kind-tag? x :registered)
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T)
        'calcit-symbol? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-symbol? (x) (kind-tag? x :symbol)
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T)
        'calcit-syntax? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-syntax? (x) (kind-tag? x :syntax)
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T)
        'calcit-tag? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calcit-tag? (x) (kind-string? x |tag)
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T)
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
                          hint-fn $ Fn respo.schema/RespoEvent
                            Fn app.types/Op $ -> Unit
                            -> Unit
                          d! $ app.types/Op :point-to idx
                        :class-name $ str-spaced style-bookmark $ if (= pointer idx) style-bookmark-selected |
                      <> $ str ns |/ definition
                      comp-close $ Option :some $ %{} respo-ui.schema/ButtonOptions
                        :kind $ Option :none
                        :type $ Option :none
                        :disabled $ Option :none
                        :on-click $ Option :some $ fn (e d!)
                          hint-fn $ Fn respo.schema/RespoEvent
                            Fn app.types/Op $ -> Unit
                            -> Unit
                          d! $ app.types/Op :remove-bookmark idx
                        :class-name $ Option :some style-close
                        :style $ Option :none
                  _ $ eprintln "|unknown bookmark" b
          :examples $ []
          :schema $ quote $ Fn (List app.types/Bookmark) Number (-> respo.schema/Component)
        'comp-cirru-quote $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-cirru-quote (expr) (comp-ir-kind expr :cirru-quote)
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-code (expr last?)
            cond
                tag? expr
                <> (str expr) css-code-tag
              (calcit-tag? expr)
                <>
                  str |: $ .unwrap-or (get expr :val) |
                  , css-code-tag
              (list? expr)
                div
                  {}
                    :class-name $ str-spaced css-expr-area css-code-expr
                    :style $ merge
                      if
                        and
                          <= (.len expr) 3
                          every? expr calcit-literal?
                        {} $ :display :inline-flex
                        {}
                      if last?
                        {} $ :display :inline-block
                        {}
                  , & $ let
                      size $ .len expr
                    map-indexed expr $ fn (idx x)
                      comp-code x $ = (inc idx) size
              (calcit-import? expr) (comp-import expr)
              (calcit-local? expr) (comp-local expr)
              (calcit-registered? expr) (comp-registered expr)
              (calcit-symbol? expr) (comp-symbol expr)
              (calcit-proc? expr) (comp-proc expr)
              (calcit-fn? expr)
                <>
                  str $ .unwrap-or (get expr :name) |
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
          :schema $ quote $ Fn Dynamic Bool (-> respo.schema/Component)
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                cursor $ .unwrap-or (get states :cursor) ([])
                pointer $ :pointer store
                bookmarks $ :bookmarks store
                files $ decode-map-as
                  .unwrap-or
                    get-in (:ir store) ([] :files)
                    {}
                  Map String $ Map Tag Dynamic
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
                          match
                            get-in (:ir store) ([] :files ns :defs definition)
                            (:ok declaration)
                              if (calcit-fn? declaration) (comp-fn declaration)
                                if (calcit-macro? declaration) (comp-macro declaration)
                                  div
                                    {} $ :class-name css-pad8
                                    comp-code declaration false
                            (:err _) (<> "|Bookmarked definition is no longer available" css-pad8)
                      _ $ div ({})
                        <> $ str "|unknown bookmark data: " bookmark
                    div
                      {} $ :class-name css/expand
                      <> "|No bookmark selected"
                comp-preview $ :preview store
                if dev?
                  Option :some $ comp-typed-reel (>> states :reel) reel $ {}
                  Option :none
                if dev?
                  Option :some $ comp-inspect |Store store $ {} (:bottom 0)
                  Option :none
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State app.types/Op app.types/StoreData) (-> respo.schema/Component)
        'comp-enum $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-enum (expr) (comp-ir-kind expr :enum)
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-file (ns file selected-def)
            div
              {} $ :class-name $ str-spaced css/column
              let
                  defs $ keys $ decode-map-as
                    .unwrap-or (get file :defs) ({})
                    Map String Dynamic
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
                            d! $ app.types/Op :new-bookmark $ app.types/Bookmark :bookmark ns name
                        <> name
          :examples $ []
          :schema $ quote $ Fn String (Map Tag Dynamic) String (-> respo.schema/Component)
        'comp-file-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-file-entry (states files)
            let
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  List app.types/CursorKey
                state $ decode-map-as
                  .unwrap-or (get states :data)
                    {} (:selected |) (:query |)
                  Map Tag String
                selected $ assert-type
                  .unwrap-or (get state :selected) |
                  , 'String
                query $ assert-type
                  .unwrap-or (get state :query) |
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
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn app.types/Op $ -> Unit
                        -> Unit
                      d! $ app.types/Op :states cursor $ assoc state :query
                        decode-map-as (:value e) String
                div
                  {} (:class-name css/expand)
                    :style $ {} (:overflow-y :auto) (:max-height |40%)
                      :border-bottom $ str "|1px solid " $ hsl 0 0 95
                  let
                      ns-names $ keys files
                    list-> ({})
                      -> ns-names &set:to-list (sort &compare)
                        filter $ fn (name) (includes? name query)
                        map $ fn (name)
                          [] name $ div
                            {}
                              :on-click $ fn (e d!)
                                d! $ app.types/Op :states cursor $ assoc state :selected name
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
                      .unwrap-or (get files selected) ({})
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
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn app.types/Op $ -> Unit
                          -> Unit
                          :async
                          :features :js-ffi
                        try
                          let
                              event-host $ js-cast (:event e) 'js-ffi.browser/EventHost
                              target $ js-cast
                                .unwrap $ js-nullish->option $ event-host :target
                                , 'app.types/FileInputHost
                              files-host $ .unwrap $ js-nullish->option (target :files)
                              file-host $ .unwrap $ js-nullish->option (files-host .item 0)
                            js-set target :value |
                            let
                                text $ decode-map-as
                                  js-await $ file-host .text
                                  , 'String
                              d! $ app.types/Op :ir-data $ decode-map-as (parse-cirru-edn text) (Map Tag Dynamic)
                          fn (message)
                            d! $ app.types/Op :import-failed message
                    div ({}) (<> "|Pick IR file")
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic Dynamic)
            Map String $ Map Tag Dynamic
            -> respo.schema/Element
            :features :js-ffi
        'comp-fn $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-fn (f)
            div
              {} $ :class-name css-pad8
              div ({})
                <> $ str "|Name: "
                  decode-map-as
                    .unwrap-or (get f :ns) |
                    , 'String
                  , |/ $ decode-map-as
                    .unwrap-or (get f :name) |
                    , 'String
              div ({})
                <> $ str |Args:
                comp-code
                  .unwrap $ get f :args
                  , false
              div ({})
                <> $ str |Code:
                comp-code
                  .unwrap $ get f :code
                  , false
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-import $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-import (expr)
            div
              {}
                :class-name $ str-spaced css/column css-code-symbol
                :style $ merge $ {} (:display :inline-flex)
                :on-click $ fn (e d!)
                  d! $ app.types/Op :preview $ decode-map-as expr (Map Tag Dynamic)
              <> $ str $ .unwrap-or (get expr :def) |
              div
                {} $ :class-name css/row-middle
                <>
                  str $ .unwrap-or (get expr :ns) |
                  , style-import-ns
                match (get expr :ns)
                  (:some ns)
                    match (get expr :def)
                      (:some definition)
                        if
                          and (string? ns) (string? definition)
                          Option :some $ a $ {} (:class-name css/link) (:inner-text |goto)
                            :style $ {} $ :font-size 10
                            :on-click $ fn (e d!)
                              d! $ app.types/Op :new-bookmark $ app.types/Bookmark :bookmark ns definition
                          Option :none
                      (:none) (Option :none)
                  (:none) (Option :none)
              if
                and
                  .some? $ get expr :info
                  .some? $ get
                    .unwrap $ get expr :info
                    , :kind
                Option :some $ <>
                  str "|import " $ .unwrap-or
                    get
                      .unwrap $ get expr :info
                      , :kind
                    , |
                  , style-tiny-hint
                Option :none
              if
                .some? $ get expr :type-hint
                Option :some $ div
                  {} $ :class-name css/row-middle
                  <>
                    str |type: $ let
                        t $ .unwrap $ get expr :type-hint
                      format-type-display $ format-type-info t |
                    , style-tiny-hint
                Option :none
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-ir-kind $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-ir-kind (expr kind)
            div
              {} (:class-name css/column)
                :style $ {} $ :display :inline-flex
                :on-click $ fn (e d!)
                  d! $ app.types/Op :preview $ decode-map-as expr (Map Tag Dynamic)
              <> (str "|ir " kind) style-tiny-hint
              <> (to-lispy-string expr) css-code-default
          :examples $ []
          :schema $ quote $ Fn Dynamic Tag (-> respo.schema/Component)
        'comp-local $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-local (expr)
            div
              {}
                :class-name $ str-spaced css/column css-code-symbol
                :style $ merge $ {} (:display :inline-flex)
                :on-click $ fn (e d!)
                  d! $ app.types/Op :preview $ decode-map-as expr (Map Tag Dynamic)
              <> $ str $ .unwrap-or (get expr :val) |
              <> |local style-tiny-hint
              <>
                str |type: $ let
                    t $ .unwrap-or (get expr :type-info) |unknown
                  format-type-display $ format-type-info t |
                , style-tiny-hint
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-macro $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-macro (f)
            div
              {} $ :class-name css-pad8
              div ({})
                <> $ str "|Macro name: "
                  decode-map-as
                    .unwrap-or (get f :ns) |
                    , 'String
                  , |/ $ decode-map-as
                    .unwrap-or (get f :name) |
                    , 'String
              div ({})
                <> $ str |Args:
                comp-code
                  .unwrap $ get f :args
                  , false
              div ({})
                <> $ str |Code:
                comp-code
                  .unwrap $ get f :code
                  , false
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-method $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-method (expr)
            div
              {} (:class-name css/column)
                :style $ {} (:display :inline-flex) (:line-height |1.2)
                :on-click $ fn (e d!)
                  d! $ app.types/Op :preview $ decode-map-as expr (Map Tag Dynamic)
              <>
                str |. $ .unwrap-or (get expr :method) |
                , css-code-method
              <>
                str "|method " $ .unwrap-or (get expr :behavior) |
                , style-tiny-hint
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-preview $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-preview (data)
            if (non-nil? data)
              div
                {} $ :class-name css-preview-tip
                div $ {} $ :inner-text
                  trim $ format-cirru-edn data
                div $ {} (:inner-text "|×") (:class-name css-preview-close)
                  :on-click $ fn (e d!)
                    d! $ app.types/Op :close-preview
              div $ {}
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-proc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-proc (expr)
            div
              {} (:class-name css/column)
                :style $ {} (:display :inline-flex) (:line-height |1.2)
              <>
                str $ .unwrap-or (get expr :name) |
                , css-code-proc
              <> |proc style-tiny-hint
              if
                or
                  .some? $ get expr :arg-types
                  .some? $ get expr :return-type
                <>
                  str
                    if
                      .some? $ get expr :arg-types
                      format-type-display $ [] |args: $ format-type-info
                        .unwrap $ get expr :arg-types
                        , |
                      , |
                    if
                      .some? $ get expr :return-type
                      str
                        if
                          .some? $ get expr :arg-types
                          , &newline |
                        format-type-display $ [] |return: $ format-type-info
                          .unwrap $ get expr :return-type
                          , |
                      , |
                  , style-tiny-hint
                <> |
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-raw-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-raw-code (expr)
            div
              {} (:class-name css/column)
                :style $ {} (:display :inline-flex) (:line-height |1.2)
              <> $ str $ .unwrap-or (get expr :code) |
              <> "|js raw" style-tiny-hint
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-record $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-record (expr) (comp-ir-kind expr :record)
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-registered $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-registered (expr)
            div
              {} $ :class-name $ str-spaced css/column css-code-symbol
              div
                {}
                  :style $ merge $ {} (:display :inline-block)
                  :on-click $ fn (e d!)
                    d! $ app.types/Op :preview $ decode-map-as expr (Map Tag Dynamic)
                <> $ str $ .unwrap-or (get expr :alias) |
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-struct $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-struct (expr) (comp-ir-kind expr :struct)
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-symbol $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-symbol (expr)
            div
              {}
                :class-name $ str-spaced css/column css-code-symbol
                :style $ merge $ {} (:display :inline-flex)
                :on-click $ fn (e d!)
                  d! $ app.types/Op :preview $ decode-map-as expr (Map Tag Dynamic)
              <> $ str $ .unwrap-or (get expr :val) |
              div ({})
                <>
                  str $ .unwrap-or (get expr :ns) |
                  , css-code-symbol-ns
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-syntax $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-syntax (expr)
            div
              {} (:class-name css/column)
                :style $ {} (:display :inline-flex) (:line-height |1.2)
              <>
                str $ .unwrap-or (get expr :name) |
                , css-code-syntax
              <> |syntax style-tiny-hint
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'comp-tuple $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-tuple (expr) (comp-ir-kind expr :tuple)
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
        'css-code-default $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-default
            {} $ |$0 $ {}
              :color $ hsl 200 80 60
              :margin "|0 4px"
              :white-space :pre
              :display :inline-block
          :examples $ []
          :schema $ quote String
        'css-code-expr $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-expr
            {} $ |$0 $ {} (:border-width "|1px 0 0 1px") (:margin-left |14px) (:padding-left |2px) (:font-family ui/font-code) (:margin-bottom |2px) (:margin-top |4px) (:vertical-align :top) (:border-style :solid) (:border-radius |8px)
          :examples $ []
          :schema $ quote String
        'css-code-fn $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-fn
            {} $ |$0 $ {}
              :color $ hsl 0 80 50
              :margin "|0 4px"
              :white-space :pre-line
              :display :inline-block
          :examples $ []
          :schema $ quote String
        'css-code-method $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-method
            {} $ |$0 $ {}
              :color $ hsl 300 90 40
              :margin "|0 4px"
              :white-space :pre-line
              :display :inline-block
          :examples $ []
          :schema $ quote String
        'css-code-proc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-proc
            {} $ |$0 $ {}
              :color $ hsl 0 80 50
              :margin "|0 4px"
              :white-space :pre-line
              :display :inline-block
          :examples $ []
          :schema $ quote String
        'css-code-symbol $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-symbol
            {} $ |$0 $ {} (:display :inline-flex) (:margin "|0px 4px") (:padding "|0 4px") (:line-height |1.2)
          :examples $ []
          :schema $ quote String
        'css-code-symbol-ns $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-symbol-ns
            {} $ |$0 $ {} (:font-size 8)
              :color $ hsl 0 0 80
              :font-family ui/font-normal
          :examples $ []
          :schema $ quote String
        'css-code-symbol-resolved-ns $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-symbol-resolved-ns
            {} $ |$0 $ {} (:font-size |8px) (:white-space :nowrap) (:font-family ui/font-normal)
              :color $ hsl 0 80 70
          :examples $ []
          :schema $ quote String
        'css-code-syntax $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-syntax
            {} $ |$0 $ {}
              :color $ hsl 0 80 50
              :margin "|0 4px"
              :white-space :pre-line
              :display :inline-block
          :examples $ []
          :schema $ quote String
        'css-code-tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-code-tag
            {} $ |$0 $ {}
              :color $ hsl 200 80 40
              :margin "|0 4px"
              :white-space :pre-line
              :display :inline-block
          :examples $ []
          :schema $ quote String
        'css-expr-area $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-expr-area
            {}
              |& $ {} $ :border-color "|hsl(0,0%,92%)"
              |&:hover $ {} $ :border-color "|hsl(0,0%,70%)"
              (str "|&:has(." css-code-expr "|:hover)")
                {} $ :border-color "|hsl(0,0%,92%)"
          :examples $ []
          :schema $ quote String
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
          :schema $ quote String
        'css-hover-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-hover-item
            {}
              |& $ {} (:font-size 12) (:cursor :pointer)
              |&:hover $ {} $ :background-color "|hsl(350,0%,95%)"
          :examples $ []
          :schema $ quote String
        'css-pad8 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-pad8
            {} $ |& $ {} (:padding "|0 8px")
          :examples $ []
          :schema $ quote String
        'css-preview-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-preview-close
            {} $ |$0 $ {} (:position :absolute) (:top 4) (:right 4)
              :color $ hsl 0 80 60
              :cursor :pointer
              :font-size 14
          :examples $ []
          :schema $ quote String
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
          :schema $ quote String
        'format-type-display $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-type-display (t)
            if (nil? t) |nil $ if (string? t) t $ trim (format-cirru-edn t)
          :examples $ []
          :schema $ quote $ Fn T (-> String) (:generics T)
        'format-type-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-type-info (t indent)
            if (nil? t) |nil $ if
              or (tag? t) (symbol? t) (enum? t)
              , t $ if (map? t)
                if (kind-tag? t :fn)
                  let
                      entries $ []
                        if
                          .some? $ get t :args
                          Option :some $ [] |:args $ format-type-info
                            .unwrap $ get t :args
                            , indent
                          Option :none
                        match
                          .or-else (get t :return)
                            fn () $ get t :return-type
                          (:some return-type)
                            if (nil? return-type) (Option :none)
                              Option :some $ [] |:return $ format-type-info return-type indent
                          (:none) (Option :none)
                    -> entries
                      map $ fn (x)
                        match x
                          (:some value) value
                          (:none) |nil
                      prepend |fn
                  if (kind-tag? t :tuple)
                    let
                        entries $ []
                          if
                            .some? $ get t :tag
                            Option :some $ [] |:tag $ let
                                label $ .unwrap $ get t :tag
                              cond
                                  string? label
                                  , label
                                (tag? label) (.to-string label)
                                (symbol? label) (.to-string label)
                                true $ format-type-display label
                            Option :none
                          if
                            .some? $ get t :payload
                            Option :some $ [] |:payload $ format-type-info
                              .unwrap $ get t :payload
                              , indent
                            Option :none
                      -> entries
                        map $ fn (x)
                          match x
                            (:some value) value
                            (:none) |nil
                        prepend |tuple
                    if (kind-tag? t :record)
                      let
                          entries $ []
                            if
                              .some? $ get t :name
                              Option :some $ [] |:name $ let
                                  label $ .unwrap $ get t :name
                                cond
                                    string? label
                                    , label
                                  (tag? label) (.to-string label)
                                  (symbol? label) (.to-string label)
                                  true $ format-type-display label
                              Option :none
                            if
                              .some? $ get t :fields
                              Option :some $ [] |:fields $ format-type-info
                                .unwrap $ get t :fields
                                , indent
                              Option :none
                        -> entries
                          map $ fn (x)
                            match x
                              (:some value) value
                              (:none) |nil
                          prepend |record
                      if (kind-tag? t :optional)
                        let
                            entries $ [] $ if
                              .some? $ get t :inner
                              Option :some $ [] |:inner $ format-type-info
                                .unwrap $ get t :inner
                                , indent
                              Option :none
                          -> entries
                            map $ fn (x)
                              match x
                                (:some value) value
                                (:none) |nil
                            prepend |optional
                        if (kind-tag? t :variadic)
                          let
                              entries $ [] $ if
                                .some? $ get t :inner
                                Option :some $ [] |:inner $ format-type-info
                                  .unwrap $ get t :inner
                                  , indent
                                Option :none
                            -> entries
                              map $ fn (x)
                                match x
                                  (:some value) value
                                  (:none) |nil
                              prepend |variadic
                          trim $ format-cirru-edn t
                if (list? t) t $ trim $ format-cirru-edn t
          :examples $ []
          :schema $ quote $ Fn Dynamic String (-> Dynamic)
          :tests $ [] $ %{} 'TestEntry (:name |legacy-type-labels)
            :code $ quote $ do
              assert=
                [] |tuple ([] |:tag |ready) |nil
                format-type-info
                  {} (:kind :tuple) (:tag :ready)
                  , |
              assert=
                [] |record ([] |:name |Thing) |nil
                format-type-info
                  {} (:kind :record) (:name 'Thing)
                  , |
              assert=
                [] |fn |nil $ [] |:return "|do false"
                format-type-info
                  {} (:kind :fn) (:return false)
                  , |
            :tags $ #{} :unit
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
          :schema $ quote $ Fn T String (-> Bool) (:generics T)
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
          :schema $ quote $ Fn T Tag (-> Bool) (:generics T)
        'style-bookmark $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-bookmark
            {}
              |& $ {} (:cursor :pointer) (:padding "|0 8px") (:position :relative)
              |&:hover $ {} $ :background-color (hsl 0 0 98)
              (str "|&:hover ." style-close)
                {} $ :opacity 1
          :examples $ []
          :schema $ quote String
        'style-bookmark-selected $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-bookmark-selected
            {} $ |& $ {}
              :background-color $ hsl 0 0 96
          :examples $ []
          :schema $ quote String
        'style-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-close
            {} $ |& $ {} (:position :absolute) (:opacity 0) (:right 4) (:top 6) (:font-size 12) (:font-weight |100)
          :examples $ []
          :schema $ quote String
        'style-import-ns $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-import-ns
            {} $ |& $ {} (:font-size 10)
              :color $ hsl 0 0 80
              :margin-left 4
          :examples $ []
          :schema $ quote String
        'style-tiny-hint $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tiny-hint
            {} $ |& $ {} (:font-size 10) (:margin-left 8) (:line-height |16px) (:white-space :pre-wrap)
              :color $ hsl 0 0 80
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.core :as ui)
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input pre list-> a
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            reel.comp.reel :refer $ comp-typed-reel
            app.config :refer $ dev?
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo-ui.comp :refer $ comp-close
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:title |Calcit) (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:storage-key |calcit-ir-viewer)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref (reel.typed/State app.types/Op app.types/StoreData)
        '*storage-ready? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *storage-ready? false
          :examples $ []
          :schema $ quote $ Ref Bool
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            match op
              (:import-failed message)
                do
                  hud! |error $ str "|IR import failed: " message
                  , &unit
              _ $ do
                reset! *reel $ match (resolve-op op)
                  (reel.typed/Control control) (typed/apply-control updater @*reel control)
                  (app.types/Op action)
                    typed/record-op updater @*reel action (generate-id!)
                      :timestamp $ shared/date-now-snapshot
                , &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn app.types/Op (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (load-console-formatter!)
            println "|Running mode:" $ if config/dev? |dev |release
            app.storage/load!
              .unwrap $ get config/site :storage-key
              fn () $ js-nullish->option $ .get-item (browser/window-local-storage)
                .unwrap $ get config/site :storage-key
              fn (restored)
                match restored
                  (:ok state)
                    do
                      match state
                        (:some stored)
                          dispatch! $ types/Op :hydrate-storage stored
                        (:none) &unit
                      reset! *storage-ready? true
                  (:err message)
                    do (reset! *storage-ready? false)
                      hud! |error $ str "|Restore failed; automatic saving is paused to protect saved data. " message
                      , &unit
                render-app!
                add-watch! *reel :changes $ fn (reel prev) (render-app!) (schedule-storage!)
                listen-devtools-toggle! |a $ fn () $ dispatch! (types/Op :reel/toggle)
                browser/set-before-unload! $ fn (event) (persist-storage!)
                browser/set-interval! persist-storage! 60000
                schedule-storage!
                persist-storage!
                println "|App started."
                , &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ respo.ffi.browser/query-selector |.app
          :examples $ []
          :schema $ quote $ Fn (-> respo.dom/DomElement) (:features :js-ffi)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            when @*storage-ready? $ app.storage/flush-save!
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!) (schedule-storage!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (mount-target) (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration cb)
            browser/set-interval! cb $ * 1000 duration
            , &unit
          :examples $ []
          :schema $ quote $ Fn Number
            Fn $ -> Unit
            -> Unit
            :features :js-ffi
        'resolve-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn resolve-op (op)
            match (typed/decode-control op)
              (:some control) control
              (:none) op
          :examples $ []
          :schema $ quote $ Fn app.types/Op (-> app.types/ResolvedOp)
        'schedule-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn schedule-storage! ()
            when @*storage-ready? $ app.storage/queue-save!
              .unwrap $ get config/site :storage-key
              :store @*reel
              fn (result)
                match result
                  (:ok _) &unit
                  (:err message)
                    do
                      hud! |error $ str "|Could not save locally; keep the IR file. " message
                      , &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            app.types :as types
            reel.typed :as typed
            app.config :as config
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            |./calcit.build-errors.mjs :default build-errors
            |bottom-tip :default hud!
            reel.util :refer $ listen-devtools-toggle!
    'app.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            app.types/StoreData :states
              {} $ :cursor $ []
              , :ir nil :preview nil :bookmarks ([]) :pointer 0
          :examples $ []
          :schema $ quote app.types/StoreData
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.storage $ %{} 'FileEntry
      :defs $ {}
        '*pending-save $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *pending-save (Option :none)
          :examples $ []
          :schema $ quote $ Ref (Option app.storage/SaveRequest)
        '*save-timer $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *save-timer (Option :none)
          :examples $ []
          :schema $ quote $ Ref (Option Number)
        '*saving? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *saving? false
          :examples $ []
          :schema $ quote $ Ref Bool
        'SaveRequest $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct SaveRequest (:key String) (:stored types/StoreData)
            :complete! $ Fn (Result Unit String) (-> Unit)
          :examples $ []
          :schema $ quote StructDef
        'arm-save! $ %{} 'CodeEntry (:doc "|重置自动保存的 1 秒尾沿定时器；计时结束仅刷新待存请求，不在用户每次输入时序列化完整 IR。")
          :code $ quote $ defn arm-save! ()
            match @*save-timer
              (:some timer) (browser/clear-timeout! timer)
              (:none) &unit
            reset! *save-timer $ Option :some $ browser/set-timeout!
              fn ()
                reset! *save-timer $ Option :none
                flush-save!
              , 1000
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'decode-saved $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-saved (text)
            try
              match
                types/decode-store $ parse-cirru-edn text
                (:some stored)
                  Result :ok $ Option :some stored
                (:none) (Result :err "|Invalid saved IR Viewer state")
              fn (message)
                Result :err $ str "|Invalid saved IR Viewer state: " message
          :examples $ []
          :schema $ quote $ Fn String
            -> $ Result (Option app.types/StoreData) String
        'flush-save! $ %{} 'CodeEntry
          :doc "|仅在有待存请求且无写入在途时序列化并提交，最多同时写入一次。期间的新编辑保留为最新待存快照；失败不覆盖更新的请求、不自旋重试，留待后续操作或周期刷新。页面关闭时异步提交仍只能尽力完成。"
          :code $ quote $ defn flush-save! ()
            match @*save-timer
              (:some timer) (browser/clear-timeout! timer)
              (:none) &unit
            reset! *save-timer $ Option :none
            when (not @*saving?)
              match @*pending-save
                (:none) &unit
                (:some request)
                  do
                    reset! *pending-save $ Option :none
                    reset! *saving? true
                    save! (:key request) (:stored request)
                      fn (result) (reset! *saving? false)
                        match result
                          (:ok _)
                            match @*pending-save
                              (:some _) (arm-save!)
                              (:none) &unit
                          (:err message)
                            match @*pending-save
                              (:none)
                                reset! *pending-save $ Option :some request
                              (:some _) &unit
                        (:complete! request) result
                        , &unit
                    , &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'load! $ %{} 'CodeEntry
          :doc "|异步优先读取 IndexedDB；无记录时才调用旧 localStorage 读取回调。Result 错误不删除或覆盖原记录。"
          :code $ quote $ defn load! (key read-legacy! complete!)
            try
              shared/promise-observe! (idb/get key)
                fn (raw)
                  complete! $ if (js-nullish? raw)
                    match (read-legacy!)
                      (:some text) (decode-saved text)
                      (:none)
                        Result :ok $ Option :none
                    decode-saved $ contract/expect-string "|IndexedDB snapshot" raw
                  , &unit
                fn (error)
                  complete! $ Result :err $ :message (shared/normalize-error error)
                  , &unit
              fn (message)
                complete! $ Result :err message
                , &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn String
            Fn $ -> $ Option String
            Fn
              Result (Option app.types/StoreData) String
              -> Unit
            -> Unit
            :features :js-ffi
        'queue-save! $ %{} 'CodeEntry
          :doc "|为当前单存档排入最新不可变快照引用，重置 1 秒延迟；此处不序列化。被合并替换的待存请求不回调，仅实际提交的请求收到 Result。"
          :code $ quote $ defn queue-save! (key stored complete!)
            reset! *pending-save $ Option :some $ SaveRequest :key key :stored stored :complete! complete!
            arm-save!
            , &unit
          :examples $ []
          :schema $ quote $ Fn String app.types/StoreData
            Fn (Result Unit String) (-> Unit)
            -> Unit
            :features :js-ffi
        'save! $ %{} 'CodeEntry
          :doc "|把完整 StoreData 序列化并异步提交到 IndexedDB；事务完成后回调 Result，不把写入失败当作成功。"
          :code $ quote $ defn save! (key stored complete!)
            try
              shared/promise-observe!
                idb/set key $ format-cirru-edn stored
                fn (_)
                  complete! $ Result :ok &unit
                  , &unit
                fn (error)
                  complete! $ Result :err $ :message (shared/normalize-error error)
                  , &unit
              fn (message)
                complete! $ Result :err message
                , &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn String app.types/StoreData
            Fn (Result Unit String) (-> Unit)
            -> Unit
            :features :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.storage
          :require (|idb-keyval :as idb) (app.types :as types) (js-ffi.shared :as shared) (js-ffi.contract :as contract) (js-ffi.browser :as browser)
    'app.types $ %{} 'FileEntry
      :defs $ {}
        'Bookmark $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Bookmark (:bookmark String String)
          :examples $ []
          :schema $ quote EnumDef
        'CursorKey $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion CursorKey Tag String Number
          :examples $ []
          :schema $ quote UnionDef
        'FileHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileHost (:name 'String) (:size 'Number) (:mime-type 'String) (:last-modified 'Number)
            .text $ Fn app.types/FileHost $ -> JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:last-modified |lastModified) (:mime-type |type)
          :schema $ quote Trait
          :tags $ #{} :ffi :js-host
        'FileInputHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileInputHost (:value 'String)
            :files $ JsNullish app.types/FileListHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {}
            :writable $ #{} :value
          :schema $ quote Trait
          :tags $ #{} :ffi :js-host
        'FileListHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileListHost (:length 'Number)
            .item $ Fn app.types/FileListHost Number $ -> (JsNullish app.types/FileHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {}
          :schema $ quote Trait
          :tags $ #{} :ffi :js-host
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (List app.types/CursorKey) Dynamic
            :ir-data $ Map Tag Dynamic
            :import-failed String
            :preview $ Map Tag Dynamic
            :close-preview
            :hydrate-storage app.types/StoreData
            :new-bookmark app.types/Bookmark
            :point-to Number
            :remove-bookmark Number
            :reel/toggle
            :reel/recall Number
            :reel/merge
            :reel/reset
            :reel/step
            :reel/run
            :reel/remove Number
          :examples $ []
          :schema $ quote EnumDef
        'ResolvedOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ResolvedOp app.types/Op reel.typed/Control
          :examples $ []
          :schema $ quote UnionDef
        'StoreData $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StoreData
            :states $ Map Dynamic Dynamic
            :ir Dynamic
            :preview Dynamic
            :bookmarks $ List app.types/Bookmark
            :pointer Number
          :examples $ []
          :schema $ quote StructDef
        'decode-bookmark $ %{} 'CodeEntry
          :doc "|检查书签 variant 和两个 String 载荷，将历史匿名或已有命名书签规范化为当前 Bookmark。"
          :code $ quote $ defn decode-bookmark (bookmark)
            match bookmark
              (:bookmark ns name)
                Bookmark :bookmark (decode-map-as ns 'String) (decode-map-as name 'String)
              _ $ raise "|Expected a bookmark target"
          :examples $ []
          :schema $ quote $ Fn AnyEnum (-> app.types/Bookmark)
        'decode-store $ %{} 'CodeEntry
          :doc "|验证存档字段并规范化历史匿名书签，返回具有当前 StoreData/Bookmark 身份的受检值；不承诺保持输入对象身份。"
          :code $ quote $ defn decode-store (data)
            try
              let
                  raw $ if (struct? data)
                    if
                      = (&struct:get-name data) :StoreData
                      &struct:to-map data
                      raise "|Expected an IR Viewer store"
                    decode-map-as data $ Map Tag Dynamic
                  _cursor $ decode-map-as
                    .unwrap-or
                      get-in raw $ [] :states :cursor
                      []
                    List app.types/CursorKey
                  bookmarks $ .unwrap $ get raw :bookmarks
                  normalized $ assoc raw :bookmarks $ if (list? bookmarks)
                    map bookmarks $ fn (bookmark)
                      if (enum? bookmark) (decode-bookmark bookmark) (raise "|Expected a bookmark Enum")
                    raise "|Expected a bookmark List"
                match (try-decode-map-as normalized app.types/StoreData)
                  (:ok stored) (Option :some stored)
                  (:err message)
                    do (eprintln "|Invalid saved IR Viewer state: " message) (Option :none)
              fn (message) (eprintln "|Invalid saved IR Viewer state: " message) (Option :none)
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ calcit.core/Option app.types/StoreData
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.types
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor data)
                assoc store :states $ decode-map-as
                  update-state-tree (:states store) cursor data
                  Map Dynamic Dynamic
              (:ir-data data)
                -> store (assoc :ir data)
                  assoc :bookmarks $ []
                  assoc :pointer 0
              (:preview data) (assoc store :preview data)
              (:close-preview)
                assoc store :preview $ :preview app.schema/store
              (:hydrate-storage data) data
              (:new-bookmark bookmark)
                -> store
                  assoc :bookmarks $ prepend (:bookmarks store) bookmark
                  assoc :pointer 0
              (:point-to index) (assoc store :pointer index)
              (:remove-bookmark index)
                let
                    bookmarks $ dissoc (:bookmarks store) index
                    pointer $ if
                      < index $ :pointer store
                      dec $ :pointer store
                      :pointer store
                    max-index $ dec $ .len bookmarks
                    next-pointer $ cond
                        empty? bookmarks
                        , 0
                      (< pointer 0) 0
                      (> pointer max-index) max-index
                      true pointer
                  -> store (assoc :bookmarks bookmarks) (assoc :pointer next-pointer)
              _ store
          :examples $ []
          :schema $ quote $ Fn app.types/StoreData app.types/Op String Number (-> app.types/StoreData)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-state-tree
