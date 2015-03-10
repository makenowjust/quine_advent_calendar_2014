#Day 50

この記事はQuine Advent Calendar 2014の50日目の記事です。ついにアドベントカレンダーを二周分してしまいました。いつまで続けられるのやら。

今日はBefungeでQuineを書きました。BefungeはBrainf\*ckに次ぐ有名な難解プログラミング言語で、二次元にソースコードが配置されそれを上下左右に移動しながら実行していくのが特徴です。

インタープリタは[catseye/Befunge-93](https://github.com/catseye/Befunge-93)のものを使いました。

Quineはソースコードを一次元分しか使っていません。どうなんだそれ‥‥。

```console
$ diff quine.bef <(bef -q quine.bef)
```
