# Day 167

この記事はQuine Advent Calendar 2014の167日目です。長岡から帰ってきました。あまり何もできなかったのですがやたらと疲れている気がします。

今日は[昨日](https://github.com/MakeNowJust/quine_advent_calendar_2014/tree/master/day_166)のQuineにさらに、「Underload→dc」を追加しました。

これで3言語のPolyglotで、3つのDual Quineなので、それなりに面白くなったかな、と思います。また、昨日のは微妙にPythonもPolyglotに入れようとした痕跡があって微妙だったりしたので修正いれてあります。

それと、Underloadの処理系がいい感じのがなかったのでRubyで作りました。

```console
$ ruby dual-poly.c | python | diff dual-poly.c -
$ gcc -o a dual-poly.c && ./a > a.cc && g++ -std=c++11 -o a dual-poly.c && ./a | diff dual-poly.c -
$ ruby underload.rb dual-poly.c | dc | diff dual-poly.c -
```
