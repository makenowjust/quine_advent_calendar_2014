#Day 57

この記事はQuine Advent Calendar 2014の57日目です。

今日はSwiftでQuineを書きました。Swiftは説明するまでもなく、Appleが公開したObjective-Cに代わるプログラミング言語です。
SwiftはOSXでしか動かないのですが、ボクはOSXを持っていないので知り合いにMBAを貸してもらいQuineを書きました。Quineのために他人からPCを貸してもらうって我ながらアホなんじゃないかと思います。

Quineはまあ普通です。`.debugDescription`という便利メソッド（？）があるおかげです。

```console
$ diff quine.swift <(swiift quine.swift)
```
