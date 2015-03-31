# Day 120

この記事はQuine Advent Calendar 2014の120日目です。ついでに3月が終わろうとしています。ボクは毎日「Dies Iraeは神」と叫んでいます。

今日はC+=でQuineを書きました。C+=はフェミニスト向けのプログラミング言語で、基本的にC言語の予約語を置き替えたものになっています。フェミニスト向けとか言っても半分くらいはジョーク（だと思う）みたいなものなので、GitHib、BitBacket、Google Codeを置い出されたり、結構批判もあったみたいです。[参考](http://blog.mollywhite.net/why-im-not-laughing-at-c-plus-equality/)

まあそんなことはどうでもよくて、ボク的にはQuineが書けるならなんだっていいのですけど。

```console
$ diff quine.xe <(inherpreter quine.xe)
```
