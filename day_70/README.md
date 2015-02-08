#Day 70

この記事はQuine Advent Calendar 2014の70日目です。昨日は[株式会社ニャンパスさんに行ってきました](http://makenowjust.hatenablog.com/entry/2015/02/08/004522)。

今日はWhitespaceでQuineを書きました。Whitespaceはスペースとタブと改行という空白文字だけでプログラミングする難解言語です。それなりに有名な気がします。意外とサブルーチンとかもあって高級なので（というかアセンブリ言語）、プログラムを書くのはそこまで難しくなかったです。

インタープリタは[hostilefork/whitespacers](https://github.com/hostilefork/whitespacers)にあるものでもどうぞ。（ただ、Haskellのはそのままだと上手くコンパイルできないので少し手を入れる必要があります）

Quineは適当にJavaScriptで生成しました。手書きはエディタの都合的に難しいです。

```console
$ diff quine.ws <(wspace quine.ws)
```
