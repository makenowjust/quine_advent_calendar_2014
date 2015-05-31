# -*- coding: utf-8 -*-
s=u"""

この記事はQuine Advent Calendar 2014の181日目になります。なんだかとても疲れてるので今日は新しい言語でQuineは書きません。

二日前になりますが、200言語でQuineを書きました。

[https://github.com/MakeNowJust/quine/releases/tag/200:embed:cite]

====

200言語もよく書いたものだな、と思います。色々な言語があったのですが、特に印象に残ったのはoocみたいな意外と実用できそうな言語でしょうか。他には、諸々のAltJSでしょうか。ただ、AltJSでQuineを書くのは、大抵<code>JSON.stringify</code>が強すぎるのでアレだと思います。

AltJSと言えば、昨日の「ECMAScript6策定目前！ ECMA262読書会・1周年記念会」でLT発表をしてきました。

[https://ecma262reading.doorkeeper.jp/events/25174:embed:cite]

「AltES6 Introduction」というタイトルです。

<iframe src="//www.slideshare.net/slideshow/embed_code/key/pyuFVxe3fCFLdC" width="425" height="355" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/KitsuneTsuyusato/altes6-introduction" title="AltES6 Introduction" target="_blank">AltES6 Introduction</a> </strong> from <strong><a href="//www.slideshare.net/KitsuneTsuyusato" target="_blank">Kitsune Tsuyusato</a></strong> </div>

ただ、あまり上手く話せなくて迷惑かけたな、という感じがするので、もう少し上手く話せるようになるといいな、と思います。

それと、誘ってくださったい id:TAKESAKO さんありがとうございます。楽しい集まりでした。

それでは、こんな中身のあまり無い記事に目を通してくださったみなさんに感謝を。そして、Quine Advent Calendarはもう少し続けるつもりです。まだやり残した言語があるので‥‥。

""";f=u'# -*- coding: utf-8 -*-{3}s=u"""{0}""";f=u{2}{1}{2};f=f.format(s,f,chr(39),chr(10));import sys;print(f if sys.hexversion>=0x3000000 else f.encode("utf-8"))';f=f.format(s,f,chr(39),chr(10));import sys;print(f if sys.hexversion>=0x3000000 else f.encode("utf-8"))
