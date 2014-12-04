#Day 01

[Quine Advent Calendar](http://www.adventar.org/calendars/645)の1日目です。

思い付きでアドベントカレンダーをはじめてしまいました。12月24日まで続けられるかまったく自信がありませんが、がんばってみたいと思います。

1日目の今日は、いたって普通の文字AA Quineです。「Advent Calendar」という文字列を`banner`コマンドで作って、そこにソースを載っけました。思っていたよりも`banner`が出力する文字が細くて困りましたが、そんなに書くのに時間はなかったと思います。

```
$ diff quine.rb <(ruby quine.rb)
```
