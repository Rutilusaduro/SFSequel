.localvar 0 arguments

:[0]
pushbltn.v self.room_height
pop.v.v self.wh
pushbltn.v self.room_width
pop.v.v self.ww
push.s "M"@265
conv.s.v
call.i string_hash_to_newline(argc=1)
call.i string_height(argc=1)
pushi.e 2
add.i.v
pop.v.v self.theight
pushi.e 15
pop.v.i self.gap
push.v self.gap
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
push.v self.gap
pushi.e 3
mul.i.v
pop.v.v self.tbox_x2
push.v self.wh
push.v self.wh
pushglb.v global.scrnpct
div.v.v
sub.v.v
pop.v.v self.tbox_y2
push.v self.gap
pushi.e 2
mul.i.v
pop.v.v self.tbox_tx
push.v self.wh
push.v self.wh
pushglb.v global.scrnpct
div.v.v
sub.v.v
push.v self.theight
push.v self.gap
add.v.v
sub.v.v
pop.v.v self.tbox_ty
pushi.e 0
pop.v.i self.confirm

:[end]