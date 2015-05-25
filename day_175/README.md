# Day 175

この記事はQuine Advent Calendar 2014の175日目です。

今日はMochiScriptでQuineを書きました。MochiScriptはAltJSで、クラスとかモジュールとか、RubyをJavaScriptっぽくした感じの構文が特徴です。関数リテラルが面白い気がします。

Quineは、AltJSの実装が単純な文字置換っぽかったので適当に回避しながら`JSON.stringify`しました。

```console
$ ms-parse quine.ms | node | diff quine.ms -
```
