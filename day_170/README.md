# Day 170

この記事はQuine Advent Calendar 2014の170日目です。ついでに190言語目でもあります。

今日はAnkoでQuineを書きました。Ankoは@mattnさんが開発しているGo言語で実装されたプログラミング言語です。Go言語と連携しやすいのが特徴のようです。

```console
$ diff quine.anko <(anko quine.anko)
```
