# Day 138

この記事はQuine Advent Calendar 2014の138日目です。

今日はKaffeineでQuineを書きました。KaffeineはAltJSの一種で、CoffeeScriptよりはJavaScriptっぽい感じがします。また、AltJSの中では比較的古いようです。

Kaffeineの変換は結構な謎なプロセスを経ていて、まともに変換されないことがあってすごく微妙でした。また、最新版のnodeでは`path.exists`が存在しないので動かないので注意してください。

```console
$ kaffeine -c quine.k && node quine.js | diff quine.k -
```
