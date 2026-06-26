.localvar 0 arguments

:[0]
pushi.e 3
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[2]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
pushi.e 6
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[4]
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.vsel
pushi.e 0
pop.v.i self.keystring
pushi.e 0
pop.v.i self.savespot
push.s "defaultvend"@389
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
push.s "vendslot"@1899
push.v self.vsel
pushi.e 1
add.i.v
call.i string(argc=1)
add.v.s
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [end]

:[6]
push.v self.vsel
push.e 1
add.i.v
pop.v.v self.vsel
push.v self.vsel
pushi.e 6
cmp.i.v GTE
bf [8]

:[7]
pushi.e 0
pop.v.i self.vsel

:[8]
push.s "vendslot"@1899
push.v self.vsel
pushi.e 1
add.i.v
call.i string(argc=1)
add.v.s
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [6]

:[end]