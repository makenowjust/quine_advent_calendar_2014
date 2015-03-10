#Day 26

この記事はQuine Advent Calendarの26日目の記事です。ボクの気力の続く限りこのアドベントカレンダーは続いていきます。

今日はC#、F#、VB.NETという3言語でQuineを書きました。MS謹製.NET言語たちです。

C#とVB.NETについてはアルゴリズムはどちらも同じですが、F#は無意味に`fun`を使ったりして不思議な感じになっています。`printfn`の第一引数に変数を受け付けてくれないのが悪いのです。`%A`書式指定みたいなのは大好きなんだけどなぁ。（OCamlの`Printf`モジュールと同じような実装になってるんですね）

```console
$ gmcs quine.cs && mono quine.exe | diff quine.cs -
$ fsharpc quine.fs && mono quine.exe | diff quine.fs -
$ vbnc quine.cd && mono quine.exe | diff quine.vb -
```
