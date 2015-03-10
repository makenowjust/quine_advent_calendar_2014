#Day 68

この記事はQuine Advent Calendar 2014の68日目です。

今日はConvergeで書いたQuineです。Convergeというのは昨日のGenieと同じくインデントでブロックを表現するタイプの言語で、Pythonに似ていながらもIconのようなジェネレーターやMetaLuaやTemplate Haskellの影響を受けたコンパイル時実行機能があります。動的型付けですがコンパイルすると実行ファイルができるのも面白いです。
面白いなぁと思いましたがライブラリがちょっと足りない気がするのが残念でした。

Quineは`Strings::format`でがんばりました。この`format`関数はC言語の`printf`風に使えるのですが、独自実装していたため`%s`と`%d%、`%f`しか使えないのが辛かったです。

```console
$ diff quine.cv <(converge quine.cv)
```
