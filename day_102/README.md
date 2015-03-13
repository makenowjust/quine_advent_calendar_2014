#Day 102

[@mametter](https://twitter.com/mametter/) といいます。
[Day 025](https://github.com/MakeNowJust/quine_advent_calendar_2014/tree/master/day_025) の記事を書いた者です。
@make_now_just さんの [HDD が飛んだ](https://github.com/MakeNowJust/quine_advent_calendar_2014/tree/master/day_101)ということで、ピンチヒッターとして 3 日間ほど書かせていただきます。
といっても、過去に書いた Quine の紹介です。すみません。

1 つめは[ちょっと草植えときますね型言語 Grass](http://www.blue.sky.or.jp/grass/doc_ja.html) で書いた Quine です。Grass は `w` と `W` と `v` だけでプログラムを書くという、2008 年頃に流行ったネタ言語です。[id:shinh](http://shinh.hatenablog.com/entries/2008/09/10) さんというすごい人が Grass で Quine を書いたのに触発されて自分も書きました。

ref: [http://d.hatena.ne.jp/ku-ma-me/20080910/p1](http://d.hatena.ne.jp/ku-ma-me/20080910/p1)

で、今動かしてみたら、[Grass の Ruby 版インタプリタ](http://www.blue.sky.or.jp/grass/grass.rb) が Ruby 2.0 に対応してなくて動きませんでした。[報告しといた](https://twitter.com/mametter/status/576360260027310080)んで、直るといいですね。

Quine 自体については、生成スクリプトが残っておらず、詳しいことは（Grass 自体どんなんだったかも含めて）ほとんど覚えていませんが、多分 Grass で使う各文字を以下のように対応させてるんだと思います。

* `w`: `vwwwWWWWwwwWwwwWwwwWWWWw`
* `W`: `vwwwWWWWwwwWwwwWwwwWWWWWWw`
* `v`: `vwwwWWWWwwwWwwwWwwwWWWWWw`

なおこの Quine は 9787B ありますが、[id:kikx](http://d.hatena.ne.jp/kikx/) さんというすごい人が [1525B](http://d.hatena.ne.jp/kikx/20080914) にまで縮めています。コード自体は見当たりませんが方法は書いてあるので、暇な人は再現に挑戦するといいと思います。

なんとも中途半端な内容ですが今日はこれで。
