# Day 130

この記事はQuine Advent Calendar 2014の130日目です。

今日はCocoでQuineを書きました。CocoはCoffeeScriptから派生した言語で、LiveScriptの元にもなっているらしいです。正直、魔改造されすぎていてCoffeeScriptの原型が言うほど無い気がします。

Quineは`for of`ループとかパイプ演算子（`|>`）とかまあ色々使いました。よくがんばったものだと思います。

```console
$ diff quine.co <(coco quine.co)
```
