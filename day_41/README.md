#Day 41

この記事はQuine Advent Calendar 2014の41日目です。

昨日がXtendだったので今日はCeylonです。CeylonもXtendと同じくNext Javaな言語で、XtendよりもJavaっぽくないです。それと、Pikeみたいな感じのUnion Typeというものがあって、例えば`String|Character`みたいな型を表現できたりします。ぶっちゃけバリアントが組み込みでサポートされてるだけなんですが、現実的に使うのであればこんなもので十分なのかな。
他にも色々な機能があって、nullに対するガードはもちろん（これは先のUnion Typeのシンタックスシュガーとして表現されています）、内包表記とか文字列の補間とかわりと何でもあります。普通に便利な気がするので機会があったら使うかもしれません。

QuineはとりあえずCeylonの機能を色々と使ってみました。おかげで結構カオスなことになっている気がします。特に`"\{QUOTATION MARK}"`みたいな文字列のエスケープは秀逸だと思います。Unicodeで定義されている名前が使えるわけなんですが、これを使えば:sushi:が`"\{SUSHI}"`で表示したりできます。

あと気になることがあるとすれば、`printAll`の引数`values`が、どのような型推論を得て`{Anything*}`型にマッチしているのかが不安です。恐らくは`{String|Character*}`だと思うのですが、このような推論ってぶっちゃけ危険だと思うので、いずれこのコードは動かなくなるかもしれません。まあそのときは22行目の`c`を`c.string`にすればいいんですが。

```console
$ ceylon compile -s . quine.ceylon
$ ceylon run default | diff quine.ceylon -
```
