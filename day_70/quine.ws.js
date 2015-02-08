var
fs = require('fs');

// 命令
var
PUSH  = '  ',
POP   = ' \n\n',
DUP   = ' \n ',
SWAP  = ' \n\t',
ADD   = '\t   ',
SUB   = '\t  \t',
CALL  = '\n \t',
LABEL = '\n  ',
JUMP  = '\n \n',
EQ0   = '\n\t ',
RET   = '\n\t\n',
EXIT  = '\n\n\n',
STORE = '\t\t ',
LOAD  = '\t\t\t',
PUTC  = '\t\n  ',
PUTN  = '\t\n \t';

// ラベル
var
count = 0,
code = count--,
reverse = count--,
print_code = count--,
print_code_while = count--,
print_code_end = count--,
print_code_data = count--,
print_code_data_while = count--,
print_code_data_end = count--,
print_code_data_space = count--,
print_code_data_tab = count--,
print_code_data_print = count--;

var
src = [
  // ヒープの1,2,3に' ', '\t', '\n'を格納
  PUSH, _(1),
  PUSH, _(' '),
  STORE,
  PUSH, _(2),
  PUSH, _('\t'),
  STORE,
  PUSH, _(3),
  PUSH, _('\n'),
  STORE,
  // コードを出力
  CALL, _(code),
  CALL, _(print_code),

  // codeラベルの内容を出力
  // 「LABEL, _(code), PUSH, _(0)」の文字列を逆順にしたもの
  PUSH, _(0),
  PUSH, _(3 /*'\n'*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(3 /*'\n'*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(3 /*'\n'*/),
  CALL, _(print_code),
  // codeラベルのPUSHしていく部分を出力
  CALL, _(reverse),
  CALL, _(print_code_data),
  // 「RET」の文字列を逆順にしたもの
  PUSH, _(0),
  PUSH, _(3),
  PUSH, _(2),
  PUSH, _(3),
  CALL, _(print_code),

  // reverseラベルの内容を出力
  // 「LABEL, _(reverse), PUSH, _(0)」の文字列を逆順にしたもの
  PUSH, _(0),
  PUSH, _(3 /*'\n'*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(3 /*'\n'*/),
  PUSH, _(2 /*'\t'*/),
  PUSH, _(2 /*'\t'*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(1 /*' '*/),
  PUSH, _(3 /*'\n'*/),
  CALL, _(print_code),
  // reverseラベルのPUSHしていく部分を出力
  CALL, _(code),
  CALL, _(print_code_data),
  // 「RET」を文字列を逆順にしたもの
  PUSH, _(0),
  PUSH, _(3),
  PUSH, _(2),
  PUSH, _(3),
  CALL, _(print_code),

  EXIT,

  // 関数
  // function print_code:
  LABEL, _(print_code),
  LABEL, _(print_code_while),
  DUP,
  EQ0, _(print_code_end),
  LOAD,
  PUTC,
  JUMP, _(print_code_while),
  LABEL, _(print_code_end),
  POP,
  RET,

  // function print_code_data)
  LABEL, _(print_code_data),
  LABEL, _(print_code_data_while),
  DUP,
  EQ0, _(print_code_data_end),
  // ヒープの0に現在のコードを格納
  PUSH, _(0),
  SWAP,
  STORE,
  // 「PUSH, xxx」の末尾の逆順
  PUSH, _(0),
  PUSH, _(3 /*'\n'*/),
  // ヒープの0を取り出す
  PUSH, _(0),
  LOAD,
  // 「PUSH, xxx」のxxxの部分
  PUSH, _(1),
  SUB,
  DUP,
  EQ0, _(print_code_data_space),
  PUSH, _(1),
  SUB,
  EQ0, _(print_code_data_tab),
  PUSH, _(2),
  PUSH, _(2),
  JUMP, _(print_code_data_print),
  LABEL, _(print_code_data_space),
  POP,
  PUSH, _(2),
  JUMP, _(print_code_data_print),
  LABEL, _(print_code_data_tab),
  PUSH, _(1),
  PUSH, _(2),
  LABEL, _(print_code_data_print),
  // 「PUSH, xxx」のPUSHとxの最初の部分
  PUSH, _(1),
  PUSH, _(1),
  PUSH, _(1),
  // 出力
  CALL, _(print_code),
  JUMP, _(print_code_data_while),
  LABEL, _(print_code_data_end),
  POP,
  RET,
].join('');

src += [
  LABEL, _(code),
  PUSH, _(0),
  push(src.split('').reverse()),
  RET,
  LABEL, _(reverse),
  PUSH, _(0),
  push(src.split('')),
  RET,
].join('');

fs.writeFileSync('quine.ws', src);

function _(n) {
  if (typeof n === 'string') {
    n = n.charCodeAt(0);
  }

  var
  sign = '0';
  if (n < 0) {
    sign = '1';
    n *= -1;
  }

  return (sign + n.toString(2)).split('').reduce(function (s, n) {
    return s + [' ', '\t'][n];
  }, '') + '\n';
}

function push(s) {
  return s.map(function (c) {
    return [
      PUSH, _({
        ' ': 1,
        '\t': 2,
        '\n': 3,
      }[c])
    ].join('');
  }).join('');
}
