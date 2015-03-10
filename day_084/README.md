# Day 84

この記事はQuine Advent Calendar 2014の84日目です。

今日はSQLite3でQuineを書きました。SQLite3は多分チューリング完全じゃないんでちょっとアレなんですが、Quineなら案外書けました。

Quineは`printf`に`%Q`というフォーマットがあって、それを使うとクオートされたものになるみたいなのでそれを使いました。テーブルの無いSQLとはなんなのか。

```console
$ sqlite3 < quine.sql | diff quine.sql -
```
