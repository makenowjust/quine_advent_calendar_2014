#Day 106

@mametter です。2 日ほど失念してしまいました。すみません。今日が自分の最後の記事です。

画像プログラミング言語 [Piet](http://www.dangermouse.net/esoteric/piet.html) で書いた Quine です。

詳しいことはやっぱり覚えてませんが、[昔の発表資料](http://www.slideshare.net/mametter/quine-10290517/53)に簡単なことは書いてあります。

動作確認は [npiet](http://www.bertnase.de/npiet/) でやってます。

    $ diff quine.gif <(./npiet quine.gif)
