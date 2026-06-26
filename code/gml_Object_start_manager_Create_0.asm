.localvar 0 arguments
.localvar 1 i 561
.localvar 2 a 565
.localvar 3 prey 575

:[0]
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.vmode
pushi.e 0
pop.v.i self.weedmode
pushi.e 0
pop.v.i self.needarray
pushi.e 0
pop.v.i self.savespot
push.s ""@150
pop.v.s self.comment
pushi.e 0
pop.v.i global.gotate
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
push.l 4
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 4
conv.l.v
push.l 92
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
pop.v.i self.approval
pushi.e 0
pop.v.i self.clear
pushi.e 0
pop.v.i self.mode
push.s ""@150
pop.v.s self.nuname
pushbltn.v self.room_width
pop.v.v self.ww
pushbltn.v self.room_height
pop.v.v self.wh
push.s "MMMMMMMMMMMMMMM"@2117
conv.s.v
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pop.v.v self.swidth
push.s "M"@265
conv.s.v
call.i string_hash_to_newline(argc=1)
call.i string_height(argc=1)
pop.v.v self.height
push.v self.ww
pushi.e 2
conv.i.d
div.d.v
push.v self.swidth
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 15
sub.i.v
pop.v.v self.box_x1
push.v self.wh
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.box_y1
push.v self.ww
pushi.e 2
conv.i.d
div.d.v
push.v self.swidth
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 15
add.i.v
pop.v.v self.box_x2
push.v self.wh
pushi.e 2
conv.i.d
div.d.v
push.v self.height
add.v.v
pushi.e 30
add.i.v
pop.v.v self.box_y2
push.v self.box_x1
pushi.e 15
add.i.v
pop.v.v self.text_x
push.v self.box_y1
pushi.e 15
add.i.v
pop.v.v self.text_y
pushi.e 4
pushi.e -1
push.l 1
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 1
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 3
pushi.e -1
push.l 1
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 2
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 5
pushi.e -1
push.l 1
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 3
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 4
pushi.e -1
push.l 1
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 4
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 2
pushi.e -1
push.l 1
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 5
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 4
pushi.e -1
push.l 1
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 6
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 3
pushi.e -1
push.l 2
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 1
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 3
pushi.e -1
push.l 2
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 2
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 5
pushi.e -1
push.l 2
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 3
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 6
pushi.e -1
push.l 2
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 4
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 2
pushi.e -1
push.l 2
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 5
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 3
pushi.e -1
push.l 2
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 6
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 5
pushi.e -1
push.l 3
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 1
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 5
pushi.e -1
push.l 3
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 2
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 1
pushi.e -1
push.l 3
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 3
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 1
pushi.e -1
push.l 3
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 4
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 1
pushi.e -1
push.l 3
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 5
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 5
pushi.e -1
push.l 3
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 6
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 4
pushi.e -1
push.l 4
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 1
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 6
pushi.e -1
push.l 4
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 2
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 1
pushi.e -1
push.l 4
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 3
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 6
pushi.e -1
push.l 4
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 4
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 6
pushi.e -1
push.l 4
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 5
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 0
pushi.e -1
push.l 4
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 6
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 2
pushi.e -1
push.l 5
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 1
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 2
pushi.e -1
push.l 5
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 2
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 1
pushi.e -1
push.l 5
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 3
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 6
pushi.e -1
push.l 5
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 4
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 2
pushi.e -1
push.l 5
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 5
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 0
pushi.e -1
push.l 5
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 6
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 4
pushi.e -1
push.l 6
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 1
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 3
pushi.e -1
push.l 6
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 2
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 5
pushi.e -1
push.l 6
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 3
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 0
pushi.e -1
push.l 6
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 4
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 0
pushi.e -1
push.l 6
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 5
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushi.e 0
pushi.e -1
push.l 6
conv.l.i
chkindex.e
push.i 32000
mul.i.i
push.l 6
conv.l.i
chkindex.e
add.i.i
pop.v.i [array]self.headarray
pushglb.v global.continuing
pushi.e 0
cmp.i.v EQ
bf [103]

