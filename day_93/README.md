# Day 93

この記事はQuine Advent Calendar 2014の93日目の記事です。

今日はLushで書いたQuineです。LushというのはこれもまたLisp方言の一つで（世の中には一体いくつのLisp方言があるというのか‥）、オブジェクト指向だったりGUIだったりが特徴っぽいです。あまりよく分かってません。

Quineは`printf`でごにょごにょした感じです。LushはLisp方言にしては珍しく、改行をエスケープして表示してくれる（Lispは文字列リテラルを直接改行する文化がある）ので書きやすかった感じはします。

```console
$ diff quine.lsh <(lush quine.lsh)
```
