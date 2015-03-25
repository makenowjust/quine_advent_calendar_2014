# Day 114

この記事はQuine Advent Calendar 2014の114日目です。

今日はLOLCODEでQuineを書きました。LOLCODEはlolspeakにインスピレーションを受けた難解言語です。ただ、難解言語と言っても言語機能自体はかなり高級で、単にソースコードが奇妙な英語になるだけなんじゃないかと思います。

Quineはかなり簡単に書けました。またCeylon同様Unicodeの文字名から文字を得ることができたので書いていて楽しかったです。

```console
$ diff quine.lol <(lci quine.lol)
```
