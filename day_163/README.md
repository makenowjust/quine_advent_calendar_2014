# Day 163

この記事はQuine Advent Calendar 2014の163日目です。

今日はHeronでQuineを書きました。Heronは.Net上で動くプログラミング言語です。CILでコンパイルされるわけではなく、普通にインタープリタとして実装されています。ぱっと見の特徴は複数形の予約語が多い気がします。

Quineはそんなに工夫してないですが、ケツカンマが許されないのが面倒でした。

```console
$ HeronEngine quine.heron > quine1.heron
$ fc quine.heron quine1.heron
```
