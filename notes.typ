#let notes-template(doc) = {
  set page(paper: "a4", margin: 1.5cm, flipped: false)
  set text(
    font: (
      "LINE Seed Sans",
      "LINE Seed JP_TTF",
    ),
    size: 11pt,
    fill: rgb("#222222"),
  )
  set par(
    spacing: 1.5em,
    leading: 0.9em,
  )
  show heading: it => {
    text(
      font: ("Bricolage Grotesque 24pt", "Zen Kaku Gothic New"),
      fill: rgb("#111111"),
      weight: "bold",
      size: 1.33em,
      it.body,
    )
    v(1.5em, weak: true)
  }
  doc
}

#let lessons = json("typst-gen.json")

#show: notes-template
#for path in lessons {
  include path
  pagebreak(weak: true)
}
