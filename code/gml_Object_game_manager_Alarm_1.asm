.localvar 0 arguments

:[0]
push.v self.hp
pushi.e 0
cmp.i.v GT
bt [2]

:[1]
push.v self.myhp
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
push.l 7
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
push.v self.friend
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[6]
push.v self.friend
conv.v.i
push.v [stacktop]self.mydish
pop.v.v self.gotdish
push.v self.gotdish
push.l 27
cmp.l.v NEQ
bf [9]

:[7]
push.v self.gotdish
push.l 28
cmp.l.v NEQ
bf [9]

:[8]
push.v self.gotdish
push.l 29
cmp.l.v NEQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.rand
pushglb.v global.guest
call.i trustlvl(argc=1)
push.v self.rand
cmp.v.v GTE
bf [end]

:[12]
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
bf [14]

:[13]
pushi.e 1
pop.v.i self.filled

:[14]
pushi.e 33
conv.i.v
push.v self.buby
push.v self.bubx
call.i instance_create(argc=3)
conv.v.i
pushenv [16]

:[15]
push.v other.feed
pop.v.v self.image_index
pushi.e -1
pop.v.i self.image_xscale

:[16]
popenv [15]
pushi.e 33
conv.i.v
push.v self.buby
pushi.e 42
conv.i.v
call.i sprite_get_height(argc=1)
add.v.v
push.v self.bubx
call.i instance_create(argc=3)
conv.v.i
pushenv [18]

:[17]
pushi.e 5
pop.v.i self.image_index

:[18]
popenv [17]
push.v self.feed
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1
pop.v.i self.bland
b [21]

:[20]
pushi.e 0
pop.v.i self.bland

:[21]
push.v self.feed
pushi.e 3
cmp.i.v GTE
bf [26]

:[22]
push.v self.filled
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.v self.myhp
push.v self.damage
push.v self.bland
add.v.v
sub.v.v
pop.v.v self.myhp
b [25]

:[24]
push.v self.myhp
push.v self.bland
sub.v.v
pop.v.v self.myhp

:[25]
b [29]

:[26]
push.v self.filled
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v self.myhp
push.v self.damage
pushi.e 1
add.i.v
push.v self.bland
add.v.v
sub.v.v
pop.v.v self.myhp
b [29]

:[28]
push.v self.myhp
push.v self.bland
sub.v.v
pop.v.v self.myhp

:[29]
push.v self.friend
call.i instance_destroy(argc=1)
popz.v
call.i io_clear(argc=0)
popz.v
exit.i

:[end]