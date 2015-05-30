# Day 180

この記事はQuine Advent Calendar 2014の180日目です。ついでに200言語目でもあります。

今日はEzhilでQuineを書きました。Ezhilはタミル語で書くことができるプログラミング言語です。タミル語はインドとかスリランカで使われている言語で、文字がなんかかわいいです。

Quineは配列を回して表示していくだけなんですが読めないです。

```console
$ diff quine.n <(ez quine.n)
```
