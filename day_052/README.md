#Day 52

この記事はQuine Advent Calendar 2014の52日目の記事です。今日からちょっと出掛けるのでQuineを書いている暇なんかあるのか不安です。

今日はRuyb -> Python -> JavaScriptの三重Quineです。何となく書き始めたら一瞬で書けました。メジャーな言語ですしね。まあ過去に10重Quineまで書いたことあるんですけど‥‥。

```console
$ ruby quine.js.py.rb | python | node | diff quine.js.py.rb -
```
