.localvar 0 arguments

:[0]
pushglb.v global.officemode
pushi.e 5
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 45
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]