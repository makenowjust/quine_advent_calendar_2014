#Day 15

[Quine Advent Calendar](http://www.adventar.org/calendars/645)の15日目です。

今日は円城塔氏の『Self-Reference ENGINE』という物語を読んでいました。このタイトルは直訳すると『自己言及機関』——つまり、Quineのことなんじゃないかな、とか思っています。個人的にかなり面白い物語だったので、興味がある方はぜひ書店で手に取ってみてください。

そんなわけで（全くつながっていない）、今日のQuineは[Io言語](http://iolanguage.org/)で書いたものです。

Io言語というのは、プロトタイプベースのオブジェクト指向を持ったプログラミング言語です。特徴はとてもググりにくいことなんじゃないでしょうか‥‥。

今回のQuineはやはり普通のQuineなのですが、それなりに満足のいくものになっています。どうしてかはソースコード見れば分かるでしょう。Ioらしいかと問われるとかなり微妙なところですが（連鎖性言語のようです）、変数を使わないでQuineができると楽しいです。

また、このためにわざわざIoをビルドしたので、このQuineはIOのバージョン20140919で動作を確認しています。（ちなみに公式サイトでバイナリ落とすと2011何とかとかなので注意してください）

```
$ diff quine.io <(io quine.io)
```