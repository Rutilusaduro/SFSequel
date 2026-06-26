.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v self.goul
push.l 2
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 7
cmp.i.v LT
bt [2]

:[1]
push.v self.goul
push.l 0
cmp.l.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [7]

:[4]
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
conv.v.i
push.v [array]global.tier
cmp.v.v GTE
bf [6]

:[5]
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 6
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 1
conv.i.v
push.l 13
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[6]
b [end]

:[7]
push.l 2
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 7
cmp.i.v EQ
bf [9]

:[8]
push.l 14
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 6
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 1
conv.i.v
push.l 13
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[end]