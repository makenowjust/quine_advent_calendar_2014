#Day 65

この記事はQuine Advent Calendar 2014の65日目です。

今日のQuineはS-Lang書きました。S-Langが何かと訊かれるとボク自身よく分かってないのですが、少なくともR言語の元となったS言語とあまり関係ないことは確かです。

Quineは文字列の補間とraw文字リテラルでどうにかしました。Cobraと基本同じですが、文字列の最後に`R`とか`$`とか付けるので面白いです。

```console
$ diff quine.sl <(slsh quine.sl)
```
