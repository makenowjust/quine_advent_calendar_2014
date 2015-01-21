class Quine {
  val a = listOf<Quine>().size()
  val b = a.inv().minus()
  val c = b shl b
  val d = b or c
  val e = c times c
  val f = c plus d
  val g = d shl b
  val h = d plus e
  val i = b shl d
  val j = i or b
  val k = f times c
  val l = k times k
  val es = arrayList<String>().join()
  var cs = arrayList<Int>()
  val sp = (d*k+c).toChar()
  fun q(vararg qs: Int) {
    var n = a
    for (q in qs) n=n*k+q
    print(n.toChar())
    cs add n
  }
  fun qprint(c: Int) = println(c.toString().toByteArray().map{((j*k+h)+(it-e*k-i)).toChar().toString()}.join(es+(e*k+e).toChar(),es+sp+sp+(l+k+d).toChar()+(e*k).toChar(),es+(e*k+b).toChar()))
  fun finish() {
    cs forEach { qprint(it) }
    println((l+k+k+f).toChar())
  }
}
fun quine(call: Quine.() -> Unit) {
  val q = Quine()
  q.call()
  q.finish()
}
quine {
  q(j,j)
  q(b,a,i)
  q(j,h)
  q(b,b,f)
  q(b,b,f)
  q(d,c)
  q(i,b)
  q(b,b,h)
  q(b,a,f)
  q(b,b,a)
  q(b,a,b)
  q(d,c)
  q(b,c,d)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(j,h)
  q(d,c)
  q(g,b)
  q(d,c)
  q(b,a,i)
  q(b,a,f)
  q(b,b,f)
  q(b,b,g)
  q(h,j)
  q(b,a,c)
  q(g,a)
  q(i,b)
  q(b,b,h)
  q(b,a,f)
  q(b,b,a)
  q(b,a,b)
  q(g,c)
  q(e,a)
  q(e,b)
  q(e,g)
  q(b,b,f)
  q(b,a,f)
  q(b,c,c)
  q(b,a,b)
  q(e,a)
  q(e,b)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(j,i)
  q(d,c)
  q(g,b)
  q(d,c)
  q(j,h)
  q(e,g)
  q(b,a,f)
  q(b,b,a)
  q(b,b,i)
  q(e,a)
  q(e,b)
  q(e,g)
  q(b,a,j)
  q(b,a,f)
  q(b,b,a)
  q(b,b,h)
  q(b,b,f)
  q(e,a)
  q(e,b)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(j,j)
  q(d,c)
  q(g,b)
  q(d,c)
  q(j,i)
  q(d,c)
  q(b,b,f)
  q(b,a,e)
  q(b,a,i)
  q(d,c)
  q(j,i)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(b,a,a)
  q(d,c)
  q(g,b)
  q(d,c)
  q(j,i)
  q(d,c)
  q(b,b,b)
  q(b,b,e)
  q(d,c)
  q(j,j)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(b,a,b)
  q(d,c)
  q(g,b)
  q(d,c)
  q(j,j)
  q(d,c)
  q(b,b,g)
  q(b,a,f)
  q(b,a,j)
  q(b,a,b)
  q(b,b,f)
  q(d,c)
  q(j,j)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(b,a,c)
  q(d,c)
  q(g,b)
  q(d,c)
  q(j,j)
  q(d,c)
  q(b,b,c)
  q(b,a,i)
  q(b,b,h)
  q(b,b,f)
  q(d,c)
  q(b,a,a)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(b,a,d)
  q(d,c)
  q(g,b)
  q(d,c)
  q(b,a,a)
  q(d,c)
  q(b,b,f)
  q(b,a,e)
  q(b,a,i)
  q(d,c)
  q(j,i)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(b,a,e)
  q(d,c)
  q(g,b)
  q(d,c)
  q(b,a,a)
  q(d,c)
  q(b,b,c)
  q(b,a,i)
  q(b,b,h)
  q(b,b,f)
  q(d,c)
  q(b,a,b)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(b,a,f)
  q(d,c)
  q(g,b)
  q(d,c)
  q(j,i)
  q(d,c)
  q(b,b,f)
  q(b,a,e)
  q(b,a,i)
  q(d,c)
  q(b,a,a)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(b,a,g)
  q(d,c)
  q(g,b)
  q(d,c)
  q(b,a,f)
  q(d,c)
  q(b,b,b)
  q(b,b,e)
  q(d,c)
  q(j,i)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(b,a,h)
  q(d,c)
  q(g,b)
  q(d,c)
  q(b,a,c)
  q(d,c)
  q(b,b,g)
  q(b,a,f)
  q(b,a,j)
  q(b,a,b)
  q(b,b,f)
  q(d,c)
  q(j,j)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(b,a,i)
  q(d,c)
  q(g,b)
  q(d,c)
  q(b,a,h)
  q(d,c)
  q(b,b,g)
  q(b,a,f)
  q(b,a,j)
  q(b,a,b)
  q(b,b,f)
  q(d,c)
  q(b,a,h)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(b,a,b)
  q(b,b,f)
  q(d,c)
  q(g,b)
  q(d,c)
  q(j,h)
  q(b,b,e)
  q(b,b,e)
  q(j,h)
  q(b,c,b)
  q(h,g)
  q(b,a,f)
  q(b,b,f)
  q(b,b,g)
  q(g,a)
  q(i,d)
  q(b,b,g)
  q(b,b,e)
  q(b,a,f)
  q(b,b,a)
  q(b,a,d)
  q(g,c)
  q(e,a)
  q(e,b)
  q(e,g)
  q(b,a,g)
  q(b,b,b)
  q(b,a,f)
  q(b,b,a)
  q(e,a)
  q(e,b)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,b,e)
  q(d,c)
  q(j,j)
  q(b,b,f)
  q(d,c)
  q(g,b)
  q(d,c)
  q(j,h)
  q(b,b,e)
  q(b,b,e)
  q(j,h)
  q(b,c,b)
  q(h,g)
  q(b,a,f)
  q(b,b,f)
  q(b,b,g)
  q(g,a)
  q(h,d)
  q(b,b,a)
  q(b,b,g)
  q(g,c)
  q(e,a)
  q(e,b)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(b,b,f)
  q(b,b,c)
  q(d,c)
  q(g,b)
  q(d,c)
  q(e,a)
  q(b,a,a)
  q(e,c)
  q(b,a,h)
  q(e,d)
  q(j,j)
  q(e,b)
  q(e,g)
  q(b,b,g)
  q(b,b,b)
  q(g,h)
  q(b,a,e)
  q(j,h)
  q(b,b,e)
  q(e,a)
  q(e,b)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,a,c)
  q(b,b,h)
  q(b,b,a)
  q(d,c)
  q(b,b,d)
  q(e,a)
  q(b,b,i)
  q(j,h)
  q(b,b,e)
  q(j,h)
  q(b,b,e)
  q(b,a,d)
  q(d,c)
  q(b,b,d)
  q(b,b,f)
  q(f,i)
  q(d,c)
  q(h,d)
  q(b,b,a)
  q(b,b,g)
  q(e,b)
  q(d,c)
  q(b,c,d)
  q(b,a)
  q(d,c)
  q(d,c)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,b,e)
  q(d,c)
  q(b,b,a)
  q(d,c)
  q(g,b)
  q(d,c)
  q(j,h)
  q(b,a)
  q(d,c)
  q(d,c)
  q(d,c)
  q(d,c)
  q(b,a,c)
  q(b,b,b)
  q(b,b,e)
  q(d,c)
  q(e,a)
  q(b,b,d)
  q(d,c)
  q(b,a,f)
  q(b,b,a)
  q(d,c)
  q(b,b,d)
  q(b,b,f)
  q(e,b)
  q(d,c)
  q(b,b,a)
  q(g,b)
  q(b,b,a)
  q(e,c)
  q(b,a,h)
  q(e,d)
  q(b,b,d)
  q(b,a)
  q(d,c)
  q(d,c)
  q(d,c)
  q(d,c)
  q(b,b,c)
  q(b,b,e)
  q(b,a,f)
  q(b,b,a)
  q(b,b,g)
  q(e,a)
  q(b,b,a)
  q(e,g)
  q(b,b,g)
  q(b,b,b)
  q(g,h)
  q(b,a,e)
  q(j,h)
  q(b,b,e)
  q(e,a)
  q(e,b)
  q(e,b)
  q(b,a)
  q(d,c)
  q(d,c)
  q(d,c)
  q(d,c)
  q(j,j)
  q(b,b,f)
  q(d,c)
  q(j,h)
  q(b,a,a)
  q(b,a,a)
  q(d,c)
  q(b,b,a)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,c,f)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,a,c)
  q(b,b,h)
  q(b,b,a)
  q(d,c)
  q(b,b,d)
  q(b,b,c)
  q(b,b,e)
  q(b,a,f)
  q(b,b,a)
  q(b,b,g)
  q(e,a)
  q(j,j)
  q(f,i)
  q(d,c)
  q(h,d)
  q(b,b,a)
  q(b,b,g)
  q(e,b)
  q(d,c)
  q(g,b)
  q(d,c)
  q(b,b,c)
  q(b,b,e)
  q(b,a,f)
  q(b,b,a)
  q(b,b,g)
  q(b,a,i)
  q(b,b,a)
  q(e,a)
  q(j,j)
  q(e,g)
  q(b,b,g)
  q(b,b,b)
  q(i,d)
  q(b,b,g)
  q(b,b,e)
  q(b,a,f)
  q(b,b,a)
  q(b,a,d)
  q(e,a)
  q(e,b)
  q(e,g)
  q(b,b,g)
  q(b,b,b)
  q(g,g)
  q(b,c,b)
  q(b,b,g)
  q(b,a,b)
  q(g,f)
  q(b,b,e)
  q(b,b,e)
  q(j,h)
  q(b,c,b)
  q(e,a)
  q(e,b)
  q(e,g)
  q(b,a,j)
  q(j,h)
  q(b,b,c)
  q(b,c,d)
  q(e,a)
  q(e,a)
  q(b,a,g)
  q(e,c)
  q(b,a,h)
  q(e,d)
  q(b,a,e)
  q(e,b)
  q(e,d)
  q(e,a)
  q(b,a,f)
  q(b,b,g)
  q(e,f)
  q(b,a,b)
  q(e,c)
  q(b,a,h)
  q(e,f)
  q(b,a,f)
  q(e,b)
  q(e,b)
  q(e,g)
  q(b,b,g)
  q(b,b,b)
  q(g,h)
  q(b,a,e)
  q(j,h)
  q(b,b,e)
  q(e,a)
  q(e,b)
  q(e,g)
  q(b,b,g)
  q(b,b,b)
  q(i,d)
  q(b,b,g)
  q(b,b,e)
  q(b,a,f)
  q(b,b,a)
  q(b,a,d)
  q(e,a)
  q(e,b)
  q(b,c,f)
  q(e,g)
  q(b,a,g)
  q(b,b,b)
  q(b,a,f)
  q(b,b,a)
  q(e,a)
  q(b,a,b)
  q(b,b,f)
  q(e,d)
  q(e,a)
  q(b,a,b)
  q(e,c)
  q(b,a,h)
  q(e,d)
  q(b,a,b)
  q(e,b)
  q(e,g)
  q(b,b,g)
  q(b,b,b)
  q(g,h)
  q(b,a,e)
  q(j,h)
  q(b,b,e)
  q(e,a)
  q(e,b)
  q(e,e)
  q(b,a,b)
  q(b,b,f)
  q(e,d)
  q(b,b,f)
  q(b,b,c)
  q(e,d)
  q(b,b,f)
  q(b,b,c)
  q(e,d)
  q(e,a)
  q(b,a,i)
  q(e,d)
  q(b,a,h)
  q(e,d)
  q(b,a,a)
  q(e,b)
  q(e,g)
  q(b,b,g)
  q(b,b,b)
  q(g,h)
  q(b,a,e)
  q(j,h)
  q(b,b,e)
  q(e,a)
  q(e,b)
  q(e,d)
  q(e,a)
  q(b,a,b)
  q(e,c)
  q(b,a,h)
  q(e,b)
  q(e,g)
  q(b,b,g)
  q(b,b,b)
  q(g,h)
  q(b,a,e)
  q(j,h)
  q(b,b,e)
  q(e,a)
  q(e,b)
  q(e,e)
  q(b,a,b)
  q(b,b,f)
  q(e,d)
  q(e,a)
  q(b,a,b)
  q(e,c)
  q(b,a,h)
  q(e,d)
  q(j,i)
  q(e,b)
  q(e,g)
  q(b,b,g)
  q(b,b,b)
  q(g,h)
  q(b,a,e)
  q(j,h)
  q(b,b,e)
  q(e,a)
  q(e,b)
  q(e,b)
  q(e,b)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,a,c)
  q(b,b,h)
  q(b,b,a)
  q(d,c)
  q(b,a,c)
  q(b,a,f)
  q(b,b,a)
  q(b,a,f)
  q(b,b,f)
  q(b,a,e)
  q(e,a)
  q(e,b)
  q(d,c)
  q(b,c,d)
  q(b,a)
  q(d,c)
  q(d,c)
  q(d,c)
  q(d,c)
  q(j,j)
  q(b,b,f)
  q(d,c)
  q(b,a,c)
  q(b,b,b)
  q(b,b,e)
  q(g,j)
  q(j,h)
  q(j,j)
  q(b,a,e)
  q(d,c)
  q(b,c,d)
  q(d,c)
  q(b,b,d)
  q(b,b,c)
  q(b,b,e)
  q(b,a,f)
  q(b,b,a)
  q(b,b,g)
  q(e,a)
  q(b,a,f)
  q(b,b,g)
  q(e,b)
  q(d,c)
  q(b,c,f)
  q(b,a)
  q(d,c)
  q(d,c)
  q(d,c)
  q(d,c)
  q(b,b,c)
  q(b,b,e)
  q(b,a,f)
  q(b,b,a)
  q(b,b,g)
  q(b,a,i)
  q(b,b,a)
  q(e,a)
  q(e,a)
  q(b,a,i)
  q(e,d)
  q(b,a,h)
  q(e,d)
  q(b,a,h)
  q(e,d)
  q(b,a,c)
  q(e,b)
  q(e,g)
  q(b,b,g)
  q(b,b,b)
  q(g,h)
  q(b,a,e)
  q(j,h)
  q(b,b,e)
  q(e,a)
  q(e,b)
  q(e,b)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,c,f)
  q(b,a)
  q(b,c,f)
  q(b,a)
  q(b,a,c)
  q(b,b,h)
  q(b,b,a)
  q(d,c)
  q(b,b,d)
  q(b,b,h)
  q(b,a,f)
  q(b,b,a)
  q(b,a,b)
  q(e,a)
  q(j,j)
  q(j,h)
  q(b,a,i)
  q(b,a,i)
  q(f,i)
  q(d,c)
  q(i,b)
  q(b,b,h)
  q(b,a,f)
  q(b,b,a)
  q(b,a,b)
  q(e,g)
  q(e,a)
  q(e,b)
  q(d,c)
  q(e,f)
  q(g,c)
  q(d,c)
  q(i,f)
  q(b,b,a)
  q(b,a,f)
  q(b,b,g)
  q(e,b)
  q(d,c)
  q(b,c,d)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,i)
  q(j,h)
  q(b,a,i)
  q(d,c)
  q(b,b,d)
  q(d,c)
  q(g,b)
  q(d,c)
  q(i,b)
  q(b,b,h)
  q(b,a,f)
  q(b,b,a)
  q(b,a,b)
  q(e,a)
  q(e,b)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,d)
  q(e,g)
  q(j,j)
  q(j,h)
  q(b,a,i)
  q(b,a,i)
  q(e,a)
  q(e,b)
  q(b,a)
  q(d,c)
  q(d,c)
  q(b,b,d)
  q(e,g)
  q(b,a,c)
  q(b,a,f)
  q(b,b,a)
  q(b,a,f)
  q(b,b,f)
  q(b,a,e)
  q(e,a)
  q(e,b)
  q(b,a)
  q(b,c,f)
  q(b,a)
  q(b,b,d)
  q(b,b,h)
  q(b,a,f)
  q(b,b,a)
  q(b,a,b)
  q(d,c)
  q(b,c,d)
  q(b,a)
}