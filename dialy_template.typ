// 罫線パターンを生成する関数
// #let ruled-lines(
//   line-height: 1.6em,
//   stroke-style: 1pt + rgb(99, 99, 99),
// ) = {
//   stack(dir: ttb, spacing: line-height, ..range(100).map(i => line(length: 100%, stroke: stroke-style)))
// }

// 絵日記のレイアウトを生成する関数
//
// Args:
// - date (datetime): 表示する日付。指定がなければ今日の日付になります。
// - picture (content): 上の枠に表示するコンテンツ（画像やテキストなど）。
// - body (content): 下の枠に表示する文章。
// - ratio (array): 上下の高さの比率。デフォルトは6:4です。
//
// Returns:
//   絵日記の1ページ分のコンテンツ



#let enikki(
  date,
  title,
  picture: "picture",
  body,
  ratio: (6fr, 4fr),
) = {
  set page(paper: "a6", margin: (x: 0.5cm, y: 0.5cm))
  // --- 日付 ---
  align(right)[
    #text(1.2em, weight: "bold")[
      #date.display()
    ]
    #align(center, text(size: 1.5em, weight: "black")[#title])
  ]

  // --- スペース ---

  // --- 本体レイアウト ---
  grid(
    rows: (0.8fr, 1fr),
    gutter: -8pt,

    // (上) 絵のスペース
    //
    box(width: 100%, height: 90%, stroke: 4pt, align(center + horizon)[
      #set image(height: 100%)
      #picture
    ]),

    // (下) 文章のスペース
    box(width: 100%, height: 75%, stroke: 2pt, inset: 10pt, [
      //#place(left + top, ruled-lines()),
      // #set par(leading: 1.4em)
      // #body

      #set underline(offset: 2pt)
      #underline(body)
    ]),
  )
}
