s=[
"from\tu      rllib.re          qu                                                      es                                  ",
"t\timport\turlopen\nf          ro        m\thtml.pars    er\tim    port\t  HTMLParser  \ncl      ass\t A(HTMLParser        ):        \n\tdef\t_",
"_init__(s):\n\t\tsupe        r().__      init__();s.ts=    [];s    .tf=    -0;s.cs=[]  ;s.c      f=0\n \tdef\thandl      e_star      ttag(s,t,a):",
"\n\t\ta=dict(a)\n\t\t        if\t'c      lass      'in\t   a:\n    \t\t    \tif        'mod-c    alen      darL          ist-ti      tle'==    a[",
"'class']:s.tf=1\n\t\t        \telif      'mod      -cal    enda    rLis    t-co        untDow    n'==      a['c          lass']      :s.cf=    1\n",
"\t\tif\ts.tf==1\tand\t       t=='a'      :s.t      f=2\n\t   \tif\ts.      cf==1\tand  \tt=='st  rong      ':s.          cf=2\n      \tdef\thandl",
"e_data(s,d):\n \t\tif      \ts.  tf==    2:\n      \t\t\t    s.ts.app      end(d);s.t  f=0\n\t\tif\ts      .cf=        =2:\n \t\t    \ts.cf=0;s",
".cs.append(      d)\n      prin  t('s    =[')      \nfo      r\tl\tin      \ts:        prin  t('\"'+l      .rep        lace  ('\\    \\',  '\\",
"\\\\\\').re      plac      e('\\ n',r    '\\n      ').r      eplace('      \\t'        ,r'\\ t').repl      ace(        '\"'  ,r'\\   \"')  +'",
"\",')\npr          in    t(\"];exec('    '.jo    in(c.r        epla        ce('        \\x2    0','')      \\x2      0for\\x20c\\x2  0in\\x  20",
"s))\")\nh=url  open('    http://www.adv  entar.org/')          .rea        d().decode  ('ut      f-8'      );p=      A();p.feed(h);  p.clos  e()\n",
"for\ti\tin\tr  ange(l  en(p.t      s)):  print('#              \t{}        \t-\t{}'.f  orma        t(      p.ts      [i],      p.cs    [i      ]))\n",
];exec(''.join(c.replace(' ','') for c in s))
