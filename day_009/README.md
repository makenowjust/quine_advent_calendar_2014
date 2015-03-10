#Day 09

[Quine Advent Calendar 2014](http://www.adventar.org/calendars/645)の9日目です。

今日はCoffeeScriptで書いた普通のQuineです。かなり短かい自信があります。

まあ、適当に`eval`使って書けば、

```coffee
eval s="console.log('eval s='+JSON.stringify(s))"
```

みたくしてもっと短かくはなるんだけど、もはやそれCoffeeScriptじゃないよね？ みたいな。あくまでCoffeeScriptらしさを保ったコードでありたい。

```
$ diff quine.coffee <(coffee quine.coffee)
```
