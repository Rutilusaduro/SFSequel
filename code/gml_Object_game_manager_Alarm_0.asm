.localvar 0 arguments
.localvar 1 v 718

:[0]
push.v self.paused
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.hp
pushi.e 0
cmp.i.v GT
bt [3]

:[2]
push.v self.myhp
pushi.e 0
cmp.i.v GT
b [4]

:[3]
push.e 1

:[4]
bf [end]

:[5]
push.v self.listspot
push.v self.menulist
call.i ds_list_find_value(argc=2)
pop.v.v self.nufood
push.v self.listspot
push.e 1
add.i.v
pop.v.v self.listspot
push.v self.listspot
push.v self.bufflength
cmp.v.v EQ
bf [9]

:[6]
pushi.e 0
pop.v.i self.listspot
push.v self.menulist
call.i ds_list_shuffle(argc=1)
popz.v
pushi.e 0
pop.v.i local.v

:[7]
pushloc.v local.v
push.v self.menulist
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [9]

:[8]
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
b [7]

:[9]
push.v self.fy
push.v self.ww
call.i position_empty(argc=2)
conv.v.b
bf [end]

:[10]
pushi.e 35
conv.i.v
push.v self.fy
push.v self.ww
call.i instance_create(argc=3)
conv.v.i
pushenv [12]

:[11]
push.v other.nufood
pop.v.v self.mydish
push.l 3
conv.l.v
push.v self.mydish
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
pop.v.v self.image_index

:[12]
popenv [11]

:[end]