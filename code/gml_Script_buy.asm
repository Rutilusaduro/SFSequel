.localvar 0 arguments
.localvar 1 i 43

:[0]
pushbltn.v self.argument0
pop.v.v self.purchase
push.v self.purchase
call.i maxitem(argc=1)
pop.v.v self.maxcheck
push.v self.maxcheck
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 0
conv.i.v
ret.v

:[2]
b [end]

:[3]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 2
conv.l.v
push.v self.purchase
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
cmp.v.v LT
bf [6]

:[4]
pushi.e 0
conv.i.v
ret.v

:[5]
b [end]

:[6]
pushi.e 0
pop.v.i local.i

:[7]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [14]

:[8]
pushi.e 0
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_get(argc=3)
push.v self.purchase
cmp.v.v EQ
bf [11]

:[9]
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 7
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 2
conv.l.v
push.v self.purchase
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
sub.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pushi.e 1
add.i.v
pushi.e 1
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_set_post(argc=4)
popz.v
pushi.e 1
conv.i.v
ret.v

:[10]
b [13]

:[11]
pushi.e 0
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 7
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 2
conv.l.v
push.v self.purchase
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
sub.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.v self.purchase
pushi.e 0
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
conv.i.v
ret.v

:[13]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [7]

:[14]
pushi.e 0
conv.i.v
ret.v

:[end]