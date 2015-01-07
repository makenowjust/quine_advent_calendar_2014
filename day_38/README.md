#Day 38

この記事はQuine Advent Calendar 2014の38日目の記事です。

今日はOctaveでQuineを書いてみました。OctaveはGNUが開発しているMATLAB互換の数式処理システムです。数式処理システムの割りにはよくできているような気がします。
拡張子が`.m`ってObjective-Cと盛大に被るような気がしますが深く考えないことにします。

Quineは`eval`があったので`eval`っぽいQuineにしてみました。というか一行毎に実行結果を出力してしまうので、一行にせざるをえなかった感じです。制御できるんだろうけど調べるのが面倒だった。

```console
$ diff quine.m <(octave -q quine.m)
```
