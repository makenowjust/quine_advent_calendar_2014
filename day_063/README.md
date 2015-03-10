#Day 63

この記事はQuine Advent Calendar 2014の63日目です。とうとう如月に入ってしまいました。

今日は[Cobra](http://cobra-language.com)でQuineを書きました。CobraはPythonと同じくオフサイド・ルール（インデントによる構造化）を採用したプログラミング言語で、.NET上で動きます。確か英語版Wikipediaでオフサイド・ルールの言語の一覧を見ているときに見つけたような気がします。  
本当なら今日はShenでQuineを書くつもりだったのですが、何だか上手く動いてくれず、その後Euphoriaをインストールしても使い方がよく分からなかったので諦めてCobraにした次第です。すごく疲れました。

Quineはraw文字リテラルと文字列の補間をいい感じに使いました。インデントはスペース4文字かタブのどちらかに固定だったので、タブの方が短かく書けそうだったのでそっちにしました。

```console
$ diff quine.cobra <(cobra quine.cobra)
```
