.localvar 0 arguments
.localvar 1 i 53

:[0]
pushbltn.v self.argument0
pop.v.v self.goul
push.l 2
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v LT
bf [18]

:[1]
push.l 2
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 7
cmp.i.v LT
bt [4]

:[2]
push.l 14
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bt [4]

:[3]
push.v self.goul
push.l 0
cmp.l.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [16]

:[6]
push.l 11
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.tier
cmp.v.v GT
bf [14]

:[7]
push.l 2
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
add.i.v
pop.v.v local.i

:[8]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [12]

:[9]
push.l 11
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]global.tier
cmp.v.v LT
bf [11]

:[10]
pushloc.v local.i
pushi.e 1
sub.i.v
ret.v

:[11]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [8]

:[12]
pushi.e 7
conv.i.v
ret.v

:[13]
b [15]

:[14]
push.l 2
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
ret.v

:[15]
b [17]

:[16]
pushi.e 7
conv.i.v
ret.v

:[17]
b [end]

:[18]
pushi.e 8
conv.i.v
ret.v

:[end]