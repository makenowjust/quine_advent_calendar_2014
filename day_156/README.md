# Day 156

この記事はQuine Advent Calendar 2014の156日目です。

Quineリポジトリの方にあったNimrodのQuineを、今はNimrodではなくNimというらしいので名前を直しておきました。ついでに、`import`の部分もインデントできるみたいなのでしておきました。

最近何かとNimの情報を見る気がします。あとRustも（RustのQuineが動くかもチェックしないとな‥）

```console
$ nim c quine.nim && ./quine | diff quine.nim -
```
