.localvar 0 arguments

:[0]
pushi.e 3
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[2]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
pushi.e 6
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[4]
pushi.e 9
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [6]

:[5]
pushi.e 9
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[6]
pushglb.v global.bossscene
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i global.bossnotif
b [9]

:[8]
pushi.e 1
pop.v.i global.bossnotif

:[9]
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.vmode
pushi.e 0
pop.v.i self.umode
pushi.e 0
pop.v.i self.downsze
pushi.e 0
pop.v.i self.upsze
pushbltn.v self.room_width
pop.v.v self.ww
push.v self.ww
pushi.e 4
conv.i.d
div.d.v
pop.v.v self.bubx
pushi.e 64
pop.v.i self.buby
pushi.e 0
pop.v.i global.officemode
pushi.e 0
pop.v.i self.menuarray
pushi.e 0
pop.v.i self.savespot
pushi.e 0
pop.v.i global.goldonly
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[10]
push.v 4.returnoffice
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 15
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 15
pop.v.i global.home
call.i instance_destroy(argc=0)
popz.v
b [13]

:[12]
pushi.e 14
pop.v.i global.home

:[13]
push.s "accusetime"@380
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.s "ACCUSETIME FALSE"@1826
conv.s.v
call.i show_debug_message(argc=1)
popz.v

:[15]
push.s "failedboss"@351
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 2
cmp.i.v GTE
bf [22]

:[16]
pushi.e 18
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 18
pop.v.i global.home
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 15
cmp.i.v EQ
bf [18]

:[17]
push.s "accusetime"@380
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.s "accusetime"@380
pop.v.s global.bossscene

:[21]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[22]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 15
cmp.i.v EQ
bf [24]

:[23]
push.s "accusetime"@380
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [end]

:[26]
pushi.e 18
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 18
pop.v.i global.home
push.s "accusetime"@380
pop.v.s global.bossscene
call.i instance_destroy(argc=0)
popz.v

:[end]