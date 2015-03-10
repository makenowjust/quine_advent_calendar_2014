# Day 76

この記事はQuine Advent Calendar 2014の76日目です。

今日はなぜかインストールしていたBeanShellで書いたQuineです。BeanShellはJVM上で動くJavaっぽいプログラミング言語で、アプリケーションに組み込むことを目的に開発されています。 
ぶっちゃけJavaなので学習コストは低いのですが、ぶっちゃけJavaなので他のJVMスクリプト言語（JRuby、Groovyとか）に比べて組み込むメリットが少なく感じます。

Quineは`eval`でごにょごにょしました。バックスラッシュのエスケープが多すぎて何度途中で投げ出しそうになったことか‥。

```console
$ diff quine.bsh <(bsh quine.bsh)
```
