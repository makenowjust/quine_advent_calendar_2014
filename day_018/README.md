#Day 18

[Quine Advent Calendar](http://www.adventar.org/calendars/645)の18日目です。

Tcl/Tkで書きました。

コマンドラインで動くのは、何となく`format`コマンドを使ったものと`eval`コマンドを使ったものと、両方書いてみました。

Tkを使ったGUIな奴は、実行するとボタンだけのウインドウが出てきて、それをクリックすると文字が表示されていく、というものにしました。クリック面倒すぎます。

```
$ diff quine.format.tcl <(tclsh quine.format.tcl)
$ diff quine.eval.tcl <(tclsh quine.eval.tcl)
$ wish quine.gui.tcl | diff quine.gui.tcl -
