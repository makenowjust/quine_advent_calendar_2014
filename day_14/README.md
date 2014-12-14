#Day 14

[Quine Advent Calendar](http://www.adventar.org/calendars/645)の14日目です。

今日はあまりいいネタが思い付かなかったので普通にPrologでQuineです。SWI-Prologで動作を確認しています。GNU PrologはAPTで入った処理系がバージョン1.3.0だったのでスクリプト的に実行することができず断念。自分でビルドすればいいんだけど‥‥。

最初は普通に`format/2`辺りを使って実装しようかと思ったんだけど、ふと`listing/1`があることを思い出したのでそっちを使って実装。まあPrologっぽいQuineなんじゃないかと思います。

```
$ swipl -qg main -a quine.pro | diff quine.pro -
```
