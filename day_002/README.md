#Day 02

[Quine Advent Calendar](http://www.adventar.org/calendars/645)の2日目です。

実はパソコンを学校に置いていってしまったので、書くのが1日遅れたのは秘密です。せめて3日くらいが続けたかったなぁ。

2日目は一応、カレンダーQuineとでも言っておきましょうか。実行すると、ソースコードに加えて現在の月のカレンダーを表示する、というものです。ついでに、今日の日付の部分を`[]`で囲みます。よって、
一日ごとに出力の結果が変わってしまうのですが、まあ面白ければいいんです！

```
$ node quine.js
$ diff <(node quine.js) <(node quine.js | node)
```