# Day 174

この記事はQuine Advent Calendar 2014の174日目です。

今日はMiroでQuineを書きました。Miroは昨日書いたWortelのreimplementationディレクトリに入っていたものなのですけど、どう考えても別言語なので入れました。Wortelほど面白みはなかったです。

相変わらずnpmパッケージにはなっていない。

```console
$ node Miro.js quine.miro -r | diff quine.miro -
```
