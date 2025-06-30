#import "../dialy_template.typ": enikki

#enikki(
  date: datetime(year: 2025, month: 6, day: 30),
  title: "dialy_templeteの公開！",
  //540px x 310pxのイラストがピッタリはまる。
  picture: [#image("sample.png")],
  body: [
    今日、Typstで絵日記を作るためのテンプレートを公開した。これでいい感じの絵日記を組版できるはず。
    正直、Typstのことはよく分かってないから改善点やバグがあったら、ぜひ教えてほしい。
    Typstはマークダウンみたいな記法で覚えやすいし、タイプセットも爆速なので非常にありがたい。
    絵日記の文字の部分は手書きだと、ちょっと読みづらいこともあるから、今回Typstでテンプレートを作った。
    皆さんが絵日記を組版して、SNSに公開するときとかに役立つと幸いだ。
  ],
  main_size: 1.0em,
)
