# Day 79

この記事はQuine Advent Calendar 2014の79日目です。

今日はPowerShellでQuineを書きました。PowerShellはMicrosoftがcmd.exe、WSHの置き換えとして開発したシェルでありスクリプト言語です。当然、Windows上の.Netで動きます。
cmd.exe等と比べるとbash等のシェルに似ていて、仕様もはっきりとしていますが、パイプラインの受け渡しなどがオブジェクトになっていることが特徴です。よくできてますが、起動がやや遅いのが弱点な気がします。

Quineはあんまし工夫してません。まあこうやれば書けるよねって。

```powershell
PS> Compare-Object $(Get-Content quine.ps1) $(.\quine.ps1)
```
