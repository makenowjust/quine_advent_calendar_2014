#Day 59

この記事はQuine Advent Calendar 2014の59日目です。

今日は新しいQuineを書く気力がなかったので、随分前に書いたFregeのQuineにでもしておきます。にしても、FregeのQuineって何だか不思議な感じですよね。Haskellも同様なのですが。HaskellもFregeもQuineも人名から取られていて、そしてそれらは論理学者であり数学者です。これらの著名な人物の名前が並んでいると、何か仰々しさすら感じます。

FregeはJVM上で動くHaskellっぽい感じの言語です。「っぽい感じ」なのでHaskellと完全に同じわけではないのですが、Quineをする分にはHaskellと全く変わらない感じになりました。違いと言えば、JVM上で動くという前提があるために`module`名の指定が必須になっているところでしょうか。
基本的にHaskellと同じ、というのもどうなのかと思いますが、それはそれで言語の特徴であるので良しとしてください。

実行は、特にコマンドが提供されているわけではないので、[frege-repl](https://github.com/Frege/frege-repl)からでも`jar`を落としてきて、直接`jar`を指定して実行してください。

```console
$ java -jar frege-repl.jar frege.compiler.Main quine.fr
$ java -jar frege-repl.jar:. Quine | diff quine.fr -
```
