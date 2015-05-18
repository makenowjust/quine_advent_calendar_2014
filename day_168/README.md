# Day 168

この記事はQuine Advent Calendar 2014の168日目です。

今日はMoeScriptでQuineを書きました。MoeScriptはAltJSの一つで、ランタイムを内包していて、それを使って動作します。2年くらい前に触れたことがあったのですが、そのころからとくに更新されてなくて少し悲しくなりました。

```console
$ moec quine.moe | node | diff quine.moe -
```