:[1]
pushi.e 100
pop.v.i self.gain
pushi.e 10
pop.v.i self.gainpts
push.d 0.5
pop.v.d self.gaincut
push.l 0
pop.v.l local.i

:[2]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [87]

:[3]
pushloc.v local.i
push.l 1
cmp.l.v NEQ
bf [86]

:[4]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [84]

:[5]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
push.l 7
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 0
conv.i.v
push.s "stayfit"@369
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[10]
push.s "airscene"@361
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.s "airpaid"@435
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
pushi.e 1
pop.v.i self.hotshit
b [16]

:[15]
pushi.e 0
pop.v.i self.hotshit

:[16]
push.v self.hotshit
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 2
sub.i.v
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[18]
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[20]
push.l 4
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.donutlist
call.i ds_list_find_index(argc=2)
pop.v.v self.donut1
push.l 5
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.donutlist
call.i ds_list_find_index(argc=2)
pop.v.v self.donut2
push.v self.donut1
pushi.e -1
cmp.i.v NEQ
bf [22]

:[21]
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 6
conv.l.v
push.l 58
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
mul.v.v
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
mul.v.v
add.v.v
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
add.i.v
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[22]
push.v self.donut2
pushi.e -1
cmp.i.v NEQ
bf [24]

:[23]
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 6
conv.l.v
push.l 58
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
mul.v.v
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
mul.v.v
add.v.v
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
add.i.v
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[24]
pushi.e 0
pop.v.i local.a

:[25]
pushloc.v local.a
pushi.e 6
cmp.i.v LT
bf [48]

:[26]
push.s "vendslot"@1899
pushloc.v local.a
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
bf [47]

:[27]
push.l 4
conv.l.v
pushi.e -5
pushloc.v local.a
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.vendarr
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 4
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
bt [29]

:[28]
push.l 4
conv.l.v
pushi.e -5
pushloc.v local.a
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.vendarr
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 5
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
b [30]

:[29]
push.e 1

:[30]
bf [32]

:[31]
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 6
conv.l.v
pushi.e -5
pushloc.v local.a
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
push.v [array]global.vendarr
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
mul.v.v
add.v.v
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[32]
push.l 4
conv.l.v
pushi.e -5
pushloc.v local.a
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.vendarr
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 4
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
bt [34]

:[33]
push.l 4
conv.l.v
pushi.e -5
pushloc.v local.a
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.vendarr
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 5
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
b [35]

:[34]
push.e 1

:[35]
bf [37]

:[36]
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 6
conv.l.v
pushi.e -5
pushloc.v local.a
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
push.v [array]global.vendarr
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
mul.v.v
add.v.v
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[37]
push.l 4
conv.l.v
pushi.e -5
pushloc.v local.a
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.vendarr
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 4
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
bt [39]

:[38]
push.l 4
conv.l.v
pushi.e -5
pushloc.v local.a
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.vendarr
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 5
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
b [40]

:[39]
push.e 1

:[40]
bf [42]

:[41]
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 6
conv.l.v
pushi.e -5
pushloc.v local.a
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
push.v [array]global.vendarr
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
mul.v.v
add.v.v
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[42]
push.l 4
conv.l.v
pushi.e -5
pushloc.v local.a
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
push.v [array]global.vendarr
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 4
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
bt [44]

:[43]
push.l 4
conv.l.v
pushi.e -5
pushloc.v local.a
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
push.v [array]global.vendarr
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 5
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
b [45]

:[44]
push.e 1

:[45]
bf [47]

:[46]
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 6
conv.l.v
pushi.e -5
pushloc.v local.a
conv.v.i
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
push.v [array]global.vendarr
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
mul.v.v
add.v.v
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[47]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
b [25]

:[48]
pushi.e 2
conv.i.v
push.l 8
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i ds_exists(argc=2)
conv.v.b
not.b
bf [50]

