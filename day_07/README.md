#Day 07

[Quine Advent Calendar](http://www.adventar.org/calendars/645)の7日目です。

4日目に書いたCommon LispのQuineをformat関数のみにしてみました。Common Lispのformat関数強すぎると思います。

（でもこれって昔書いたRustのQuineと同じ形のような‥‥）

```
$ diff quine.lisp <(sbcl --script quine.lisp)
```
