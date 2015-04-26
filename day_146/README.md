# Day 146

この記事はQuine Advent Calendar 2014の146日目です。

今日はTaijiでQuineを書きました。TaijiはAltJSの一つです。マクロとかがあって、カスタマイズ可能だそうです。それと、拡張子の`.tj`はTJことTimothy J Fontaine氏に敬意を払っているそうです。

Quineは何か色々できそうなのですが、何せどういう言語なのかよく分からないので適当に書きました。`JSON.stringify`呼べないのでつらかったです。

```console
$ diff quine.tj <(taiji quine.tj)
```
