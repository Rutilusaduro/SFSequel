.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v self.doing
push.v self.doing
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
pushi.e 5
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[3]
b [end]

:[4]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[5]
pushi.e 5
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[end]