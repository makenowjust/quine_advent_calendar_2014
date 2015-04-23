# Day 143

この記事はQuine Advent Calendar 2014の143日目です。[@vort](https://twitter.com/vort)に誕生日プレゼントとしてゼノギアスを貰ったのでプレイしたいです。というかアドベントカレンダー面倒です。

今日はGorillaScriptでQuineを書きました。GorillaScriptはAltJSです。JavaScriptのBad Partsをどげんかせんといかんというノリで演算子とかがいい感じになってるっぽいです。ただし2年くらい更新がありません。

Quineは`JSON.stringify`の一強です。AltJSは楽でいいですね。

```console
$ diff quine.gs <(gorilla quine.gs)
```
