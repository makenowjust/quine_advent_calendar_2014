# Day 99

この記事はQuine Advent Calendar 2014の99日目です。いよいよあと1日で100日かぁ。

今日はHyでQuineを書きました。HyはPython上で実装されたLisp方言です。`[]`を多用する辺りはClojureっぽいのですが、`let`とか`cond`なんかの見た目はSchemeっぽい感じで括弧がいっぱいになります。これを是とするか非とするかは慣れ次第でしょう。

Quineは`.format`でPythonのメソッドを呼び出した、といった具合です。

```console
$ diff quine.hy <(hy quine.hy)
```
