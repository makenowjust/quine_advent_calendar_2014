# Day 110

この記事はQuine Advent Calendar 2014の110日目です。

今日はGoldScriptでQuineを書きました。GolfScriptは名前の通りCode Goldのために作られたプログラミング言語です。スタック指向のプログラミング言語になっていて、使ってみると分かりますがゴルフのために色々と工夫がされています。

Quineは、もちろん「数値+改行」が最も短いのですがそれじゃ面白くないので、「後の文字列→inspect→複製→eval→結合」としています。なぜinspectした文字列をevalしているのかと言うと、スワップに当てられた文字がバックスラッシュでエスケープが必要だったからです。

```console
$ ruby golfscript.rb quine.gs | diff quine.gs -
```
