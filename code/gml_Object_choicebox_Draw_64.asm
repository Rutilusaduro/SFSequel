.localvar 0 arguments
.localvar 1 i 220

:[0]
push.v self.tbox_y2
push.v self.tbox_x2
push.v self.tbox_y1
push.v self.tbox_x1
call.i nubox(argc=4)
popz.v
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v self.choicelength
cmp.v.v LT
bf [end]

:[2]
push.v self.tbox_y1
push.v self.theight
pushloc.v local.i
mul.v.v
add.v.v
push.v self.gap
add.v.v
pop.v.v self.ctxt_y
pushloc.v local.i
push.v self.csel
cmp.v.v EQ
bf [4]

:[3]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [5]

:[4]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[5]
push.v self.twidth
push.v self.theight
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.choices
call.i string_hash_to_newline(argc=1)
push.v self.ctxt_y
push.v self.tbox_tx
call.i draw_text_ext(argc=5)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[end]