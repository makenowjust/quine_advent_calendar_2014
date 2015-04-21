# Day 141

この記事はQuine Advent Calendar 2014の141日目です。

今日はHamでQuineを書きました。HamはAltJSです。クセが無くて使いやすい気がしますがunderscore.jsに依存しています。クセが無さすぎて使うメリットも薄いかもしれません。

Quineはいつも通りです。

```console
$ diff quine.ham <(ham quine.ham)
```
