#Day 04

[Quine Advent Calendar](http://www.adventar.org/calendars/645)の4日目です。

時間がないのでCommon Lispで書いたとても普通なQuineです。

ぶっちゃけ、処理系（`sbcl`）を入れてその操作を調べてる時間の方が長かったです。

`format`関数の仕様がよく分からなかったんだけど、どうも仕様を眺めてると引数を何回も出力したりできるっぽいので、そういう風に書き直せるならしたいかもしれないですね。

明日はScalaでQuine書いたことがないことに気付いたので、Scalaで書いた普通のQuineになると思います。

```
$ diff quine.lisp <(sbcl --script quine.lisp)
```
