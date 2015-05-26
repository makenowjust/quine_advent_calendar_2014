# Day 176

この記事はQuine Advent Calendar 2014の176日目です。

今日はIokeでQuineを書きました。IokeはIoとかSmalltalk、Ruby、Lispなんかの影響を受けたIoっぽいJVMで動く言語です。Smalltalk系言語らしく独自の世界観を持っているのが特徴な気がします。`mimic`って何だよ。

Quineは`inspect`メソッドがあるので簡単だったのですが、どうやったらIokeらしくなるのか30秒くらい考えて、面倒になって適当に書きました。そもそも初めて触れる言語で、その言語っぽいコードを書こうなんて無理な話です。

```console
$ diff quine.ik <(ioke quine.ik)
```
