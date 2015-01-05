#Day 36

この記事はQuine Advent Calendar 2014の36日目です。ベイマックス見てきました。面白かったです。

今日はNemerleでQuineを書きました。NemerleはCLR上で動くプログラミング言語で、型推論とかマクロとかがある感じの言語です。Haxeとかに近い印象。
拡張子が`.n`一文字なのもなんかいい感じです。昨日のR言語とはそういうところでつながってます。

Quineの中では`printf`を使っていますが、これもマクロになっているみたいです。おかげで第一引数に変数を渡すことができずふざけるなってなりました。

```console
$ ncc /o:quine.exe quine.n && mono quine.exe | diff quine.n -
```
