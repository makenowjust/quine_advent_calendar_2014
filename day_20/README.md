#day 20

[Quine Advent Calendar](http://www.adventar.org/calendars/645)の20日目です。

今日はVerilog HDLとVHDLでQuineを書きました。ついにプログラミング言語じゃなくなったか‥‥って感じです。

Verilog HDLとVHDLというのはいわゆるハードウェア記述言語で、ソースコードから論理回路を生成したり（論理合成というらしいです）するための言語です。正直よく分かってません。ハードウェアはさっぱりなのです。

ちなみに、このVerilog HDL・VHDLのQuineから論理回路を生成したらそれがQuine回路になるのかというとそんなことはないと思います。そういうものです。

それと、本当はSystemVerilogでも書きたかったのですが、上手い感じに使えそうなシミュレータが見付からなかったので断念しました。`string`型とか面白そうなんだけど‥‥。どなたかUbuntu 14.04 64bitで使いやすそうなSystemVerilogシミュレータを教えてください。

```
$ iverilog -o quine quine.v
$ diff quine.v <(./quine)
$ ghdl -a quine.vhdl && ghdl -e quine
$ diff quine.vhdl <(./quine)
```
