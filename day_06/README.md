#Day 06

[Quine Advent Calendar](http://www.adventar.org/calendars/645)の6日目です。

Lisp Flavoured LispというErlangのVM上で動くLisp系言語を使ってQuineを書きました。やってることは昔書いたErlangのものと変わらない気がします。

どんどん意識が下がってる気がするけど許して。

```
$ diff quine.lfe <(lfe quine.lfe)
```
