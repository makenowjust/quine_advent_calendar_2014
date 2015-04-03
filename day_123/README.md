# Day 123

この記事はQuine Advent Calendar 2014の123日目です。Quineリポジトリが150言語達成しました。我ながら色んな言語でQuine書いたなぁと思います。

150言語目のQuineは予定通りGrassにしました。Grassはスタックベースの関数型言語で、`w`と`W`と`v`を使うため草を生やしているように見えるのが特徴です。

スタックをポップする術がないので段々と増えていく草に狂気を感じましたがQuineは書けるみたいです。ただ、インタプリタの速度が遅すぎてRubyで最初実行したとき、結果が出るまで一時間以上かかりました。遅すぎるでしょ‥‥。

```
ruby grass.rb quine.www > quine-out.www  4744.85s user 5.64s system 99% cpu 1:19:13.16 total
```

その後Go言語でインタプリタを書いてやっと8分くらいに縮まりました。それでも遅いけど。

```
./grass quine.www > quine-out.www  502.79s user 13.49s system 104% cpu 8:15.58 total
```

なぜこんなに遅いのかと言うと`output_[Wv]`の中で毎回、各数を作っているせいかもしれません。直すの面倒です。

どうやってQuineしてるのかは生成スクリプトを眺めて考えてください。

```console
$ go build grass.go
$ diff quine.www <(./grass quine.www)
```
