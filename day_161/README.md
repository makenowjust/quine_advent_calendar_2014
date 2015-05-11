# Day 161

この記事はQuine Advent Calendar 2014の161日目です。

今日はHodorでQuineを書きました。HodorはGame of Thronesというアメリカのドラマのキャラクタを元ネタにしたプログラミング言語です。「Hodor hodor」うるさいです。

Quineは、ほとんどの置換規則の末尾に空白がくるのを利用して、はじめは配列に入れたあと`.join`でつないでいます。あとやっぱり`JSON.stringify`は強いです。

余計な出力が付いてくるので`tail`で弾いてください。

```console
$ hodor quine.hd | tail -n +2 | diff quine.hd -
```
