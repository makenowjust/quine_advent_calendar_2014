f=function (){console['log']('f='+
f.toString()+';f()');d=new Date();
n=d.getDate();s=new Date(d['getFu'
+'llYear'](),d.getMonth(),1)['get'
+'Day']();l=new Date(d['getFullYe'
+'ar'](),d.getMonth()+1,0)['getDa'
+'te']();for(d=1,i=0;d<=l;i++){for
(w=[ ],j=0;j<7;j++){x=n===d&&(i!==
0||j>=s)?'[':'\40';w.push('\40'+x+
('\40\40'+(i===0&& j<s||d>l?'':d++
))['s' +'lice'](-2)+(x==='\x5b'?''
+']':' '));};d;console.log('/*'+w.
join([])+'*/');}/*2014/12/2*/};f()
