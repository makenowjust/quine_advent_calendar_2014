# Day 136

この記事はQuine Advent Calendar 2014の136日目です。

今日はDogeScriptでQuineを書きました。DogeScriptはJavaScriptにコンパイルされる変な言語です。LOLCODEみたいなものだと思います。

Quineは`console.log`のフォーマットを使ってみました。よってNode.js限定ですけどまあそれでもいいよね。

```console
$ dogescript quine.djs | node | diff quine.djs -
```
