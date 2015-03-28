# Day 117

この記事はQuine Advent Calendar 2014の117日目です。

今日はSeed7でQuineを書きました。Seed7は自分で構文を追加したりとかできたり、GCはないけどメモリ管理がちゃんとしてる（らしい）言語です。よく分からないけどすごそうなことだけ分かりました。

Quineは`literal`という素敵関数があったので感謝してます。

```console
$ diff quine.sd7 <(s7 -q quine.sd7)
```
