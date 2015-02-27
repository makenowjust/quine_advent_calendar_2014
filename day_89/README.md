# Day 89

この記事はQuine Advent Calendar 2014の89日目です。さくらシンクロニシティが無事に発売しました。ボクはそれをプレイするほうが大事なので今後数日の記事はてきとーになると思います。

今日はWindowsのBatch Fileで書いたQuineです。WindowsのBatch Fileはいつか書こうと思っていたのですがあきらかに面倒そうだったのでやってませんでした。実際のところ面倒だったです。`cmd.exe`はドキュメントされてない仕様が多すぎます。やれやれ。

Quineはがんばったら書けました。よくこんな方法思い付いたものです。

```powershell
PS> Compare-Object $(Get-Content quine.bat) $(cmd.exe /c quine.bat)
```
