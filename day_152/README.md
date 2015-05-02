# Day 152

この記事はQuine Advent Calendar 2014の152日目です。

今日はNode.jsでQuineを書きました。Node.jsはファイルを実行するときに、`(function (exports, require, module, __filename, __dirname) { ... }`というコードで囲って実行するので、`arguments.callee`を使ってソースコード自身を取得することができます。ふと思い付いたので書いてみました。

```console
$ diff quine.node.js <(node quine.node.js)
```
