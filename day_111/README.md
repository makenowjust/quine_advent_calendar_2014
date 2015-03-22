# Day 111

この記事はQuine Advent Calendar 2014の111日目です。微妙に日付けオーバーしてしまいましたが許してください！

今日はFlogScriptでQuineを書きました。FlogScriptはGolfScript同様Code Golf向けに設計された言語です。FlogというのはGoldを逆さにして綴ったものですね。  
で、特徴なのですが、この言語はドキュメントがまったく無いです。どうしてそんな言語をshinhさんは拾ってくるのか不思議なのですがあなごるにはこの言語が登録されているのです。ボクはそれでこの言語を知りました。

ちなみにこのFlogScript、おそらくPHP 5.2向けに書かれていて、最近のPHPじゃ素直に動いてくれないです。そのせいで今日はこんなに時間が遅れることになったのですが、最終的にはDockerで適当なPHP 5.2の入ったイメージ（[一つだけ](https://registry.hub.docker.com/u/vectorface/php5.2/)ありました）を落としてきて書いた感じです。どうにかなるものですね。

Quineは適当です。絶対もっと縮むと思うんだけどPHP読むの面倒なので勘弁してください。

```console
$ php FlogScript.php quine.flog | diff quine.flog -
```
