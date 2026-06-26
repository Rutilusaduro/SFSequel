.localvar 0 arguments

:[0]
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushglb.v global.hide_txtbox
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.tbox_y2
push.v self.tbox_x2
push.v self.tbox_y1
push.v self.tbox_x1
call.i nubox(argc=4)
popz.v
pushglb.v global.text
call.i is_array(argc=1)
conv.v.b
bf [6]

:[5]
push.v self.twidth
push.v self.theight
pushi.e -5
pushglb.v global.line
conv.v.i
push.v [array]global.text
call.i string_hash_to_newline(argc=1)
push.v self.tbox_ty
push.v self.tbox_tx
call.i draw_text_ext(argc=5)
popz.v
b [end]

:[6]
push.v self.twidth
push.v self.theight
pushglb.v global.text
call.i string_hash_to_newline(argc=1)
push.v self.tbox_ty
push.v self.tbox_tx
call.i draw_text_ext(argc=5)
popz.v

:[end]