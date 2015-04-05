# Day 126

この記事がQuine Advent Calendar 2014の126日目です。やっと[rvm-download](https://github.com/garnieretienne/rvm-download)（名前とは裏腹に`rbenv`のプラグイン）に出していたPull Requestがマージされました。わーい。FancyでQuineを書いていたときに作ったので相当前ですね。

今日はPogoScriptでQuineを書きました。PogoScriptはAltJSで、`Promise`とかコールバックをいい感じにフラットにできるみたいです。キャッチコピーの「a programming language for lazy sunday afternoons」というのも素敵ですね。

Quineは普通ですが、一応コールバックを使っています。

```console
$ export NODE_PATH=`npm root -g`
$ diff quine.pogo <(pogo quine.pogo)
```
