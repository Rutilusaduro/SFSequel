.localvar 0 arguments
.localvar 1 i 27

:[0]
pushbltn.v self.argument0
pop.v.v self.gift
pushbltn.v self.argument1
pop.v.v self.goul
pushglb.v global.goldonly
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [10]

:[3]
pushi.e 0
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_get(argc=3)
push.v self.gift
cmp.v.v EQ
bf [9]

:[4]
pushi.e 1
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v GT
bf [6]

:[5]
pushi.e 1
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_set_post(argc=4)
popz.v
b [9]

:[6]
pushloc.v local.i
pushi.e 4
cmp.i.v NEQ
bf [8]

:[7]
pushi.e 0
conv.i.v
pushloc.v local.i
pushi.e 1
add.i.v
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pushi.e 0
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
conv.i.v
pushloc.v local.i
pushi.e 1
add.i.v
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pushi.e 1
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_set(argc=4)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
pushloc.v local.i
pushi.e 4
cmp.i.v EQ
bf [7]

:[8]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushglb.v global.invent
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
pushglb.v global.invent
call.i ds_grid_set(argc=4)
popz.v
b [10]

:[9]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[10]
push.l 6
conv.l.v
push.v self.gift
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
pop.v.v self.gain
push.v self.goul
push.l 2
cmp.l.v EQ
bf [12]

:[11]
push.s "brokediet"@38
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 0
pop.v.i self.gain

:[15]
pushi.e 0
pop.v.i self.past
pushglb.v global.giving
pushi.e 1
cmp.i.v EQ
bf [19]

:[16]
push.v self.gift
push.l 8
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i ds_list_find_index(argc=2)
pop.v.v self.past
push.v self.past
pushi.e -1
cmp.i.v NEQ
bf [18]

:[17]
push.v self.gain
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.gain

:[18]
push.v self.gift
push.l 8
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i ds_list_add(argc=2)
popz.v

:[19]
push.v self.gift
push.l 10
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
bf [22]

:[20]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
push.l 11
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.v self.gain
pushi.e 2
mul.i.v
call.i floor(argc=1)
add.v.v
push.l 11
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.goul
call.i check_level(argc=1)
popz.v
push.l 3
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 2
add.i.v
push.l 3
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 4
conv.i.v
ret.v

:[21]
b [end]

:[22]
push.l 4
conv.l.v
push.v self.gift
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 4
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
bt [26]

:[23]
push.l 4
conv.l.v
push.v self.gift
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 5
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
bt [26]

:[24]
push.l 5
conv.l.v
push.v self.gift
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 4
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
bt [26]

:[25]
push.l 5
conv.l.v
push.v self.gift
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 5
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
b [27]

:[26]
push.e 1

:[27]
bf [35]

:[28]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
push.v self.gain
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.l 11
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
add.i.v
push.l 11
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [31]

:[30]
push.l 11
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.v self.gain
push.d 1.5
mul.d.v
call.i floor(argc=1)
add.v.v
push.l 11
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[31]
push.v self.goul
call.i check_level(argc=1)
popz.v
push.v self.past
pushi.e -1
cmp.i.v EQ
bf [33]

:[32]
push.l 3
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 2
add.i.v
push.l 3
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[33]
pushi.e 3
conv.i.v
ret.v

:[34]
b [end]

:[35]
push.l 4
conv.l.v
push.v self.gift
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 6
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
bt [37]

:[36]
push.l 5
conv.l.v
push.v self.gift
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 6
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [45]

:[39]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
push.l 3
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
sub.i.v
push.l 3
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_set_post(argc=4)
popz.v
push.l 11
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.v self.gain
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
push.l 11
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.past
pushi.e -1
cmp.i.v NEQ
bf [41]

:[40]
push.l 3
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
sub.i.v
push.l 3
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_set_post(argc=4)
popz.v

:[41]
push.l 3
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [43]

:[42]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[43]
push.v self.goul
call.i check_level(argc=1)
popz.v
pushi.e 1
conv.i.v
ret.v

:[44]
b [end]

:[45]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
push.l 11
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.v self.gain
add.v.v
push.l 11
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.goul
call.i check_level(argc=1)
popz.v
push.l 4
conv.l.v
push.v self.gift
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 7
cmp.l.v EQ
bt [47]

:[46]
push.l 5
conv.l.v
push.v self.gift
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 7
cmp.l.v EQ
b [48]

:[47]
push.e 1

:[48]
bf [51]

:[49]
pushi.e 0
conv.i.v
ret.v

:[50]
b [end]

:[51]
pushi.e 2
conv.i.v
ret.v

:[end]