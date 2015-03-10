#Day 16

[Quine Advent Calendar](http://www.adventar.org/calendars/645)の16日目です。

今日はEiffelでQuine書きました。例によって何にも工夫してません。Pascalで書いたのとほとんど同じような感じです。

コンパイルは[Eiffel Studio](https://dev.eiffel.com/Main_Page)というやつを使いました。統合開発環境っぽいのですかコマンドラインツールとしてしか使ってません。

```
$ ec quine.e
$ diff quine.e <(./quine)
```
