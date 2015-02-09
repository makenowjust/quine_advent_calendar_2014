#Day 72

この記事はQuine Advent Calendar 2014の72日目です。

今日はDylanで書いたQuineです。Dylanは昔、AppleがNewtonのために開発したプログラミング言語なのですが、開発に時間がかかりすぎたことやその他色々な理由から実際に採用されることはなかったという経歴を持ちます。今で言うなら上手くいかなかったSwiftという感じでしょうか。  
CLOS風のオブジェクト指向やマクロ等を持ちながら、Algol系の文法という当時としてはかなり挑戦的な言語だったのではないかと思います。

処理系は、最近開発が活発のような[OpenDylan](http://opendylan.org/)を利用しました。

Dylanはどうもプロジェクトという単位にしてライブラリの構成などを明示しないと上手く動かせない言語のようで、非常に微妙なのですが、プロジェクト毎入れておきます。

```console
$ cd quine
$ dylan-compiler -build quine.lid
$ ./quine | diff quine.dylan -
```
