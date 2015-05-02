# Day 153

この記事はQuine Advent Calendar 2014の153日目です。

昔なでしこで書いたQuineがミスってたので修正しました。あのときはちょうどHDDが飛んだときだったので仕方ないですね。許してください。

```powershell
PS> diff $(cat .\quine.nako) $(cnako .\quine.nako)
```
