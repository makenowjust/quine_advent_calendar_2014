# Day 95

この記事はQuine Advent Calendar 2014の95日目です。

今日はSawzallでQuineを書きました。SawzallというのはGoogleがビッグデータ処理のために開発していた（現在は更新されている雰囲気がない）言語です。開発者はRob Pikeだった気がします。

若干ビルドが面倒、というか`unistd.h`をインクルードしていないことが原因のエラーがいくつか出たので適宜それを追加してました。

Quineはformatでがんばる。

```console
$ diff quine.szl <(szl quine.szl)
```
