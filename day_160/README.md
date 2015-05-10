# Day 160

この記事はQuine Advent Calendar 2014の160日目です。

今日はSibilantでQuineを書きました。SibilantはJavaScriptに変換されるLispです。Common Lispっぽくもあるし、Schemeっぽくもあるのですが、どちらかと言えばSchemeっぽい気がします。マクロがいい感じです。

Quineは面倒になったので`JSON.stringify`。というか、リストがJavaScriptの配列になるので、大体都合が悪いです。

```console
$ diff quine.sibilant <(sibilant -x quine.sibilant)
```
