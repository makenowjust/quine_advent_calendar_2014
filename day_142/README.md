# Day 142

この記事はQuine Advent Calendar 2014の142日目です。

今日はColaScriptでQuineを書きました。ColaScriptはAltJSです。DartとかCoffeeScript、Python、Go言語、PHPなんかに似ているらしいです。確かにそんな感じです。

Quineは`JSON.stringify`でいつも通り。デフォルト引数を使ったりしました。

```console
$ cola -n quine.cola | node | diff quine.cola -
```
