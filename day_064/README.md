Day 64
===

この記事はQuine Advent Calendar 2014の64日目です。

今日はEuphoriaでQuineを書きました。Euphoriaは元々は商用のプログラミング言語だったのですが、Version 3.0を皮切りにオープンソース化された、という言語です。型があるんだか無いんだかよく分からない言語です。
EuphoriaとOpenEuphoriaの二つの実装があるのですが、OpenEuphoriaの方が`.deb`ファイルがあったりしてインストールとか色々と楽なので、そちらを使いましょう。

Quineはよく分からないけど`?`でバイト列の表現（Euphoriaでは文字列=バイトの`sequence`）が出力できたので、それと`puts`を使って書きました。`?`がなんなのかよく分かってません。

それと、`.ex`という拡張子はElixirとややこしいです。

```console
$ diff quine.ex <(eui quine.ex)
```
