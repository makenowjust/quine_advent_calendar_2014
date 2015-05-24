# Day 173

この記事はQuine Advent Calendar 2014の173日目です。

今日はWortelでQuineを書きました。WortelはNode.js上で動くJ言語とかAPLの影響を受けた言語です。非常にコードが短かく書けます。

npmのパッケージにもなっていないのですが、AltJSとしての作りはしっかりとしていてとても良いと思いました。

```console
$ node Wortel.js -r quine.wortel | diff quine.wortel -
```
