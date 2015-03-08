# Day 97

この記事はQuine Advent Calendar 2014の97日目です。

今日はSephで書いたQuineです。SephはClojureやIokeなどに影響を受けたJVM言語なのだそうです。実装が構想に追い付かないまま放置されていて、sampleディレクトリのファイルの大半が実行できなくてつらかったです。

ビルドもJava8では削除された非推奨のAPIを使っているので、Java7以下にしないとそもそもビルドができません。なんだかなぁ。

Quineは、関数の引数が5しか使えないのでクロージャにしてどうにかしてみた次第です。文字列の中に改行を含められてよかった。つらかった。

```console
$ diff quine.sp <(seph quine.sp)
```
