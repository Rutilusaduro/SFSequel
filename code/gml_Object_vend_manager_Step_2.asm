.localvar 0 arguments

:[0]
push.s "defaultvend"@389
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [42]

:[1]
push.v self.roommode
pushi.e 0
cmp.i.v EQ
bf [26]

:[2]
push.s "Here's where I can get some snacks from the vending machines if I wanted. Snacks are "@2709
pushglb.v global.snackcost
call.i string(argc=1)
add.v.s
push.s " each. (press TAB or BACKSPACE to leave)"@2710
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
push.s "Anything else? Snacks are "@2711
pushglb.v global.snackcost
call.i string(argc=1)
add.v.s
push.s "g each. (press TAB or BACKSPACE to leave)"@2712
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s "Whoops. Can't get that right now"@2713
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [26]

:[4]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [6]

:[5]
pushi.e 68
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [14]

:[8]
push.v self.vsel
push.e 1
add.i.v
pop.v.v self.vsel
push.v self.vsel
pushi.e 6
cmp.i.v GTE
bf [10]

:[9]
pushi.e 0
pop.v.i self.vsel

:[10]
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
bf [14]

:[11]
push.v self.vsel
push.e 1
add.i.v
pop.v.v self.vsel
push.v self.vsel
pushi.e 6
cmp.i.v GTE
bf [13]

:[12]
pushi.e 0
pop.v.i self.vsel

:[13]
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
bf [11]

:[14]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [16]

:[15]
pushi.e 65
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [24]

:[18]
push.v self.vsel
push.e 1
sub.i.v
pop.v.v self.vsel
push.v self.vsel
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
pushi.e 5
pop.v.i self.vsel

:[20]
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
bf [24]

:[21]
push.v self.vsel
push.e 1
sub.i.v
pop.v.v self.vsel
push.v self.vsel
pushi.e 0
cmp.i.v LT
bf [23]

:[22]
pushi.e 5
pop.v.i self.vsel

:[23]
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
bf [21]

:[24]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.v self.vsel
pop.v.v self.selvend
push.v self.roommode
push.e 1
add.i.v
pop.v.v self.roommode
call.i madechoice(argc=0)
popz.v

:[26]
push.v self.roommode
pushi.e 1
cmp.i.v EQ
bf [41]

:[27]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [30]

:[28]
pushi.e 0
pop.v.i global.line
push.v self.roommode
push.e 1
sub.i.v
pop.v.v self.roommode
call.i madechoice(argc=0)
popz.v
exit.i

:[29]
b [37]

:[30]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [37]

:[31]
pushglb.v global.choice
push.s "Nevermind"@1846
cmp.s.v EQ
bf [34]

:[32]
pushi.e 0
pop.v.i global.line
push.v self.roommode
push.e 1
sub.i.v
pop.v.v self.roommode
call.i madechoice(argc=0)
popz.v
exit.i

:[33]
b [37]

:[34]
pushi.e -5
push.v self.selvend
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.v csel
conv.v.i
chkindex.e
add.i.i
push.v [array]global.vendarr
pop.v.v self.selsnack
push.v csel
pop.v.v self.savespot
push.v self.selsnack
call.i buy(argc=1)
pop.v.v self.buying
push.v self.buying
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 10
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 1
pop.v.i global.line
b [37]

:[36]
pushi.e 2
pop.v.i global.line

:[37]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [41]

:[38]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [40]

:[39]
push.v other.savespot
pop.v.v self.csel
push.l 1
conv.l.v
pushi.e -5
push.v other.selvend
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
pushi.e -1
pushi.e 0
pop.v.v [array]self.choices
push.l 1
conv.l.v
pushi.e -5
push.v other.selvend
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
pushi.e -1
pushi.e 1
pop.v.v [array]self.choices
push.l 1
conv.l.v
pushi.e -5
push.v other.selvend
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
pushi.e -1
pushi.e 2
pop.v.v [array]self.choices
push.l 1
conv.l.v
pushi.e -5
push.v other.selvend
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
pushi.e -1
pushi.e 3
pop.v.v [array]self.choices
push.s "Nevermind"@1846
pushi.e -1
pushi.e 4
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[40]
popenv [39]

:[41]
b [end]

:[42]
push.s "This is where there'd be vending machines and snacks...if we had any. (press TAB or BACKSPACE to leave)"@2716
pop.v.s global.text
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [end]

:[43]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v

:[end]