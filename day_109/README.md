# Day 109

この記事はQuine Advent Calendar 2014の109日目です。

今日はTeaでQuineを書きました。TeaはJVM上で動くスクリプト言語で、TclやSchemeの影響を受けているそうです。実際に使ってみると確かにそんな感じで、構文はTclっぽいけど中身はSchemeという、かなり奥の深いものになっています。

それと、Demiのときにも思いましたがJVM言語は動かすのが何だかんだ言って楽です。そういうところがJVM言語の好きなところなんだなと思います。

Quineは`str-fmt`を使いました。これはJavaの`java.text.MessageFormat`クラスを呼び出しているらしいです。

```console
$ diff quine.tea <(tsh quine.tea)
```
