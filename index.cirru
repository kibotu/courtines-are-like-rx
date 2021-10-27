doctype

html
  head
    title "Coroutines are like Rx"
    meta (:charset utf-8)
    link (:rel icon)
      :href http://logo.cirru.org/cirru-32x32.png
      :type image/png
    link (:rel stylesheet)
      :href https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.3.0/styles/github.min.css
    style (@insert css/style.css)
    script (:src https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.3.0/highlight.min.js)
    script (:src https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.3.0/languages/kotlin.min.js)
    script (:src https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.3.0/languages/xml.min.js)
    script (:defer true) "hljs.highlightAll();"

  body
    a (:target _blank)
      :href https://github.com/kibotu/courtines-are-like-rx
      img#fork-me (:src http://kibotu.github.io/courtines-are-like-rx/fork-me.png)
    #note
      = "Coroutines are like Rx"

    .section
      .title Basics
      .case (.name "Publisher") $ .pair
        .card (.lang Kotlin) $ pre.code $ code (@insert code/publisher-rx.kt)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/publisher-coroutines.kt)
      .case (.name "Consumer") $ .pair
        .card (.lang Kotlin) $ pre.code $ code (@insert code/publisher-rx.kt)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/publisher-coroutines.kt)

    .section
      .title Streams
      .case (.name "Cold Stream") $ .pair
        .card (.lang Kotlin) $ pre.code $ code (@insert code/cold-stream-coroutines.kt)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/cold-stream-rx.kt)
      .case (.name "Hot Stream") $ .pair
        .card (.lang Kotlin) $ pre.code $ code (@insert code/hot-stream-coroutines.kt)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/hot-stream-rx.kt)

    .section
      .title Operators
      .case (.name "Merge") $ .pair
        .card (.lang Kotlin) $ pre.code $ code (@insert code/merge-rx.kt)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/merge-coroutines.kt)
      .case (.name "Debounce") $ .pair
        .card (.lang Kotlin) $ pre.code $ code (@insert code/debounce-rx.kt)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/debounce-coroutines.kt)
      .case (.name "Throttle First") $ .pair
        .card (.lang Kotlin) $ pre.code $ code (@insert code/throttle-first-rx.kt)
        .card (.lang Kotlin) $ pre.code $ code (@insert code/throttle-first-coroutines.kt)

