# Day 162

この記事はQuine Advent Calendar 2014の162日目です。

今日はColaでQuineを書きました。Colaはコンパイルされると.Net上で動くプログラミング言語で、C#+αといった感じです。正規表現の構文やらがあります。

Quineはよくある感じです。ただ、`foreach`を二重にするとバグるので、仕方なく関数を分けています。

```powershell
PS> colac -console .\quine.cola
PS> diff $(cat .\quine.cola) $(.\quine.exe)
```
