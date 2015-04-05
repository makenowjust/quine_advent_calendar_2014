# Day 125

この記事はQuine Advent Calendar 2014の125日目です。QuineリポジトリをRedditに晒したら、一晩の間にGitHubのスターが23くらい増えて38になっていました。ついでにIssueとかPull Requestも来ていて震えています。

そんなわけで、今日はPureScriptでQuineを書きました。IsseuでPureScriptでQuine書かない？　と言われたので書いてみた感じです。なんとなくWebでの使用を前提にコンパイルされるのかと思って敬遠していました。

PureScriptはHaskellっぽいAltJSです。Extensibile Effectsをベースにしていて、副作用を選択するイメージで使えるんじゃないかと思います。

Quineは適当に`show`しました。

```console
$ psc quine.purs --main=Main | node | diff quine.purs -
```
