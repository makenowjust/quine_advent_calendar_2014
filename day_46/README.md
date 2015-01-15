#Day 46

この記事はQuine Advent Calendar 2014の46日目の記事です。

今日はValaでQuineを書きました。ValaというのはGNUが開発しているC#っぽいけどC言語に変換されてコンパイルされるプログラミング言語です。

Quineは適当に`printf`で書きました。`printf`があればQuineは簡単ですね。

```console
$ vala quine.vala
$ diff quine.vala <(./quine)
```
