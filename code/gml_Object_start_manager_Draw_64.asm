.localvar 0 arguments

:[0]
push.v self.roommode
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [3]

:[2]
push.v self.box_y2
push.v self.box_x2
push.v self.box_y1
push.v self.box_x1
call.i nubox(argc=4)
popz.v
push.v self.nuname
call.i string_hash_to_newline(argc=1)
push.v self.text_y
push.v self.text_x
call.i draw_text(argc=3)
popz.v
b [end]

:[3]
pushglb.v global.line
pushi.e 2
cmp.i.v GT
bf [end]

:[4]
push.v self.nuname
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pushi.e 45
add.i.v
pop.v.v self.nu_x2
push.v self.height
pushi.e 45
add.i.v
pop.v.v self.nu_y2
push.v self.nu_y2
push.v self.nu_x2
pushi.e 15
conv.i.v
pushi.e 15
conv.i.v
call.i nubox(argc=4)
popz.v
push.v self.nuname
call.i string_hash_to_newline(argc=1)
pushi.e 30
conv.i.v
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]