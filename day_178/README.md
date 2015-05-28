# Day 178

この記事はQuine Advent Calendar 2014の178日目です。

今日はE言語でQuineを書きました。E言語はJVM上とかで動く言語で、分散コンピューティングに向いているようです。

Quineは文字列に`quote`メソッドがあったのでいい感じに書けました。

```console
$ diff quine.e <(rune quine.e)
```
