# Day 122

この記事はQuine Advent Calendar 2014の122日目です。

今日はCMakeでQuineを書きました。CMakeは実行するとMakefileとかその他色々な環境へのビルドファイルを出力できる奴です。Makefileよりも便利な奴、という認識でいい気がします。適当な解説でごめんなさい。

Quineは変数の最初の展開と次の展開で内容が変わるようにしてごにょごにょしました。出力に手間取った気がします。

```console
$ diff quine.cmake <(cmake -P quine.cmake)
```
