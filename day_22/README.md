#day 21

[Quine Advent Calendar](http://www.adventar.org/calendars/645)の22日目です。

今日はFALSEという、Brainf\*ckよりも昔からある難解言語でQuineを書いてみました。

ちょうどいいインタープリターが見つからなかったので自作したのですが、そっちの方が時間がかかった気がします。Haskellで書いたのでがんばってビルドしてください。

ボクは基本的に難解言語でQuineを書くのが好きじゃなくて——というのも時間がかかるばかりで得るものが少ないからなのですが、今回久し振りに難解言語で書いてみてやっぱりそういう感じだなぁ、と思ったのでした。Brainf\*ckで書いたときも、何やってんだ感しかなかったです。

```console
$ (cd false && cabal configure && cabal build)
$ diff quine.false <(./false/dist/build/false/false quine.false)
```
