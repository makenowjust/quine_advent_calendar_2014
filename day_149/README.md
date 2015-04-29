# Day 149

この記事はQuine Advent Calendar 2014の149日目です。

今日はSpiderでQuineを書きました。SpiderはPython、Go、Swiftなんかに影響を受けたAltJSらしいです。ES6をターゲットにコンパイルして、それをあとでTraceurで変換してるっぽい気がします。Go言語っぽいチャネルの記法があったり面白い気がします。

Quineは珍しく多少工夫しました。`JSON.stringify`を使ってないです。

```console
$ diff quine.spider <(spider quine.spider)
```
