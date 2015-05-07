# Day 157

この記事はQuine Advent Calendar 2014の157日目です。

今日はRoyで書いたQuineです。Royは静的型付けなAltJSで、モナド構文等を持っているのが特徴です。かなりよくできてると思うのですが、最近は活発でないのが弱点です。

Quineはやっぱり`JSON.stringify`なのですが、文字列の結合はHaskell流に`++`になります。

```console
$ diff quine.roy <(roy -r quine.roy)
```
