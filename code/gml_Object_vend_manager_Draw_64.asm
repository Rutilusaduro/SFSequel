.localvar 0 arguments

:[0]
push.s "defaultvend"@389
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 64
pushi.e 192
push.v self.vsel
mul.v.i
add.v.i
pop.v.v self.ax
pushi.e 128
conv.i.v
push.v self.ax
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]