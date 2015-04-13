# Day 133

この記事はQuine Advent Calendar 2014の133日目です。

今日はLiveScriptでQuineを書きました。LiveScriptはCoffeeScriptを魔改造したCocoをさらに魔改造した言語です。魔改造したとしか言いようがないほど闇を感じます。

よく分からないし特徴を考えるのも面倒だったのでCoffeeScriptでも通じそうなてきとーなQuineを書きました。そのうち書き直します、きっと。

```console
$ diff quine.ls <(lsc quine.ls)
```
