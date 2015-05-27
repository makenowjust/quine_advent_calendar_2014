# Day 177

この記事はQuine Advent Calendar 2014の177日目です。

今日はFalconでQuineを書きました。Falconはマルチパラダイムなプログラミング言語で、手続型っぽくも関数型っぽくも書けて、一見すると宗教戦争を解決できそうですが実際はそうでもないような言語です。多分。

Quineは`String.esq`があったので使ってみましたが何か違う感じがします。あまりFalconという言語を理解していない。

```console
$ diff quine.fal <(falcon quine.fal)
```
