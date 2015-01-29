%PAKCS1.11 swi6 VARIABLESHARING

:-noSingletonWarnings.
:-noRedefineWarnings.
:-noDiscontiguousWarnings.

:-importModule('Prelude').


:-curryModule('Quine').

%%%%%%%%%%%% function types %%%%%%%%%%%%%%%%%%%
:-multifile functiontype/6.
:-dynamic functiontype/6.
functiontype('Quine.quine',quine,0,'Quine.quine',nofix,'TCons'('Prelude.IO',['TCons'('Prelude.()',[])])).

%%%%%%%%%%%% constructor types %%%%%%%%%%%%%%%%%%%
:-multifile constructortype/6.
:-dynamic constructortype/6.

%%%%%%%%%%%% function definitions %%%%%%%%%%%%%%%%%%%
'Quine.quine'(_G44004,_G44005,_G44006):-freeze(_G44005,'blocked_Quine.quine'(_G44004,_G44005,_G44006)).
'blocked_Quine.quine'(_G46619,_G46622,_G46625):-makeShare(_G44040,_G46657),hnf('Prelude.cond'('Prelude.letrec'(_G46657,['^q','^u','^i','^n','^e',^=,'^p','^u','^t','^S','^t','^r','^ ','^s',^?,'^p','^r','^i','^n','^t','^ ','^s','^ ','^w','^h','^e','^r','^e','^ ','^s',^=]),'Prelude.?'('Prelude.putStr'(_G46657),'Prelude.print'(_G46657))),_G46619,_G46622,_G46625).

:-costCenters(['']).




%%%%% Number of shared variables: 1
