# Day 166

この記事はQuine Advent Calendar 2014の166日目です。長岡にいます。

今日は「C言語→C++」の二重Quineと「Ruby→Python」の二重QuineのPolyglot Quineです。言葉で説明してもよく分からないのでコマンドで説明すると、

```console
$ ruby dual-poly.c | python | diff dual-poly.c -
$ gcc -o a dual-poly.c && ./a > a.cc && g++ -std=c++11 -o a a.cc && ./a | diff dual-poly.c -
```

ということです。急いで作ったので出来は粗いです。許してください。

本当ならいつも通り今までに書いたことのない言語でQuineを書くつもりだったのですが、長岡のホテルの部屋に無線LANが無く（ボクは和室だが洋室にはあるらしい）処理系を落とせそうにないので諦めました。
