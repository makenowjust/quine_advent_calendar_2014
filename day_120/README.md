# Day 120

この記事はQuine Advent Calendar 2014の120日目です。

今日はlang5でQuineを書きました。lang5はスタックベースの配列指向のプログラミング言語だそうです。要するにForthとAPLを足してForth寄りに割った感じな気がします。Forthの後継のつもりだからlang5という名前なのかもしれません。

Quineは`dump`が素敵命令だったので便乗しました。

```console
$ diff quine.5 <(lang5 quine.5)
```
