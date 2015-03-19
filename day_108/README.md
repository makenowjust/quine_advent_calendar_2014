# Day 108

この記事はQuine Advent Calendar 2014の108日目です。煩悩の数だけこのAdvent Calendarは続きましたが、このAdvent Calendarが終わらない限りボクの煩悩は尽き無いでしょう、多分。

今日はFabcyでQuineを書きました。FancyはRubyの実装の一つであるRubiniusのVMの上で動くプログラミング言語で、RubyとSmalltalkっぽいです。

この言語はビルドに本気で苦労しました。`rbenv`でRubiniusをインストールして、それでビルドしたのですが、どうしても上手くいかないのでTravisCIのログを見ながら、それと同じ環境を揃えたりしてビルドした次第です。動いたときは喜びも一入といった感じでしたが、その数十秒後にQuineを書き上げたときには「ボクは一体何をやってるんだ」と愕然とした記憶があります。一つのQuineのために2日間、10時間以上費しています。

Quineはもう本当に考えずに書きました。ベースがRubyなので難しいはずがないですね。

```console
$ diff quine.fy <(fancy quine.fy)
```
