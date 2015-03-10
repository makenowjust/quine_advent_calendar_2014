# Day 92

この記事はQuine Advent Calendar 2014の92日目です。何だかここ最近Lisp系の言語ばかり触ってる気がします。括弧が手に馴染んできた‥。

今日はArcで書いたQuineです。Arcは『ハッカーと画家』などのエッセイで有名なポール・グレアムの設計したLispです。Hacker Newsで使われてるみたいです。  
Arcはともかく素早く開発することができることに焦点があてられていて、そのために`f:g`で関数合成になるなどいくつもの省略記法があったりします。

Quineは、まあLispのQuineですね、はい。

```console
$ diff quine.arc <(arc quine.arc)
```
