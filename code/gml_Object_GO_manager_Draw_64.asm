.localvar 0 arguments

:[0]
push.v self.roommode
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.s "GAME OVER"@2221
conv.s.v
call.i string_hash_to_newline(argc=1)
push.v self.wh
pushi.e 2
conv.i.d
div.d.v
pushi.e 64
sub.i.v
pushi.e 64
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushglb.v global.choice
pushi.e -1
pushi.e 0
push.v [array]self.choices
cmp.v.v EQ
bf [3]

:[2]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [4]

:[3]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[4]
pushi.e -1
pushi.e 0
push.v [array]self.choices
call.i string_hash_to_newline(argc=1)
push.v self.wh
pushi.e 2
conv.i.d
div.d.v
pushi.e 64
add.i.v
pushi.e 64
conv.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.choice
pushi.e -1
pushi.e 1
push.v [array]self.choices
cmp.v.v EQ
bf [6]

:[5]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [7]

:[6]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[7]
pushi.e -1
pushi.e 1
push.v [array]self.choices
call.i string_hash_to_newline(argc=1)
push.v self.wh
pushi.e 2
conv.i.d
div.d.v
pushi.e 96
add.i.v
pushi.e 64
conv.i.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.gotate
pushi.e 1
cmp.i.v EQ
bf [end]

:[8]
pushglb.v global.choice
pushi.e -1
pushi.e 2
push.v [array]self.choices
cmp.v.v EQ
bf [10]

:[9]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [11]

:[10]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[11]
pushi.e -1
pushi.e 2
push.v [array]self.choices
call.i string_hash_to_newline(argc=1)
push.v self.wh
pushi.e 2
conv.i.d
div.d.v
pushi.e 128
add.i.v
pushi.e 64
conv.i.v
call.i draw_text(argc=3)
popz.v

:[end]