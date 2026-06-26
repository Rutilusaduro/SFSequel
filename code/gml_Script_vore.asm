.localvar 0 arguments
.localvar 1 weightpts 196

:[0]
pushbltn.v self.argument0
pop.v.v self.vpred
pushbltn.v self.argument1
pop.v.v self.vprey
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.gulp
pushi.e 4
pushi.e -1
pushi.e 1
pop.v.i [array]self.gulp
pushi.e 5
pushi.e -1
pushi.e 2
pop.v.i [array]self.gulp
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.gsound
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e -1
push.v self.gsound
conv.v.i
push.v [array]self.gulp
call.i audio_play_sound(argc=3)
popz.v
push.l 7
conv.l.v
push.v self.vprey
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.l 11
conv.l.v
push.v self.vpred
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.monsterpts
add.v.v
push.l 11
conv.l.v
push.v self.vpred
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [8]

:[2]
pushi.e 0
pop.v.i local.weightpts
push.l 2
conv.l.v
push.v self.vprey
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
push.v self.vprey
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v GTE
bf [5]

:[3]
push.l 2
conv.l.v
push.v self.vprey
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
push.v self.vprey
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
sub.v.v
pop.v.v local.weightpts
pushloc.v local.weightpts
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i local.weightpts

:[5]
push.l 2
conv.l.v
push.v self.vpred
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 7
cmp.i.v LT
bf [7]

:[6]
push.l 2
conv.l.v
push.v self.vpred
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushloc.v local.weightpts
add.v.v
push.l 2
conv.l.v
push.v self.vpred
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[7]
push.l 11
conv.l.v
push.v self.vpred
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
push.v self.vprey
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.monsterpts
mul.v.v
pushglb.v global.monsterpts
add.v.v
add.v.v
push.l 11
conv.l.v
push.v self.vpred
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[8]
push.v self.vpred
call.i check_level(argc=1)
popz.v

:[end]