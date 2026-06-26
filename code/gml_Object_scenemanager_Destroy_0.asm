.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
push.v self.scene
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 9
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
pop.v.i global.hidestats
pushi.e 0
pop.v.i global.hide_inventory
pushi.e 0
pop.v.i global.hide_txtbox
pushi.e 0
pop.v.i global.goldonly
pushi.e 0
pop.v.i global.line
push.v self.turnoffbg
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
conv.i.v
push.v self.bg
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v

:[end]