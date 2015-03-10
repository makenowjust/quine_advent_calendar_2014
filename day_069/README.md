#Day 69

この記事はQuine Advent Calendar 2014の69日目です。Operaをアプデしたら再描画処理がおかしいっぽくてタグを切り替える度にOperaが崩壊します。Chromeも同様なのでどうしたものやら‥‥。Firefoxは大丈夫だけど嫌いだ。Awesomeを3.5にアップデートすればいいのだろうか。

今日はAliceMLでQuineを書きました。AliceMLはSMLをベースにした関数型言語で、並列処理などが扱いやすいのが特徴です。個人的には`lazy`と`exttype`が気になってます。  
`lazy`は評価を遅延させるけれど型はいじらないという構文で、言語ではなくプログラマ自身が評価戦略を選択できるというものです。  
`exttype`はExtensible Typesを定義する構文で、これを使うと動的型付けのようなことができるようになります。

Quineの方は`Print.printVal`という関数があったのでそれをいい感じに使いました。

```console
$ alicec quine.aml && alicerun quine.alc | diff quine.aml -
```
