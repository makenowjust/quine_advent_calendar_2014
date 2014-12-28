#Day 28

この記事はQuine Advent Calendarの28日目の記事です。

今日はみんな大好きjqでQuineを書いてみました。jqというのはアレですね、JSONに対するAWKみたいなコマンドです。え、プログラミング言語なのか、って？　ちゃんと証明しました。

[みんな大好きjqがチューリング完全だってこと証明してみた - Qiita](http://qiita.com/make_now_just/items/1b3b26b115089191e9a1)

jqはプログラミング言語としてかなり面白い部類に入ると思います。喩えるなら、現代版のIcon言語ってところでしょうか。この2つの言語にはかなり近しいものがあります。

```console
$ jq -r -n -f quine.jq | diff quine.jq -
```
