# Day 107

この記事はQuine Advent Calendar 2014の107日目です。本当はFancyというプログラミング言語でQuineを書くつもりだったのですが、素直に動いてくれないので別の言語にします。

今日はOzでQuineを書きました。Ozというのはマルチパラダイムのプログラミング言語で、主にMozartプログラミングシステムの上で使用されます。昔はAlice MLの実装にも使われていました。
Mozart 2系列がごちゃごちゃしていてよく分からないので1系列を適当にインストールしました。

Quineはパターンマッチがある言語ではよくある感じです。

```console
$ diff quine.oz <(ozc -x quine.oz)
```