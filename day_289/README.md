# Day 289

この記事はQuine Advent Calendar 2014、もしくは思い付いたときに書くQuine日記の289日目です。

Quine Advent Calendarをはじめたのも289日も前のことなんだな、と少し感慨深い気持ちになっています。それと、mameさんが「[あなたの知らない超絶技巧プログラミングの世界](http://www.amazon.co.jp/dp/4774176435)」という本を出版されました。ボクもレビューに関わらせていただいたので、今度詳しく記事にしたいと思います。mameさんお疲れさまです、おめでとうございます。

それで、今日はBoomerangというプログラミング言語でQuineを書きました。BoomerangはML系のプログラミング言語でテキストやXMLの処理に特化しています。Functional Lensesがプリミティブに組み込まれていて、文字列を取得を複数組み合わせたり組み合わせたもので置換を行なったりすることができます。ML系はやたら苦手意識があるのですが、結構楽しくコードを書けた気がします。

どうしてこんなプログラミング言語を見つけたのかというと、ふと「Lens Programming Language」というワードでググってWikipediaのページが出てきたからです。公式サイトを見るとLinux x64のバイナリが置いてあったので、衝動的にQuineを書いてしまいました。

```console
$ boomerang quine.boom | diff quine.boom -
```
