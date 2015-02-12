# Day 75

この記事はQuine Advent Calendar 2014の75日目です。

今日はFreeBASICで書いたQuineです。FreeBASICはコンパイルするタイプのBASICで、C言語とかとの親和性が比較的高いのが特徴です。正直BASICはよく分からない。

Quineはプリプロセッサの力を借りました。むしろC言語っぽいです。

```console
$ fbc quine.bas
$ diff quine.bas <(./quine)
```
