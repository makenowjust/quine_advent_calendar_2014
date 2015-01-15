#Day 47

この記事はQuine Advent Calendar 2014の47日目の記事です。

今日はThueでQuineを書きました。Thueというのは文字列書き換えをベースにした難解言語です。どういう言語なのかは調べてみてください。

ThueでQuineを書いてみたのですが、Thueは仕様がいまいち定まってなくて、出力にも違いがあったりするので、このQuineは[catseye/Thue](https://github.com/catseye/Thue)のRuby版の実装でしか動かない気がします。というか、Python版とC言語版は改行が上手く扱えないので難しいでしょう。

Quineとしてはそんなに難しいことはしてないです。強いて言うなら、文字列の書き換えがRuby版では確実にランダムに行なわれるので、統一されるよう工夫しましたが、こんなこと誰でも思い付くでしょう。

```console
$ ruby thue.rb quine.t | diff quine.t -
```
