.localvar 0 arguments

:[0]
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[1]
pushi.e 4
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [3]

:[2]
pushbltn.v self.argument0
pop.v.v self.ttype
pushbltn.v self.argument1
pop.v.v self.dest

:[3]
popenv [2]

:[end]