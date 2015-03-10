#Day 67

この記事はQuine Advent Calendar 2014の67日目です。

今日はGenieで書いたQuineです。GenieはValaのコンパイラに付いてくる、オフサイドルールを持ったプログラミング言語です。ぶっちゃけValaよりセンスいいかもしれません。Valaと同じく`valac`でコンパイルできるってどうなんだ‥‥。

Quineは`print`を使って何か綺麗な感じで書けました。`init`ブロックは最近の言語にしては特徴的な気もします。

```console
$ valac quine.gs
$ diff quine.gs <(./quine)
```
