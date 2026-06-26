.localvar 0 arguments

:[0]
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushi.e 0
pop.v.i self.csel
pushbltn.v self.room_height
pop.v.v self.wh
pushbltn.v self.room_width
pop.v.v self.ww
pushi.e 15
pop.v.i self.gap
push.s "M"@265
conv.s.v
call.i string_hash_to_newline(argc=1)
call.i string_height(argc=1)
pushi.e 3
add.i.v
pop.v.v self.theight
push.v self.ww
push.v self.ww
pushglb.v global.scrnpct
div.v.v
sub.v.v
pop.v.v self.tbox_x1
push.v self.wh
push.v self.wh
pushglb.v global.scrnpct
div.v.v
sub.v.v
push.v self.theight
push.v self.gap
pushi.e 2
mul.i.v
add.v.v
sub.v.v
pop.v.v self.tbox_y1
push.v self.ww
push.v self.gap
sub.v.v
pop.v.v self.tbox_x2
push.v self.wh
push.v self.wh
pushglb.v global.scrnpct
div.v.v
sub.v.v
pop.v.v self.tbox_y2
push.v self.ww
push.v self.ww
pushglb.v global.scrnpct
div.v.v
sub.v.v
push.v self.gap
add.v.v
pop.v.v self.tbox_tx
push.v self.tbox_y1
push.v self.gap
add.v.v
pop.v.v self.tbox_ty
push.v self.ww
pushglb.v global.scrnpct
div.v.v
push.v self.gap
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.twidth
push.s "examplechoice1"@277
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength
pushi.e 0
pop.v.i self.longfound
pushi.e 0
pop.v.i global.choice
pushi.e 0
pop.v.i self.nuchoice
pushi.e 0
pop.v.i self.progarray

:[end]