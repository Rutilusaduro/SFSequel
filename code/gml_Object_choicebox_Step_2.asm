.localvar 0 arguments
.localvar 1 i 218

:[0]
push.v self.longfound
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
push.v self.choicelength
cmp.v.v LT
bf [6]

:[3]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.choices
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
push.v self.twidth
cmp.v.v GT
bf [5]

:[4]
push.v self.ww
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.choices
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
sub.v.v
push.v self.gap
pushi.e 3
mul.i.v
sub.v.v
pop.v.v self.tbox_x1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.choices
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pop.v.v self.twidth
push.v self.ww
push.v self.twidth
sub.v.v
push.v self.gap
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.tbox_tx

:[5]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[6]
push.v self.wh
push.v self.wh
pushglb.v global.scrnpct
div.v.v
sub.v.v
push.v self.theight
push.v self.choicelength
mul.v.v
push.v self.gap
pushi.e 2
mul.i.v
add.v.v
sub.v.v
pop.v.v self.tbox_y1
pushi.e 1
pop.v.i self.longfound

:[7]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [9]

:[8]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [13]

:[11]
push.v self.csel
push.e 1
add.i.v
pop.v.v self.csel
push.v self.csel
push.v self.choicelength
cmp.v.v GTE
bf [13]

:[12]
pushi.e 0
pop.v.i self.csel

:[13]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [15]

:[14]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [19]

:[17]
push.v self.csel
push.e 1
sub.i.v
pop.v.v self.csel
push.v self.csel
pushi.e 0
cmp.i.v LT
bf [19]

:[18]
push.v self.choicelength
pushi.e 1
sub.i.v
pop.v.v self.csel

:[19]
pushi.e -1
push.v self.csel
conv.v.i
push.v [array]self.choices
pop.v.v global.choice

:[end]