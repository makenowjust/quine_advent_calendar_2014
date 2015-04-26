# Day 147

この記事はQuine Advent Calendar 2014の147日目です。

今日はStripesでQuineを書きました。StripesはAltJSです。CoffeeScriptがインデントすぎて怖い人向けかもしれません。

Quineは`JSON.stringify`です。文字列の補間使いたかったのですが、エスケープと被るので諦めました。

```console
$ stripes quine.stps && node quine.js | diff quine.stps -
```
