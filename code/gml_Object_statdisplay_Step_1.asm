.localvar 0 arguments

:[0]
pushi.e 14
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 7
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]