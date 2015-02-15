# Day 77

この記事はQuine Advent Calendar 2014の77日目です。

今日はDemiとPnutsで書いたQuineです。DemiとPnutsはどちらもJavaの黎明期に作られたJVM上で動くスクリプト言語です。どちらもよくできています。
処理系を入手するのがやや難易度が高いのが難点です。PnutsはMavenのセントラルリポジトリから探して落としてくるのがいいでしょう。Demiは<http://shugo.net/jit/20021129.html>から落とせます。  
にしても、90年代にコンパイルしたコードが普通に動くってことを考えるとJVMはかなりすごいんじゃないかと思います。

Quineはどちらも`String.format`を呼び出してがんばりました。

```console
$ java -cp pnuts-1.2.jar pnuts.tools.Main quine.pnuts | diff quine.pnuts -
$ diff quine.dm <(demi quine.dm)
```
