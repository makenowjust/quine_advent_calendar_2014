console.log('(function f(g){console.log("("+f+")("+g+");");g()})(function (){'+require('fs').readFileSync(process.argv[2], 'utf8')+'});');
