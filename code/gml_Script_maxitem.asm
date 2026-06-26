.localvar 0 arguments
.localvar 1 i 50

:[0]
pushbltn.v self.argument0
pop.v.v self.item
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [9]

:[2]
pushi.e 0
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_get(argc=3)
push.v self.item
cmp.v.v EQ
bf [4]

:[3]
pushi.e 1
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pushglb.v global.itemmaxx
cmp.v.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [8]

:[6]
pushi.e 1
conv.i.v
ret.v

:[7]
b [9]

:[8]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[9]
pushi.e 0
conv.i.v
ret.v

:[end]