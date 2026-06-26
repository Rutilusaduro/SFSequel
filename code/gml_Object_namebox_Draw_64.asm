.localvar 0 arguments

:[0]
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[1]
pushglb.v global.boxname
push.s ""@150
cmp.s.v NEQ
bf [end]

:[2]
pushglb.v global.boxname
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
push.v self.gap
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.tbox_x2
push.v self.tbox_y2
push.v self.tbox_x2
push.v self.tbox_y1
push.v self.tbox_x1
call.i nubox(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushglb.v global.boxname
call.i string_hash_to_newline(argc=1)
push.v self.tbox_ty
push.v self.tbox_tx
call.i draw_text(argc=3)
popz.v

:[end]