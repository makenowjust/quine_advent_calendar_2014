# Day 145

この記事はQuine Advent Calendar 2014の145日目です。170言語目のQuineです。

今日はKhepriでQuineを書きました。KhepriはAltJSで、JavaScriptにHaskelを足したような言語です。使いやすかったので結構いいと思います。
ちなみにKhepriはエジプトの神らしいです。だからロゴがスカラベなんですね。

Quineは、`static console`する必要があった以外は特に悩みませんでした。

```console
$ khepri quine.kep | node | diff quine.kep -
```
