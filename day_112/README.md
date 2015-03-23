# Day 112

この記事はQuine Advent Calendar 2014の112日目です。

今日は[Kite](https://github.com/kite-lang/kite)でQuineを書きました。KiteはHaskellで実装された強い型付けのプログラミング言語で、JavaScriptにコンパイルされてNode.jsで実行されるのが特徴のような気がします。

同名のプログラミング言語が存在しますがどうやら別物のようです。（[参考（Rosetta Codeのページ）](http://rosettacode.org/wiki/Category:Kite))

Quineでは文字列にエスケープが中途半端にしか実装されていなかったので、`show`関数で関数を文字列に変換して（内部的にはJavaScriptなので）、そこから`"`を取ってきています。すごく疲れました。Sephといい、こういう中途半端な実装はやめてくれ‥。

```console
$ kite quine.kite
$ diff quine.kiye <(./main)
```
