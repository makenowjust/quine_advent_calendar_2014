# Day 137

この記事はQuine Advent Calendar 2014の137日目です。

今日はMammouthでQuineを書きました。MammouthはPHPにコンパイルされるCoffeeScriptっぽい言語です。なぜかJavaScriptで書かれているという特徴があります。

Quineは`printf`に頼ってますが、`printf`の呼び出し方を考えるのがともかくしんどかったです。Mammouthの完成度は今一な感じ。（需要が足りないからでしょうか？）

```console
$ mammouth -c -o . quine.mmt && php quine.php | diff quine.mmt -
```
