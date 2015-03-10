# Day 96

この記事はQuine Advent Calendar 2014の96日目です。

今日はZhpyでQuineを書きました。ZhpyはPythonの予約語等を中国語に置き換えたものです。なぜかAPTにあったので書いてみました。まさか日本語プログラミング言語よりも早く中国語プログラミング言語でQuineを書くはめになるとはな‥。

QuineはPythonのQuineをちょっと変えただけです。最初はまったく同じものを中国語に置き換えただけだったのですが、それだと文字列が`repr`された結果よく分からないエラーを吐いたので（おそらく文字コード関連）あきらめて少し変更しました。

```console
$ diff quine.twpy <(zhpy quine.twpy)
```
