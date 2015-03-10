#Day 40

この記事はQuine Advent Calendar 2014の40日目です。

今日はXtendでQuineを書いてみました。Xtendはeclipse.orgが開発しているNext Java系の言語（Scala、Ceylom、Kotlinなど）です。この手の言語はQuineが基本的に同じパターンになってしまいそうで嫌だったのですが、書いてみたら意外と面白かったです。
ファイル名とクラス名を一致させなくてもいいって辺り、かなりModernなJavaって感じです。

Xtendはスタンドアロンのコンパイラがなかったので、諦めてMavenプロジェクトを作りました。Self-Containedじゃないのはいけすかないのですが、かと言ってどうしようもなかった（結構試行錯誤した）ので許してください。

```console
$ cd quine
$ mvn -q compile | diff src/main/java/quine/xtend -
```
