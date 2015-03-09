# Day 98

この記事はQuine Advent Calendar 2014の98日目です。

今日はShenでQuineを書きました。ShenはLisp方言の一つで、Qiの後継だったと思います。明示的な静的型付けや論理型っぽい機能を持っていて、色々な処理系が開発されているのが特徴です。ロゴが「神」なために神言語とも呼ばれます。

Quineは`output`関数の整形機能で簡単にやりました。

```console
$ chibi-scheme -Rshen.runner quine.shen | diff quine.shen -
```
