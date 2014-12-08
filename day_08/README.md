#Day 08

[Quine Advent Calendar 2014](http://www.adventar.org/calendars/645)の8日目です。

JavaScriptのソースコードをQuineにしてしまうジェネレーターを作りました。Quineじゃねーじゃんとか言わないで‥。

ちなみに`quine.js`は`generater.js`に自身のソースコードを飲ませて吐き出したソースコードです。

```
$ touch empty.js
$ node generater.js empty.js > empty.quine.js
$ diff empry.quine.js <(node empty.quine.js)
```
