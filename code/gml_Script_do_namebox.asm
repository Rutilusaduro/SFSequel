.localvar 0 arguments

:[0]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[2]
push.v self.namearray
call.i is_array(argc=1)
conv.v.b
bf [end]

:[3]
pushi.e -1
pushglb.v global.line
conv.v.i
push.v [array]self.namearray
pop.v.v global.boxname

:[end]