.localvar 0 arguments

:[0]
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[1]
push.v self.showchloe_bg
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 54
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[3]
push.v self.showpearl_bg
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 54
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[5]
push.v self.showkathy_bg
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 54
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[7]
push.v self.showjesse_bg
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 54
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[9]
push.v self.showvik_bg
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 54
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[11]
push.v self.showerika_bg
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 54
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[13]
push.v self.showstacy_bg
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 54
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[15]
push.v self.showpolly_bg
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
pushi.e 54
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[17]
push.v self.showchloe
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 46
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[19]
push.v self.showpearl
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 47
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[21]
push.v self.showkathy
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 48
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[23]
push.v self.showjesse
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 49
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[25]
push.v self.showvik
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 51
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[27]
push.v self.showerika
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 50
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[29]
push.v self.showstacy
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 52
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[31]
push.v self.showpolly
pushi.e 1
cmp.i.v EQ
bf [end]

:[32]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 53
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]