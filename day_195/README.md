# Day 195

この記事はQuine Advent Calendar 2014の195日目です。

bcのQuineを書きました。前まではPOSIX bcに準拠するために、ただ`1`と書かれたファイルを置いていたのですが、さすがにアレなのでGNU bcでしか動かないけどまあそれなりにプログラムになってるQuineにしました。

ちなみに、なぜPOSIX bcでQuineが書けないのかというと、文字列のエスケープが無いからです。ダブルクオートをどんなにがんばっても表現できません。

```console
$ diff quine.bc <(bc quine.bc)
```
