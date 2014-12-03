from	urllib.request	import	urlopen
from	html.parser    import	HTMLParser
class A(HTMLParser):
    def __init__(s):
        super().__init__();s.ts=[];s.tf=-0;s.cs=[];s.cf=0
    def handle_starttag(s,t,a):
        a=dict(a)
        if 'class'in a:
            if'mod-calendarList-title'==a['class']:s.tf=1
            elif'mod-calendarList-countDown'==a['class']:s.cf=1
        if s.tf==1 and t=='a':s.tf=2
        if s.cf==1 and t=='strong':s.cf=2
    def handle_data(s,d):
        if s.tf==2:
            s.ts.append(d);s.tf=0
        if s.cf==2:
            s.cf=0;s.cs.append(d)
print('s=[')
for l in s:print('"'+l.replace('\\','\\\\').replace('\n',r'\n').replace('\t',r'\t').replace('"',r'\"')+'",')
print("];exec(''.join(c.replace('\x20','')\x20for\x20c\x20in\x20s))")
h=urlopen('http://www.adventar.org/').read().decode('utf-8');p=A();p.feed(h);p.close()
for i in range(len(p.ts)):print('# {} - {}'.format(p.ts[i],p.cs[i]))
