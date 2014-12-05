#Day 05

[Quine Advent Calendar](http://www.adventar.org/calendars/645)の4日目です。

Scalaで書いたQuineです。`raw`補間子微妙すぎると思います。

実装としては、Javaで書いたのとC言語で書いたのをScalaっぽくしたような感じです。case lambdaとかプレースホルダーとか色々使えたのでまあいいかな、と。

```
$ diff quine.scala <(scala quine.scala)
```
