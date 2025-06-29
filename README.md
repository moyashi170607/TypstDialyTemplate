# Typst 絵日記テンプレート

このリポジトリは、Typstで絵日記を簡単に組版できるテンプレートです。

## 使い方

1. `dialy_template.typ` をプロジェクトにコピーします。
2. サンプルとして [`sample/dialy.typ`](sample/dialy.typ) を参考に、以下のように記述します。

```typ
#import "../dialy_template.typ": enikki

#enikki(
  datetime(year: 2025, month: 6, day: 24),
  "タイトル",
  [#image("sample.png")],
  [
    ここに本文を書きます。
  ],
  main_size:1.0em//本文のフォントサイズ。デフォルトは1.0em
)
```

- `datetime` には日付を指定します。
- `"タイトル"` には日記のタイトルを記入します。
- `#image("sample.png")` で画像を挿入します

## PNGとしてタイプセットする手順

1. Typst CLIをインストールしていない場合は、[公式サイト](https://typst.app/)からインストールしてください。
2. ターミナルで `sample` ディレクトリに移動します。

   ```sh
   cd sample
   ```

3. 以下のコマンドでPNGとして出力します。

   ```sh
   typst compile dialy.typ out.png
   ```

   - `out.png` の部分は任意のファイル名に変更できます。

## License
MIT License