# Day 151

この記事はQuine Advent Calendar 2014の151日目です。

今日はEarl GreyでQuineを書きました。Earl GreyはES6にコンパイルされるプログラミング言語です。AltJSに分類していいんでしょうか？　ちなみに`earl`コマンドを動かすにはio.jsが必要という豪気な仕様です。（`earl5`を使えばいいのですが）

面白そうな機能はいくつかあったのですが結局使えてない。Quineは難しい。

```console
$ diff quine.eg <(earl run quine.eg)
```
