#Day 32

この記事はQuine Advent Calendar 2014の31日目の記事です。

あけましておめでとうございます。2015年になりましたがQuine Advent Calendarは続きます。

今日は[Golo言語](http://golo-lang.org)でQuineを書きました。手抜きですみません。お正月くらいのんびりしたいんです。本当のことを言うとVim ScriptでQuine書こうと思ったのですが、どうがんばっても標準出力に文字列を出力できなかったので諦めました。そのうち`vim`コマンドをラップしたコマンドでも作るかもしれません。

Golo言語というのは、JVM上で動く動的型付けのプログラミング言語で、invokeDynamicを使うことを前提にしているためそれなりの速度が出るんじゃないかと思います。ベンチとか取ったことないけど。ちなみにボクが日本人唯一のコミッタなので、間違いなく日本で一番この言語について詳しいです。Golo言語で何か分からないことがあったらボクに言ってください。

Quineに関しては普通に`format`してるだけ。この`format`というのはJavaの`String.format`なのですが、それをメソッドのように呼び出せているのはaugmentationというGolo言語の機能です。

```console
$ golo golo --files quine.golo | diff quine.golo -
```
