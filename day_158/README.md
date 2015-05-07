# Day 158

この記事はQuine Advent Calendar 2014の158日目です。

今日はECMAScript6でQuineを書きました。

テンプレートリテラルとアロー関数を使っています。

```console
$ diff quine.es6 <(iojs --harmony_arrow_functions quine.es6)
```
