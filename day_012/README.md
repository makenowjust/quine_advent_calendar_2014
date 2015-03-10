#Day 12

[Quine Advent Calendar](http://www.adventar.org/calendars/645)の12日目です。

これでやっと折り返し地点ですね。まさか続くとは……。

今回はgnuplotでのQuineです。2パターン書いていて、1つはかなり適当な`printf`を使ったQuineで、もう1つはgnuplotの唯一のループ構文だった`reread`文を使ってループしたQuineです。`reread`というのは文字通り最初からコードを読み直す制御コマンドですね。これを使うとエラーメッセージ中のソースコードの行がズレます。アホなんでしょうか。

```
$ gnuplot quine.printf.gnuplot |& diff quine.printf.gnuplot -
$ diff quine.reread.gnuplot <(gnuplot quine.reread.gnuplot)
```
