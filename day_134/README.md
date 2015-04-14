# Day 134

この記事はQuine Advent Calendar 2014の134日目です。

今日はLogoで書いたQuineです。Logoは簡単な命令で亀が動かせるプログラミング言語です。Lispの影響を受けているので反クオートっぽい構文があったりして面白かったです。

QuineはUCBLogoで動きます。UCBLogoはXが起動していなくても動く優秀なLogo処理系でした。

```console
$ diff quine.lg <(logo quine.lg)
```
