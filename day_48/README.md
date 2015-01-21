#Day 48

この記事がQuine Advent Calendar 2014の48日目です。寝すぎました。

あまりQuineと関係ないのですが、昨日Quineを書いたThueのインタープリタをGo言語で書きました。[MakeNowJust/gothue](https://github.com/MakeNowJust/gothue)
Thueは仕様が微妙に曖昧でアレなのですが（コマンドラインオプションについては仕様があるくせに出力に関しては仕様がなかったり）、少なくとも昨日のQuineはちゃんと動くように作ってあります。Go言語が導入された環境ならインストールも簡単なので、暇な人は遊んでみてください。Thue結構面白いです。

ちなみに今日はMirahでQuineを書きました。MirahはJVMのバイトコードにコンパイルされるRuby風のプログラミング言語です。確かJRubyの開発者の一人が「Java書きたくねぇ」って言って片手間に作り初めたプログラミング言語だったような気がします。気になる人はググってみてください。
この言語もNext Javaと言えば確かにそうなのですが、構文がJavaからかけ離れているのでJava以外の言語をやっている人がつっかかりやすいのがいいのかもしれません。静的型付けなんだけど型推論のおかげでほとんどRubyみたいに書けるのは魅力的だと思います。メソッドの実態をマクロにして内部的にはJavaのメソッドを直接呼んだりもできるけどこれはデバッグどうすんだろ‥‥。

Quineは文字列補間でごにょごにょしました。

```console
$ diff quine.mirah <(mirah quine.mirah)
```