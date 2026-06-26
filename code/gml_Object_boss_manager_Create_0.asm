.localvar 0 arguments

:[0]
pushi.e 6
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[2]
push.s "Boss"@917
pop.v.s global.boxname
pushbltn.v self.room_width
pop.v.v self.ww
pushbltn.v self.room_height
pop.v.v self.wh
pushi.e 39
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
pushi.e 39
conv.i.v
push.v self.wh
pushi.e 5
conv.i.d
div.d.v
push.v self.ww
pushi.e 2
conv.i.d
div.d.v
call.i instance_create(argc=3)
popz.v

:[4]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
push.s "WHERE IS BOSSFAIL?"@2207
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.s "failedboss"@351
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i show_debug_message(argc=1)
popz.v
pushi.e 0
pop.v.i self.stopmusic

:[end]