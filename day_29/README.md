#Day 29

この記事はQuine Advent Calendarの29日目の記事です。今年も残すところ3日です。今年中は続けていきたいなぁ、この企画。

今日はOccamとOCamlでQuineを書きました。特にこの二つの言語に共通点はありません。強いていうなら名前が似ているような気がします。

なぜこの二つの言語なのかというと単純で、つまり[Quineリポジトリ](https://github.com/MakeNowJust/quine)にOから始まる言語が無かったからです。単純ですね。

OccamはCSPを下敷にした並行プログラミング言語です。かなり昔からあるみたいで、いくつか書籍も出版されているみたいですが、あまり流行らなかったみたいです。Go言語をもっと低級にした感じでしょうか。
構文の都合上、インデントが深くなりやすいです。あと文字列のエスケープに`*`を使う言語って初めて見たんですけど、何かベースはあるんでしょうか？
処理系は[KRoC](https://github.com/concurrency/kroc)というものを使いました。

OCamlは言わずもがなOCamlです。なんで今まで書いたなかったのか不思議なくらいメジャーな言語です。
Quineの構造は意図的にF#に似た感じにしました。`printf`のために型推論が特殊化されていて最高に美しくないです（`printf`の第一引数に文字列変数が渡せないのはそのためです）。Indexed Monad使いたい。

```console
$ kroc quine.occ
$ ./quine | diff quine.occ -
$ diff quine.ml <(ocaml quine.ml)
```
