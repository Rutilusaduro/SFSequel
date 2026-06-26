.localvar 0 arguments
.localvar 1 u 706
.localvar 2 i 707
.localvar 3 v 709

:[0]
pushi.e 0
pop.v.i self.filled
pushi.e 1
pop.v.i global.lunch
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.gulp
pushi.e 4
pushi.e -1
pushi.e 1
pop.v.i [array]self.gulp
pushi.e 5
pushi.e -1
pushi.e 2
pop.v.i [array]self.gulp
push.l 2
conv.l.v
pushglb.v global.guest
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 5
add.i.v
pop.v.v self.hp
push.v self.hp
pop.v.v self.maxhp
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 5
add.i.v
pop.v.v self.myhp
push.v self.myhp
pop.v.v self.maxmyhp
pushi.e 0
pop.v.i self.friend
pushi.e 0
pop.v.i self.paused
pushi.e 0
pop.v.i self.vmode
pushi.e 0
pop.v.i self.nomoney
pushi.e 0
pop.v.i self.listspot
pushbltn.v self.room_width
pop.v.v self.ww
pushbltn.v self.room_height
pop.v.v self.wh
pushi.e 2
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.spt
push.v self.wh
push.v self.wh
pushglb.v global.scrnpct
div.v.v
sub.v.v
push.v self.spt
sub.v.v
pop.v.v self.fy
push.v self.ww
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.x
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushglb.v global.guest
push.l 0
cmp.l.v NEQ
bf [2]

:[1]
pushglb.v global.guest
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
push.v self.ww
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.bubx
pushi.e 64
pop.v.i self.buby
b [3]

:[2]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
push.v self.ww
pushi.e 4
conv.i.d
div.d.v
pop.v.v self.bubx
pushi.e 64
pop.v.i self.buby

:[3]
call.i ds_list_create(argc=0)
pop.v.v self.menulist
push.s "defaultcafe"@392
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [17]

:[4]
push.l 29
conv.l.v
push.l 28
conv.l.v
push.l 27
conv.l.v
push.v self.menulist
call.i ds_list_add(argc=4)
popz.v
pushi.e 0
pop.v.i local.u
pushi.e 1
pop.v.i local.i

:[5]
pushloc.v local.i
pushi.e 8
cmp.i.v LTE
bf [13]

:[6]
push.s "cafeslot"@1742
pushloc.v local.i
call.i string(argc=1)
add.v.s
pop.v.v self.keystringa
push.s "serve"@2725
push.v self.keystringa
add.v.s
pop.v.v self.keystringb
push.v self.keystringa
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.keystringb
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.l 3
pushloc.v local.u
add.v.l
push.v self.menulist
call.i ds_list_add(argc=2)
popz.v
push.v local.u
push.e 1
add.i.v
pop.v.v local.u
push.l 3
pushloc.v local.u
add.v.l
push.v self.menulist
call.i ds_list_add(argc=2)
popz.v
push.v local.u
push.e 1
add.i.v
pop.v.v local.u
push.l 3
pushloc.v local.u
add.v.l
push.v self.menulist
call.i ds_list_add(argc=2)
popz.v
push.v local.u
push.e 1
add.i.v
pop.v.v local.u
b [12]

:[11]
push.s "miss"@2726
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.v local.u
pushi.e 3
add.i.v
pop.v.v local.u

:[12]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [5]

:[13]
push.v self.menulist
call.i ds_list_size(argc=1)
pop.v.v self.bufflength
push.v self.menulist
call.i ds_list_shuffle(argc=1)
popz.v
push.s "MENULIST"@2728
conv.s.v
call.i show_debug_message(argc=1)
popz.v
pushi.e 0
pop.v.i local.v

:[14]
pushloc.v local.v
push.v self.menulist
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [16]

:[15]
push.l 1
conv.l.v
pushloc.v local.v
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
call.i show_debug_message(argc=1)
popz.v
push.v local.v
push.e 1
add.i.v
pop.v.v local.v
b [14]

:[16]
b [18]

:[17]
push.l 29
conv.l.v
push.l 28
conv.l.v
push.l 27
conv.l.v
push.v self.menulist
call.i ds_list_add(argc=4)
popz.v
push.v self.menulist
call.i ds_list_size(argc=1)
pop.v.v self.bufflength

:[18]
pushi.e 6
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [20]

:[19]
pushi.e 1
pop.v.i global.goldonly

:[20]
popenv [19]

:[end]