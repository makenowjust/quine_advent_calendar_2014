#Day 71

この記事はQuine Advent Calendar 2014の71日目です。

今日はtcshでQuineを書きました。tcshはcsh系のシェルです。というかこのQuine、tcshでしか動作確認してないけどcshでも動く気がします。

```console
$ diff quine.tcsh <(tcsh quine.tcsh)
```
