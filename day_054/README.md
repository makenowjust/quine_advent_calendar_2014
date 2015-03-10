#Day 54

この記事はQuine Advent Calendar 2014の54日目です。とても眠いです。

今日はNekoでQuineを書きました。NekoというのはHaxeと同じところで作られたプログラミング言語のバーチャルマシンです。VMなのですが、高級言語も持っていて、そっちを使いました。ちなみに名前のNekoは日本語の「猫」の意味らしいです。アイコンは虎にしか見えませんが。

Quineは変な感じになってますが、特にNekoらしいことはしてなくて、インデックスを数えるのが辛かったくらいです。

```console
$ nekoc quine.neko && neko quine.n | diff quine.neko -
```