:[49]
call.i ds_list_create(argc=0)
push.l 8
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[50]
push.l 8
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i ds_list_size(argc=1)
pop.v.v self.listlen
push.v self.listlen
pushi.e -5
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.quantier
cmp.v.v GTE
bf [52]

:[51]
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.d 1.5
mul.d.v
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[52]
pushi.e 0
pop.v.i self.newgain
pushloc.v local.i
call.i trustlvl(argc=1)
pop.v.v self.test
pushloc.v local.i
push.l 0
cmp.l.v NEQ
bf [54]

:[53]
push.v self.newgain
push.v self.gainpts
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
mul.v.v
push.v self.gainpts
push.v self.test
mul.v.v
add.v.v
add.v.v
pop.v.v self.newgain
b [55]

:[54]
push.v self.newgain
push.v self.gainpts
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
mul.v.v
add.v.v
pop.v.v self.newgain

:[55]
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [57]

:[56]
push.v self.gain
push.v self.newgain
pushi.e 3
conv.i.d
div.d.v
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
mul.v.v
call.i floor(argc=1)
add.v.v
pop.v.v self.gain
b [74]

:[57]
push.l 13
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [68]

:[58]
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 7
cmp.i.v LT
bt [61]

:[59]
push.l 14
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bt [61]

:[60]
pushloc.v local.i
push.l 0
cmp.l.v EQ
b [62]

:[61]
push.e 1

:[62]
bf [67]

:[63]
push.s "we're leveling up"@2128
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i show_debug_message(argc=1)
popz.v
push.s "what level before?"@2129
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i show_debug_message(argc=1)
popz.v
pushi.e 0
conv.i.v
push.l 12
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local.i
push.l 0
cmp.l.v EQ
bf [65]

:[64]
push.s "seenmyself"@445
pop.v.s self.scenekey
b [66]

:[65]
push.s "seen"@2131
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
pop.v.v self.scenekey

:[66]
push.v self.gain
push.v self.newgain
push.v self.gaincut
mul.v.v
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
mul.v.v
call.i floor(argc=1)
add.v.v
pop.v.v self.gain
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
add.i.v
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v self.scenekey
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "what level after?"@2132
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i show_debug_message(argc=1)
popz.v

:[67]
b [74]

:[68]
push.v self.gain
push.v self.newgain
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
mul.v.v
add.v.v
pop.v.v self.gain
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pop.v.v self.todayshaul
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pop.v.v self.equip
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 7
cmp.i.v LT
bt [70]

:[69]
pushloc.v local.i
push.l 0
cmp.l.v EQ
b [71]

:[70]
push.e 1

:[71]
bf [74]

:[72]
push.l 12
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.v self.todayshaul
push.v self.equip
mul.v.v
call.i floor(argc=1)
add.v.v
push.l 12
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 12
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.tier
cmp.v.v GTE
bf [74]

:[73]
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
add.i.v
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 12
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "seen"@2131
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
pop.v.v self.scenekey
pushi.e 0
conv.i.v
push.v self.scenekey
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[74]
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v GT
bf [76]

:[75]
pushi.e 8
conv.i.v
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[76]
pushloc.v local.i
push.l 0
cmp.l.v NEQ
bf [79]

:[77]
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.fridgesize
cmp.v.v GTE
bf [79]

:[78]
pushi.e 1
conv.i.v
push.s "canfridge"@370
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[79]
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [81]

:[80]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[81]
pushloc.v local.i
call.i trustlvl(argc=1)
pushi.e 3
cmp.i.v GTE
bf [83]

:[82]
pushloc.v local.i
call.i trustlvl(argc=1)
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.rand
push.v self.rand
push.l 9
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[83]
b [86]

:[84]
pushloc.v local.i
push.l 0
cmp.l.v NEQ
bf [86]

:[85]
pushi.e 0
pop.v.i self.newgain
push.v self.newgain
push.v self.gainpts
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
mul.v.v
add.v.v
pop.v.v self.newgain
pushi.e 1
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.v self.newgain
add.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[86]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[87]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.v self.gain
add.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "brokediet"@38
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [90]

