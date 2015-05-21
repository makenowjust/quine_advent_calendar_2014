# Day 171

この記事はQuine Advent Calendar 2014の171日目です。

今日はLispyScriptでQuineを書きました。あんましAltJSのLispを書いてると手抜きと思われそうで嫌なのですが忙しいので許してください‥‥。

LispyScriptは前述の通りAltJSのLispなのですが、モナドの構文があったりするのが特徴かと思います。ただエラーメッセージが分かりにくすぎます。

```console
$ diff quine.ls <(lispy -r quine.ls)
```
