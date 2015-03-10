#Day 66

この記事はQuine Advent Calendar 2014の66日目です。

今日はEmacs LispでQuineを書きました。Emacsは普段使わないのですがLispは分かるのでどうにかなりました。
ただ、Lispを使った開発ならEmacsも使ってもいいのかな、と思います。

Quineは`print`関数で`read`できる形で出力できるので、有効に利用しました。ただ、実行すると最初に空行が入るのがどうにかならないものか‥。

```console
$ emacs -Q --script quine.el | diff quine.el -
```
