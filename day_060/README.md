#Day 60

この記事はQuine Advent Calendar 2014の60日目です。Quineに対するモチベーションが最近低くてつらいです。

今日はCurryでQuineを書きました。Curryというのは昨日のFregeと同じようにHaskellのような構文のプログラミング言語ですが、Prologのような論理型的な機能も持っていることが特徴です。

具体的には`(1 ? 2) + 3`とかやったりすると`4`と`5`の両方が結果として表示されたり、`a && True where a free`とかすると、`a = True`ときと`a = False`のときについてそれぞれ結果を表示してくれたりします。面白いですね。

ただQuineを書くのに非決定性はいらないので、Quineリポジトリの方に置いたQuineは普通にHaskellのそのものなのですが、ここにあるQuineは無意味に`?`演算子を使って非決定にしています。（PAKCSでは100%左から右に評価するけど）そのせいで実行終了後にエラーを吐くのですが、それはそれで面白いからいいかな、と。

```console
$ pakcs :set v0 :load Quine :eval quine :quit | diff Quine.curry -
ERROR: non-determinism in I/O actions occurred!
```
