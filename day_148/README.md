# Day 148

この記事はQuine Advent Calendar 2014の148日目です。

今日はLiteScriptでQuineを書きました。LiteScriptは文芸的プログラミングをサポートするプログラミング言語で、JavaScriptやC言語に変換されて実行されるらしいです。
また、文芸的プログラミングをサポートしているというだけあって、Markdownにソースコードを書いても実行できます。面白いです。

それと、久し振りに何も手直しなしに`npm install`だけで動いてくれたAltJSな気がします。最近は`npm install`しても動かないのが普通だったので、大体ちょっと手直しを入れたり、Node.jsのバージョンを変えたりしていました。

折角なのでQuineもMarkdownにしています。

```console
$ diff quine.lite.md <(lite -v 0 -r quine.lite.md)
```
