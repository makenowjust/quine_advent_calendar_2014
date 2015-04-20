# Day 140

この記事はQuine Advent Calendar 2014の140日目です。140日も続いてるんですね、これ。

今日はMoveでQuineを書きました。MoveはAltJSです。最近AltJSばっかな気がしますが気のせいです、きっと。‥‥嘘です。[coffee-scriptのリポジトリにAltJSのまとめ](https://github.com/jashkenas/coffeescript/wiki/List-of-languages-that-compile-to-JS)みたいなのがあったので、それを参照しているせいです。

Quineは`JSON.stringify`です。MoveはKaffeineとかと比べると素直な感じでとっつきやすい気がします。

```console
$ diff quine.mv <(move quine.mv)
```
