.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v self.actor1
pushbltn.v self.argument1
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
pushbltn.v self.argument1
pop.v.v self.actor2
b [3]

:[2]
pushi.e 0
pop.v.i self.actor2

:[3]
push.v self.actor2
pushi.e 0
cmp.i.v NEQ
bf [17]

:[4]
pushglb.v global.right_body
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [6]

:[5]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[6]
pushglb.v global.left_body
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [10]

:[7]
pushi.e 11
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [9]

:[8]
push.v self.id
pop.v.v global.left_body
pushglb.v global.left_bodx
pop.v.v self.ww
push.v other.actor1
pop.v.v self.me

:[9]
popenv [8]

:[10]
pushglb.v global.right_body
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [16]

:[11]
pushi.e 11
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [15]

:[12]
push.v self.id
pop.v.v global.right_body
pushglb.v global.right_bodx
pop.v.v self.ww
push.v other.actor2
pop.v.v self.me
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
pushglb.v global.left_body
conv.v.i
push.v [stacktop]self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v GTE
bf [14]

:[13]
pushglb.v global.left_body
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
b [15]

:[14]
pushglb.v global.left_body
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[15]
popenv [12]

:[16]
b [end]

:[17]
pushglb.v global.right_body
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[18]
pushglb.v global.right_body
call.i instance_destroy(argc=1)
popz.v
pushglb.v global.left_body
call.i instance_destroy(argc=1)
popz.v
push.s "THERE IS A RIGHT BODY"@71
conv.s.v
call.i show_debug_message(argc=1)
popz.v

:[19]
pushglb.v global.left_body
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[20]
pushi.e 11
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [22]

:[21]
push.v self.id
pop.v.v global.left_body
push.v other.actor1
pop.v.v self.me

:[22]
popenv [21]

:[end]