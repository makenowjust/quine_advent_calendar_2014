#Day 55

この記事はQuine Advent Calendar 2014の55日目です。無事に南の国から帰ってきました。

今日はSMLでQuineを書きました。SMLはOCamlではないML系のプログラミング言語です。OCaml同様強力な型システムやモジュールを特徴とします。

Quineは`implode`とか`chr`を適当に使って書きました。エントリーポイントの指定が処理系ごとに統一されていない気がしたので、このQuineは少なくともMLtonでしか動作を確認してないです。

```console
$ mlton quine.sml
$ diff quine.sml <(./quine)
```
