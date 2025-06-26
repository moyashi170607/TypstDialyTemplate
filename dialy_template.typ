// 絵日記のレイアウトを生成する関数
//
// Args:
// - date (datetime): 表示する日付。指定がなければ今日の日付になります。
// - picture (content): 上の枠に表示するコンテンツ（画像やテキストなど）。
// - body (content): 下の枠に表示する文章。
//
// Returns:
//   絵日記の1ページ分のコンテンツ



#let enikki(
  date,
  title,
  picture: "picture",
  body,
) = {
  set page(paper: "a6", margin: (x: 0.5cm, y: 0.5cm))
  // --- 日付 ---
  align(right)[
    #text(1.2em, weight: "bold")[
      #date.display()
    ]
    #align(center, text(size: 1.5em, weight: "black")[#title])
  ]

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
      #set underline(offset: 2pt)
      #underline(body)
    ]),
  )
}
