# Day 135

この記事はQuine Advent Calendar 2014の135日目です。

今日はCirruScriptでQuineを書きました。Cirruというインデントによるコードの表現の構文があって、それのJavaScriptに変換されるものがCirruScriptっぽいです。何言ってるか分かりにくいことこの上ないので各自ググってください。

Quineは`JSON.stringify`様々ですが、文字列リテラルの構文が少々独特な気がします。

```console
$ diff quine.cirru <(crs quine.cirru)
```
