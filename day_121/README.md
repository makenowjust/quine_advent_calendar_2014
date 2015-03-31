# Day 121

この記事はQuine Advent Calendar 2014の121日目らしいです。4月1日なので何か気の利いたことをしたかったのですが何も思い付かなかったので諦めました。ちなみに去年のこの日は[source-map付きでJavaScriptにコンパイルされるBrainf\*ckコンパイラ](https://github.com/MakeNowJust/bf2js)を作っていた気がします。ブラウザでデバッグできるBrainf\*ck‥‥。

今日は月初めということでMoonScriptでQuineを書きました。月初め関係ないですが。MoonScriptはLuaにコンパイルされる言語で、言わばAltJSならぬAltLuaのような言語です。個人的には`with`文が好きですが使ってないです。

Quineは文字列補間と無名関数です。

```console
$ diff quine.moon <(moon quine.moon)
```
