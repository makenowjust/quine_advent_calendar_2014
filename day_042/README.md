#Day 42

この記事はQuine Advent Calendar 2014の42日目です。ゲームやりたいんですがやる時間が確保できなくてちょっと辛いです。

昨日がCeylonだったので今日はKotlinにしました。KotlinというのはIntelliJ IDEA等の一連のIDE群で有名なJetBrain社が開発しているNext Javaな言語です。
個人的に面白いと思ったのは、拡張関数（Extension Function）がラムダとしても扱えることでしょうか。これを使うとスコープがゲシュタルト崩壊して楽しそうです。

ただ、今回のQuineはあまりそういった機能が使わずに、普通に複数行文字列リテラルと`format`（これは拡張メソッドですが）でやりきりました。色々考えたけど型推論、というか型のヒエラルキーが微妙で、色々と上手くいかなかったので断念しました。

ああ、それとコンパイラの`kotlinc`は名前詐欺すぎます。そのまま実行したらREPLが起動するとか‥‥。もはや何がコンパイラなんだ‥‥。

```console
$ kotlinc -script quine.kts | diff quine.kts -
```
