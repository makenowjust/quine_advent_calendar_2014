# Day 80

この記事はQuine Advent Calendar 2014の80日目です。80日も続けるなんて誰が思ったことでしょうか。

今日はSidefで書いたQuineです。SidefはPerlで実装されたモダンなオブジェクト指向プログラミング言語で、感覚としてはPerlをベースにPerl6とRubyとGoのいいところを合わせた感じです。悪くないと思います。

ちなみにこの言語をインストールするためにボクは[モダンなPerlの開発環境](http://makenowjust.hatenablog.com/entry/2015/02/16/215250)を整えることになりました。疲れました。

Quineはこんな感じで書けるかなー、とやったら案の定書けました。いい感じです。

```console
$ diff quine.sf <(sidef quine.sf)
```
