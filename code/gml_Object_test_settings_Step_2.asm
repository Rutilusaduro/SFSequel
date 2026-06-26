.localvar 0 arguments
.localvar 1 list_save 479
.localvar 2 grid_save 480

:[0]
pushi.e 27
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "FAS_SAVE.ini"@645
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.events
call.i ds_map_write(argc=1)
pop.v.v local.list_save
pushloc.v local.list_save
push.s "Moxie"@634
conv.s.v
push.s "Magic"@635
conv.s.v
call.i ini_write_string(argc=3)
popz.v
pushglb.v global.statgrid
call.i ds_grid_write(argc=1)
pop.v.v local.grid_save
pushloc.v local.grid_save
push.s "Swag"@639
conv.s.v
push.s "Magic"@635
conv.s.v
call.i ini_write_string(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [4]

:[3]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [8]

:[6]
pushi.e 0
pop.v.i self.setstring
push.v self.csel
push.e 1
add.i.v
pop.v.v self.csel
push.v self.csel
push.v self.settingslen
cmp.v.v GTE
bf [8]

:[7]
pushi.e 0
pop.v.i self.csel

:[8]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [10]

:[9]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [14]

:[12]
pushi.e 0
pop.v.i self.setstring
push.v self.csel
push.e 1
sub.i.v
pop.v.v self.csel
push.v self.csel
pushi.e 0
cmp.i.v LT
bf [14]

:[13]
push.v self.settingslen
pushi.e 1
sub.i.v
pop.v.v self.csel

:[14]
push.v self.csel
pushi.e 0
cmp.i.v EQ
bf [22]

:[15]
push.v self.setstring
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i self.setstring
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i string(argc=1)
pop.v.v self.keyboard_string

:[17]
pushbltn.v self.keyboard_string
call.i string_length(argc=1)
pushi.e 3
cmp.i.v GT
bf [19]

:[18]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v self.keyboard_string
call.i string_copy(argc=3)
pop.v.v self.keyboard_string

:[19]
pushbltn.v self.keyboard_string
pop.v.v self.amount
push.v self.amount
push.s ""@150
cmp.s.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.i self.amount

:[21]
push.v self.amount
call.i string_digits(argc=1)
call.i real(argc=1)
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [end]

:[22]
push.v self.csel
pushi.e 1
cmp.i.v EQ
bf [30]

:[23]
push.v self.setstring
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
pop.v.i self.setstring
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i string(argc=1)
pop.v.v self.keyboard_string

:[25]
pushbltn.v self.keyboard_string
call.i string_length(argc=1)
pushi.e 4
cmp.i.v GT
bf [27]

:[26]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v self.keyboard_string
call.i string_copy(argc=3)
pop.v.v self.keyboard_string

:[27]
pushbltn.v self.keyboard_string
pop.v.v self.amount
push.v self.amount
push.s ""@150
cmp.s.v EQ
bf [29]

:[28]
pushi.e 0
pop.v.i self.amount

:[29]
push.v self.amount
call.i string_digits(argc=1)
call.i real(argc=1)
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [end]

:[30]
push.v self.csel
push.v self.starttrust
cmp.v.v GTE
bf [38]

:[31]
push.v self.setstring
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
pop.v.i self.setstring
push.l 3
conv.l.v
pushi.e -1
push.v self.csel
conv.v.i
push.v [array]self.chararray
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
pop.v.v self.keyboard_string

:[33]
pushbltn.v self.keyboard_string
call.i string_length(argc=1)
pushi.e 3
cmp.i.v GT
bf [35]

:[34]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v self.keyboard_string
call.i string_copy(argc=3)
pop.v.v self.keyboard_string

:[35]
pushbltn.v self.keyboard_string
pop.v.v self.amount
push.v self.amount
push.s ""@150
cmp.s.v EQ
bf [37]

:[36]
pushi.e 0
pop.v.i self.amount

:[37]
push.v self.amount
call.i string_digits(argc=1)
call.i real(argc=1)
push.l 3
conv.l.v
pushi.e -1
push.v self.csel
conv.v.i
push.v [array]self.chararray
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [end]

:[38]
push.v self.setstring
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.setstring
push.l 2
conv.l.v
pushi.e -1
push.v self.csel
conv.v.i
push.v [array]self.chararray
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
pop.v.v self.keyboard_string

:[40]
pushbltn.v self.keyboard_string
call.i string_length(argc=1)
pushi.e 3
cmp.i.v GT
bf [42]

:[41]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v self.keyboard_string
call.i string_copy(argc=3)
pop.v.v self.keyboard_string

:[42]
pushbltn.v self.keyboard_string
pop.v.v self.amount
push.v self.amount
push.s ""@150
cmp.s.v EQ
bf [44]

:[43]
pushi.e 0
pop.v.i self.amount

:[44]
push.v self.amount
call.i string_digits(argc=1)
call.i real(argc=1)
push.l 2
conv.l.v
pushi.e -1
push.v self.csel
conv.v.i
push.v [array]self.chararray
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[end]