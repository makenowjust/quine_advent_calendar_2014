#Day 49

この記事はQuine Advent Calendar 2014の49日目です。

今日はSchemeでQuineを書きました。SchemeでQuineを書いたことはあったのですが、`write`関数の挙動が違うせい（`(quote x)`を`'x`とするかそのままか）でGaucheでは動くけれどRacketでは動かなかったので書き直しました。最終的にはGaucheとRacket、それとChicken Schemeで動作を確認しています。使っている関数は全てRSR7で定義されているはずなので、まともな処理系なら動くはずです。

```console
$ diff quine.scm <(gosh quine.scm)
$ diff quine.scm <(racket -f quine.scm)
$ diff quine.scm <(csi -s quine.scm)
```
