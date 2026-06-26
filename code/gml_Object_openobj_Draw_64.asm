.localvar 0 arguments
.localvar 1 i 291

:[0]
push.v self.roommode
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 56
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[2]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.s "SUPER FATTY OFFICE ADMINISTRATOR SIMULATOR"@672
conv.s.v
call.i string_hash_to_newline(argc=1)
pushi.e 32
conv.i.v
pushi.e 32
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_font(argc=1)
popz.v
push.v self.roommode
pushi.e 0
cmp.i.v EQ
bf [9]

:[3]
pushi.e 0
pop.v.i local.i

:[4]
pushloc.v local.i
push.v self.choicelength
cmp.v.v LT
bf [9]

:[5]
pushi.e 128
pushi.e 32
pushloc.v local.i
mul.v.i
add.v.i
pop.v.v self.text_y
pushloc.v local.i
push.v self.scrnline
cmp.v.v EQ
bf [7]

:[6]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [8]

:[7]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[8]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.openarray
call.i string_hash_to_newline(argc=1)
push.v self.text_y
push.v self.text_x
call.i draw_text(argc=3)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [4]

:[9]
push.v self.roommode
pushi.e 2
cmp.i.v EQ
bf [end]

:[10]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 57
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]