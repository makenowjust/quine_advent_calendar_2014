# Day 139

この記事はQuine Advent Calendar 2014の139日目です。

今日はJackでQuineを書きました。JackはJavaScript上に実装されたプログラミング言語です。AltJSではないです。ES6 Proxiesみたいな機能があったりして面白いのですが、微妙にJavaScriptと相互利用し辛いのが難点かもしれません。

Quineは割と普通です。`inspect`とかあったのですが、使うと色付きで出力されてしまうので諦めました。

```console
$ diff quine.jack <(jack quine.jack)
```
