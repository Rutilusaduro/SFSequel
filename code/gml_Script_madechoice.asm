.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.choice
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[2]
call.i io_clear(argc=0)
popz.v

:[end]