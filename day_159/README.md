# Day 159

この記事はQuine Advent Calendar 2014の159日目です。

今日はjispでQuineを書きました。jispはJavaScriptに変換されるLispです。個人的には結構いいかなと思っています。

Quineは色々考えたのですが面倒になったのでいい加減な感じです。許してください。

```console
$ diff quine.jisp <(jisp quine.jisp)
```
