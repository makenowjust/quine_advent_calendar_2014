# Day 128

この記事はQuine Advent Calendar 2014の128日目です。

今日はJSXでQuineを書きました。JSXというのはDeNAが開発しているAltJSで、コンパイルされたJSの実行速度が高速らしいです。

Quineは`JSON.stringify`で適当に書きました。

```console
$ diff quine.jsx <(jsx -run quine.jsx)
```
