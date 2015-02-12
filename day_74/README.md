# Day 74

この記事はQuine Advent Calendar 2014の74日目の記事です。

今日はIdrisで書いたQuineです。Idrisは依存型など高度な型システムを持つHaskell風の構文を持った言語ですが、型システムを主に証明に使うCoq、Agdaとは違い、その力でアプリケーションを書くことを考えて作られています。ATSに似た考え方な気がします。  
また、Haskell風の構文ですが評価戦略は正格評価です。
ついで、C言語に変換されて実行ファイルにコンパイルされるのでそれなりに高速かもしれません。

Quineは毎度のことながら`show`でどうにかしました。なんだかなぁって気もします。

```console
$ idris -o quine quine.idr
$ diff quine.idr <(./quine)
```
