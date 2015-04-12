# Day 132

この記事はQuine Advent Calendar 2014の132日目です。

今日はMiniScriptでQuineを見付けました。MiniScriptはAltJSの一つで、素のJavaScriptよりは短かく書けるっぽいです。適当に「MiniScriptとかあるかな」と思ってググったら見付けた言語なのでよく分かってません。

Quineは`JSON.stringify`様々って感じです。これだからAltJSでやりたくなかったんですね。

```console
$ diff quine.mini <(mini -r quine.mini)
```
