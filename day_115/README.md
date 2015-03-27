# Day 115

この記事はQuine Advent Calendar 2014の115日目です。

今日はHackでQuineを書きました。HackはFacebookが開発するJITエンジンのHHVM上で動作する言語で、PHPに型を追加したような奴です。

ぶっちゃけPHPなのでどうやってQuineを書くか悩んだのですが、結果的に`==>`のラムダを使う方向で落ち着きました。

```console
$ diff quine.hh <(hhvm quine.hh)
```
