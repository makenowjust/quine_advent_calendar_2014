#Day 11

[Quine Advent Calendar 2014](http://www.adventar.org/calendars/645)の11日目です。

昨日はbcとdcだったので、今日はawkとsedです。別にこれらにあまり関係はないのですが、まぁコマンドラインユーティリティつながりってことで。

awkの方は、正直に言ってまったく工夫していません。何の面白みもないQuineです。書くのに5分もかからなかった。

sedは結構大変だった気がします。というか後方参照するためにはバックシュラッシュと括弧で囲わなければいけないことに気付くまでに時間がかかりました。

```
$ diff quine.awk <(awk -f quine.awk)
$ echo | sed -f quine.sed | diff quine.sed -
```
