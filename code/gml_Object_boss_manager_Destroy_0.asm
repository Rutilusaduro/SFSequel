.localvar 0 arguments

:[0]
pushi.e 39
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 7
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[2]
pushi.e 0
pop.v.i global.bossnotif
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v

:[end]