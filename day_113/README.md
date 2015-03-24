# Day 113

この記事はQuine Advent Calendar 2014の112日目です。

今日はSquirrelでQuineを書きました。Squirrelは組み込み向けのプログラミング言語で、ゲーム開発などで使われているようです。Luaに比べてC++的で、つっかかりやすい気はします。それとライブラリのビルドがとても早かったです。拡張子が`.nut`というのも面白いですね。

Quineは適当に`format`を使いました。

```console
$ diff quine.nut <(sq quine.nut)
```
