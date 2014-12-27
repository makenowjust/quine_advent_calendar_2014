#Day 27

この記事はQuine Advent Calendarの27日目の記事です。

今日はForthとForthという、連鎖性言語でQuineを書きました。連鎖性言語というのは、すごく大雑把で間違った説明をするなら、スタック指向のプログラミング言語のことです。

Forthはかなり昔からあるプログラミング言語みたいで、最初は文字列の扱いが分からなくて困りました。

JoyはForthに比べると高級で扱いやすそうだな、と思ったのですが、ドキュメントを見たり調べたりして出てきた`put`を使った方法では文字の出力ができず、結局`usrlib.joy`を読んで`putchars`と`putch`を見付けた次第です。わけがわからないよ。

```console
$ gforth -- quine.4th | diff quine.4th -
$ joy quine.joy | diff quine.joy -
```
