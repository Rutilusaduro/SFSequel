.localvar 0 arguments

:[0]
push.v self.paused
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v other.id
pop.v.v self.friend
push.v other.mydish
pop.v.v self.gotdish
pushi.e 1
pop.v.i self.damage
pushglb.v global.guest
push.l 0
cmp.l.v NEQ
bf [3]

:[2]
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[3]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushglb.v global.guest
push.l 0
cmp.l.v NEQ
b [6]

:[5]
push.e 0

:[6]
bf [27]

:[7]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.gsound
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e -1
push.v self.gsound
conv.v.i
push.v [array]self.gulp
call.i audio_play_sound(argc=3)
popz.v
pushglb.v global.guest
push.v self.gotdish
call.i give_gift(argc=2)
pop.v.v self.feed
push.l 13
conv.l.v
pushglb.v global.guest
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.filled

:[9]
pushi.e 33
conv.i.v
push.v self.buby
push.v self.bubx
call.i instance_create(argc=3)
conv.v.i
pushenv [11]

:[10]
push.v other.feed
pop.v.v self.image_index

:[11]
popenv [10]
push.v self.feed
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i self.bland
b [14]

:[13]
pushi.e 0
pop.v.i self.bland

:[14]
push.v self.feed
pushi.e 3
cmp.i.v GTE
bf [19]

:[15]
push.v self.filled
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.hp
push.v self.damage
push.v self.bland
add.v.v
sub.v.v
pop.v.v self.hp
b [18]

:[17]
push.v self.hp
push.v self.bland
sub.v.v
pop.v.v self.hp

:[18]
b [25]

:[19]
push.v self.filled
pushi.e 1
cmp.i.v EQ
bt [21]

:[20]
push.v self.feed
pushi.e 1
cmp.i.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [24]

:[23]
push.v self.hp
push.v self.damage
pushi.e 1
add.i.v
push.v self.bland
add.v.v
sub.v.v
pop.v.v self.hp
b [25]

:[24]
push.v self.hp
push.v self.bland
sub.v.v
pop.v.v self.hp

:[25]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.lunchcost
sub.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.v self.friend
call.i instance_destroy(argc=1)
popz.v
call.i io_clear(argc=0)
popz.v
exit.i

:[26]
b [end]

:[27]
pushi.e 16
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [end]

:[28]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.gsound
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e -1
push.v self.gsound
conv.v.i
push.v [array]self.gulp
call.i audio_play_sound(argc=3)
popz.v
push.l 0
conv.l.v
push.v self.gotdish
call.i give_gift(argc=2)
pop.v.v self.feed
push.l 13
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i self.filled

:[30]
pushglb.v global.guest
push.l 0
cmp.l.v EQ
bf [34]

:[31]
pushi.e 33
conv.i.v
push.v self.buby
push.v self.bubx
call.i instance_create(argc=3)
conv.v.i
pushenv [33]

:[32]
push.v other.feed
pop.v.v self.image_index

:[33]
popenv [32]
b [37]

:[34]
pushi.e 33
conv.i.v
push.v self.buby
push.v self.bubx
call.i instance_create(argc=3)
conv.v.i
pushenv [36]

:[35]
push.v other.feed
pop.v.v self.image_index
pushi.e -1
pop.v.i self.image_xscale

:[36]
popenv [35]

:[37]
push.v self.feed
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
pushi.e 1
pop.v.i self.bland
b [40]

:[39]
pushi.e 0
pop.v.i self.bland

:[40]
push.v self.feed
pushi.e 3
cmp.i.v GTE
bf [45]

:[41]
push.v self.filled
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
push.v self.myhp
push.v self.damage
push.v self.bland
add.v.v
sub.v.v
pop.v.v self.myhp
b [44]

:[43]
push.v self.myhp
push.v self.bland
sub.v.v
pop.v.v self.myhp

:[44]
b [48]

:[45]
push.v self.filled
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
push.v self.myhp
push.v self.damage
pushi.e 1
add.i.v
push.v self.bland
add.v.v
sub.v.v
pop.v.v self.myhp
b [48]

:[47]
push.v self.myhp
push.v self.bland
sub.v.v
pop.v.v self.myhp

:[48]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.lunchcost
sub.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.v self.friend
call.i instance_destroy(argc=1)
popz.v
call.i io_clear(argc=0)
popz.v
exit.i

:[end]