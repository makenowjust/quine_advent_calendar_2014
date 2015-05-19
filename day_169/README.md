# Day 169

この記事はQuine Advent Calendar 2014の169日目です。

今日はwispでQuineを書きました。AltJSのLispはいくつあるんだろう？

wispはAltJSのLispの中でも知名度が高く安定している雰囲気がありましたが、最近メンテナンスされていないようなのが残念です。

```console
$ diff quine.wisp <(wisp quine.wisp)
```
