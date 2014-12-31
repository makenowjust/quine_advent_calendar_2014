                                 function                                                  q(s){p=
                                /\/\*([^]+)(@@                                       |\*\/)/;//@@@
                                return(s+'@#@#').       match(p)[1].replace(/     |\s+/g,[''][+0]).
                                replace(/\x24/g,'\x20');}eval(s=q(function(){/*s="function$q(s){p=/
                                \\/\\*([^]+)(@@|\\*\\/)/;//@@@return(s+'@#@#').match(p)[1].replace(
                                /|\\s+/g,[''][+0]).replace(/\\x24/g,'\\x20');}eval(s=q(function(){/
                                \*"+s.replace(/$/g,'\x24')+"*\/}))";s="x8z0e8|wez04d|wh7l5h|wz0w|wz
                                0w|wz0w|wz0w|wz0v|wz0x|uz0z02|sz0z06|rz0z08|qz0z0a|qiz09i|qfz0ff|q
                                ez0id|qbb4t59b|qb98q79a|r9a8p989|s8a8p989|5w98q79q|05o8b4t59cfb|9k18
                              r3q93h|36n7r1r8l7|21u8m151m8|z9k5l8|z03az03a|z07ifh|o222iz02|q7lp|u312gu
                            |u512dv|w5234k1f|w8222c171727|yn271727|z01l272627|z07627272627|z0f7272627|z0
                           f7272627|z0f7272627|z0f7272627|z0f7272627|z0e7282637|z0b9373739|z0b5676665|z0l
                          5b6".split('|').map(function(e){return$e.split('').map(function(c,i){if(i%2){r=(
                          s.slice(0,c=parseI                                            nt(c,36))||Array(c
                          +1).join(';'));                                                  s=s.slice(c);}e
                          lse{r=Array(pa                                                     rseInt(c,36)+
                          1).join('$'           );}r                             eturn         $r;}).join(
                          '')}).join(         '\n');co                          nsole.l         og(s);r=re
                           quire;p=p          rocess;i                         f(p.stdou        t.isTTY){
                            rl=r('re          adline')                         .createIn        terface({
     input:p.stdin,output:p.stderr});         m='GitHu                          b$passw         ord:$';rl.question('GitHub
$user                        name:$',           func                             tion(         user){p.stdi               n.on('data'
         ,function(c){c+='';s witch(c)                           {ca                          se'\n':ca   se'\r':case'\x04'
   :p.std                       in.paus                           e                           ();break                     ;defaul
  t                              :p.stder                      r     .                      write('\
                                   033[2K\03                    3[200                     D'+m);}}
                                      );rl.quest                                      ion(m,func
                                          tion(pass){u=r('ur               l').parse('https:
                        //  ap                  i.github.com/gists');u.method='POST';
                          u.auth=                     user+':'+pass;u.headers={
                              'Us er                -Agent':'Octocat$Quine'};req=r
                              ('htt ps             ').request(u,function(res){if(r
                                es.st  atu    sCode!=201){console. error('error!')
                                ;p.exit(  -1  )}res.setEnc oding(' utf8');  data=''
                                  ;res.on('data',function  (chunk) {data+=  chunk;}
                                    );res.on('end',functi  on(){da  ta=JSO  N.parse
                                          (data)  ;consol  e.error  ('crea  te$a$gi
                                                  st:$'+d  ata.htm  l_url)  ;});});
                                                  req.on(  'error'  ,conso  le.erro
                                                  r);req.  write(J  SON.st  ringify
                                                  ({descr  iption:  "Octoc  at$Quin
                                                  e$-$htt  ps://gi  thub.c  om/Make
                                                 NowJust  /octocat  -quine   ",publi
                                              c:true,fi   les:{"o   ctocat.   js":{"con
                                              tent"      :s}}}))      ;req.e      nd();
                                                        })});           }*/}))
