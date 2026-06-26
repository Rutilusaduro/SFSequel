.localvar 0 arguments
.localvar 1 i 327
.localvar 2 placeat 328

:[0]
pushglb.v global.hide_inventory
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushglb.v global.goldonly
pushi.e 0
cmp.i.v EQ
bf [17]

:[5]
pushi.e 0
pop.v.i local.i

:[6]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [16]

:[7]
push.v self.startspot
push.v self.size
pushloc.v local.i
mul.v.v
add.v.v
pop.v.v local.placeat
pushglb.v global.giving
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushloc.v local.i
pushglb.v global.invent_choice
cmp.v.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 0
conv.i.v
pushloc.v local.placeat
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [13]

:[12]
pushi.e 0
conv.i.v
pushloc.v local.placeat
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[13]
pushi.e 0
conv.i.v
pushloc.v local.placeat
push.l 3
conv.l.v
pushi.e 0
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
pushi.e 3
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v NEQ
bf [15]

:[14]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
pushloc.v local.i
pushglb.v global.invent
call.i ds_grid_get(argc=3)
call.i string(argc=1)
call.i string_hash_to_newline(argc=1)
pushi.e 3
conv.i.v
pushloc.v local.placeat
pushi.e 8
add.i.v
call.i draw_text(argc=3)
popz.v

:[15]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [6]

:[16]
push.v self.goldheigh
push.v self.size
add.v.v
push.v self.ww
push.v self.box_y
push.v self.box_x
call.i nubox(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "Gold: "@694
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i string(argc=1)
add.v.s
call.i string_hash_to_newline(argc=1)
push.v self.gold_y
push.v self.gold_x
call.i draw_text(argc=3)
popz.v
b [end]

:[17]
push.v self.goldheigh
push.v self.ww
pushi.e 0
conv.i.v
push.v self.box_x
call.i nubox(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "Gold: "@694
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i string(argc=1)
add.v.s
call.i string_hash_to_newline(argc=1)
pushi.e 15
conv.i.v
push.v self.gold_x
call.i draw_text(argc=3)
popz.v

:[end]