:[88]
pushi.e 1
conv.i.v
push.l 7
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
conv.i.v
push.s "seenChloe"@436
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.v global.chloecounter
push.e 1
add.i.v
pop.v.v global.chloecounter
pushglb.v global.chloecounter
pushi.e 3
cmp.i.v EQ
bf [90]

:[89]
pushi.e 0
pop.v.i global.missedchloe

:[90]
push.l 2
pop.v.l local.i

:[91]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [100]

:[92]
push.s "daily"@2135
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [94]

:[93]
pushi.e 0
conv.i.v
push.v self.keystring
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [95]

:[94]
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
sub.i.v
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[95]
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [97]

:[96]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[97]
push.l 8
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i ds_list_clear(argc=1)
popz.v
push.l 13
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
pushi.e 0
conv.i.v
push.l 13
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[99]
pushi.e 0
conv.i.v
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [91]

:[100]
pushi.e 0
conv.i.v
push.l 11
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 13
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [102]

:[101]
pushi.e 0
conv.i.v
push.l 13
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[102]
push.l 8
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i ds_list_clear(argc=1)
popz.v
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
add.i.v
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_set_post(argc=3)
popz.v

:[103]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 999
cmp.i.v GT
bf [105]

:[104]
pushi.e 999
conv.i.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[105]
pushglb.v global.donutlist
call.i ds_list_clear(argc=1)
popz.v
pushglb.v global.guestlist
call.i ds_list_clear(argc=1)
popz.v
pushi.e 0
pop.v.i global.lunch
pushi.e 0
conv.i.v
pushglb.v global.invent
call.i ds_grid_clear(argc=2)
popz.v
pushi.e 12
pop.v.i global.dailycandy
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [107]

:[106]
pushi.e 0
pop.v.i self.roommode
push.s "firstday"@306
pop.v.s global.dayscene
b [110]

:[107]
pushglb.v global.continuing
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
pushi.e 1
pop.v.i self.roommode
b [110]

:[109]
pushi.e 2
pop.v.i self.roommode
pushi.e 0
pop.v.i global.continuing

:[110]
push.s "firstday"@306
pop.v.s global.custscene
push.s "firstday"@306
pop.v.s global.itscene
push.s "firstday"@306
pop.v.s global.frontscene
push.s "firstday"@306
pop.v.s global.salesscene
call.i ds_list_create(argc=0)
pop.v.v self.tobeeat
call.i ds_list_create(argc=0)
pop.v.v self.eaters
push.l 2
pop.v.l local.i

:[111]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [118]

:[112]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [114]

:[113]
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.fridgesize
cmp.v.v GTE
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
pushloc.v local.i
push.v self.eaters
call.i ds_list_add(argc=2)
popz.v

:[117]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [111]

:[118]
push.v self.eaters
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [153]

:[119]
push.v self.eaters
call.i ds_list_shuffle(argc=1)
popz.v
push.v self.eaters
call.i ds_list_size(argc=1)
pop.v.v self.eatlen
pushi.e 0
pop.v.i local.i

:[120]
pushloc.v local.i
push.v self.eatlen
cmp.v.v LT
bf [153]

:[121]
pushloc.v local.i
push.v self.eaters
call.i ds_list_find_value(argc=2)
pop.v.v self.pred
push.l 2
pop.v.l local.prey

:[122]
pushloc.v local.prey
push.l 10
cmp.l.v LT
bf [152]

:[123]
call.i ds_list_create(argc=0)
pop.v.v self.eatfriends
pushloc.v local.prey
push.v self.pred
cmp.v.v NEQ
bf [130]

:[124]
push.l 1
conv.l.v
pushloc.v local.prey
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring
push.l 2
conv.l.v
push.v self.pred
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
pushloc.v local.prey
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 2
add.i.v
cmp.v.v GT
bt [126]

:[125]
push.l 7
conv.l.v
pushloc.v local.prey
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
b [127]

:[126]
push.e 1

:[127]
bf [130]

:[128]
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [130]

:[129]
pushloc.v local.prey
push.v self.eatfriends
call.i ds_list_add(argc=2)
popz.v

