from swigobject import  *

a = A()


a1 = a_ptr(a)
a2 = a_ptr(a)

if a1.this != a2.this:
  raise RuntimeError
  

lthis = long(a.this)
xstr1 = "%x" % (lthis,)
xstr2 = pointer_str(a)

if xstr1 != xstr2:
  raise RuntimeError

s = str(a.this)
r = repr(a.this)
