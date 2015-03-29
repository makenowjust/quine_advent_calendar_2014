# Day 118

この記事はQuine Advent Calendar 2014の118日目です。

今日はPostScriptで書いたQuineです。PostScriptはAdobeが開発したページ記述言語で、プリンタの中に組み込まれて、印刷物の整形などをしている（いた？）らしいです。
言語としては普通にスタックベースな感じです。Forthの影響かな、と思ったのですが、どうやらそうでもないらしい。

Quineは素晴らしい命令`==`があったので余裕でした。

```console
$ gs -dNODISPLAY -dBATCH quine.ps | diff quine.ps -
```