:[130]
push.v self.eatfriends
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [151]

:[131]
push.v self.eatfriends
call.i ds_list_shuffle(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.eatfriends
call.i ds_list_find_value(argc=2)
pop.v.v self.eaten
push.v self.pred
push.l 2
cmp.l.v EQ
bt [133]

:[132]
push.v self.pred
push.l 3
cmp.l.v EQ
b [134]

:[133]
push.e 1

:[134]
bf [136]

:[135]
push.v self.pred
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.prey
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "frontvore"@510
pop.v.s global.frontscene
pushi.e 0
conv.i.v
pushglb.v global.frontscene
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[136]
push.v self.pred
push.l 7
cmp.l.v EQ
bt [138]

:[137]
push.v self.pred
push.l 6
cmp.l.v EQ
b [139]

:[138]
push.e 1

:[139]
bf [141]

:[140]
push.v self.pred
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.prey
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "salesvore"@511
pop.v.s global.salesscene
pushi.e 0
conv.i.v
pushglb.v global.salesscene
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[141]
push.v self.pred
push.l 5
cmp.l.v EQ
bt [143]

:[142]
push.v self.pred
push.l 9
cmp.l.v EQ
b [144]

:[143]
push.e 1

:[144]
bf [146]

:[145]
push.v self.pred
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.prey
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "itvore"@512
pop.v.s global.itscene
pushi.e 0
conv.i.v
pushglb.v global.itscene
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[146]
push.v self.pred
push.l 4
cmp.l.v EQ
bt [148]

:[147]
push.v self.pred
push.l 8
cmp.l.v EQ
b [149]

:[148]
push.e 1

:[149]
bf [151]

:[150]
push.v self.pred
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.prey
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "custvore"@513
pop.v.s global.custscene
pushi.e 0
conv.i.v
pushglb.v global.custscene
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[151]
push.v self.eatfriends
call.i ds_list_destroy(argc=1)
popz.v
push.v local.prey
push.e 1
add.i.v
pop.v.v local.prey
b [122]

:[152]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [120]

:[153]
push.v self.tobeeat
call.i ds_list_destroy(argc=1)
popz.v
push.v self.eaters
call.i ds_list_destroy(argc=1)
popz.v
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 8
cmp.i.v GTE
bf [155]

:[154]
push.s "downgradeexpo"@354
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [156]

:[155]
push.e 0

:[156]
bf [158]

:[157]
push.s "downgradeexpo"@354
pop.v.s global.bossscene

:[158]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v EQ
bf [160]

:[159]
push.s "pizzatime"@360
pop.v.s global.dayscene

:[160]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 6
cmp.i.v EQ
bf [162]

:[161]
push.s "airscene"@361
pop.v.s global.dayscene
push.s "airboss1"@362
pop.v.s global.bossscene

:[162]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 7
cmp.i.v EQ
bf [164]

:[163]
push.s "rescueexpo"@353
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [165]

:[164]
push.e 0

:[165]
bf [167]

:[166]
push.s "rescueexpo"@353
pop.v.s global.bossscene

:[167]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 5
cmp.i.v EQ
bf [169]

:[168]
push.s "cakescene"@366
pop.v.s global.dayscene

:[169]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 4
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [171]

:[170]
push.s "icecreamman"@368
pop.v.s global.dayscene

:[171]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 11
cmp.i.v GTE
bf [174]

:[172]
push.s "canfridge"@370
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [174]

:[173]
push.s "fridgescene"@346
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [175]

:[174]
push.e 0

:[175]
bt [180]

:[176]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 13
cmp.i.v GTE
bf [178]

:[177]
push.s "fridgescene"@346
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [179]

:[178]
push.e 0

:[179]
b [181]

:[180]
push.e 1

:[181]
bf [215]

:[182]
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [203]

:[183]
push.s "mysterysolved"@535
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [185]

:[184]
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[185]
push.s "resolvedpearlkathy1"@517
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [187]

:[186]
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[187]
push.s "listened1"@525
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [189]

:[188]
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[189]
push.s "listened2"@527
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [191]

:[190]
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[191]
push.s "erikaandpolly"@537
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [193]

:[192]
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[193]
push.s "erikaandvic"@538
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [195]

:[194]
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[195]
push.s "erikaandkathy"@539
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [197]

:[196]
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[197]
push.s "erikaandkathy"@539
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [199]

:[198]
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[199]
push.s "airboss4"@365
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [201]

:[200]
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[201]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [203]

:[202]
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[203]
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [214]

:[204]
call.i ds_list_create(argc=0)
push.s "guiltylist"@352
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.l 2
pop.v.l local.i

:[205]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [212]

:[206]
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.fridgesize
cmp.v.v GTE
bf [208]

:[207]
pushloc.v local.i
call.i check_level(argc=1)
pushi.e 10
cmp.i.v LT
b [209]

:[208]
push.e 0

:[209]
bf [211]

:[210]
pushloc.v local.i
push.s "guiltylist"@352
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i ds_list_add(argc=2)
popz.v

:[211]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [205]

:[212]
push.s "guiltylist"@352
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [214]

:[213]
push.s "guiltylist"@352
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i ds_list_shuffle(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "guiltylist"@352
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i ds_list_find_value(argc=2)
pop.v.v self.eater
push.v self.eater
push.s "fridgeeater"@374
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[214]
push.s "fridgescene"@346
pop.v.s global.dayscene
push.s "bossfridge"@371
pop.v.s global.bossscene

:[215]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 3
cmp.i.v GTE
bf [219]

:[216]
push.s "erikaandpolly"@537
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [219]

:[217]
push.s "Erikaate"@471
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [219]

:[218]
push.s "Pollyate"@472
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [220]

:[219]
push.e 0

:[220]
bf [222]

:[221]
push.s "erikaandpolly"@537
pop.v.s global.custscene

:[222]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 6
cmp.i.v GTE
bf [226]

:[223]
push.s "erikaandvic"@538
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [226]

:[224]
push.s "Erikaate"@471
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [226]

:[225]
push.s "Victoriaate"@467
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [227]

:[226]
push.e 0

:[227]
bf [229]

:[228]
push.s "erikaandvic"@538
pop.v.s global.custscene

:[229]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 9
cmp.i.v GTE
bf [233]

:[230]
push.s "erikaandkathy"@539
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [233]

:[231]
push.s "Erikaate"@471
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [233]

:[232]
push.s "Kathyate"@473
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [234]

:[233]
push.e 0

:[234]
bf [236]

:[235]
push.s "erikaandkathy"@539
pop.v.s global.salesscene

:[236]
push.l 2
conv.l.v
call.i trustlvl(argc=1)
pushi.e 1
cmp.i.v GTE
bt [238]

:[237]
push.l 8
conv.l.v
call.i trustlvl(argc=1)
pushi.e 1
cmp.i.v GTE
b [239]

:[238]
push.e 1

:[239]
bf [241]

:[240]
push.s "chloestacy1"@524
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [242]

:[241]
push.e 0

:[242]
bf [244]

:[243]
push.s "chloestacy1"@524
pop.v.s global.frontscene

:[244]
push.s "chloestacy1"@524
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [247]

:[245]
push.s "chloestacy2"@526
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [247]

:[246]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 6
cmp.i.v GTE
b [248]

:[247]
push.e 0

:[248]
bf [250]

:[249]
push.s "chloestacy2"@526
pop.v.s global.frontscene

:[250]
push.s "gotcandybowl"@498
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [252]

:[251]
push.s "pearlkathy1"@514
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [253]

:[252]
push.e 0

:[253]
bf [255]

:[254]
push.s "pearlkathy1"@514
pop.v.s global.frontscene

:[255]
push.s "vicjesse1"@528
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [257]

:[256]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 6
cmp.i.v GTE
b [258]

:[257]
push.e 0

:[258]
bf [end]

:[259]
push.s "vicjesse1"@528
pop.v.s global.itscene

:[end]