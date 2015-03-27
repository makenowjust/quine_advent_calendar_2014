# Day 116

この記事はQuine Advent Calendar 2014の116日目です。

今日はKiteでQuineを書きました。正確には今日も、ですね。<del>[Kite](http://www.kite-language.org)は公式ページは一見落ちているように見えますが、[ファイル一覧](http://www.kite-language.org/files)や[ドキュメント](http://www.kite-language.org/docs)は閲覧可能なので安心してください。多分ApacheからNginxに移行した際にミスって放置したんじゃないかと思います。  </del>Issue立てたら一瞬で直されました。  
言語の特徴としては、`|`でメソッドを呼ぶようになっていて（個人的には）読みやすかったり、MapやReduceの演算子が組み込まれていたりするところがあります。ただ、演算子の優先順位は微妙な気がします。

Quineはとりあえず`<-`（Map演算子）を使ってみたりしました。

```console
$ diff quine.kt <(kite quine.kt)
```
