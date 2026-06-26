.localvar 0 arguments

:[0]
push.v self.stopmusic
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 13
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [3]

:[2]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[3]
b [5]

:[4]
pushi.e 13
conv.i.v
call.i audio_stop_sound(argc=1)
popz.v

:[5]
push.s "failedboss"@351
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [9]

:[6]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [10]

:[7]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [14]

:[8]
b [15]

:[9]
pushglb.v global.bossscene
call.i callscene(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
b [15]

:[10]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
push.s "FAILBOSS1"@356
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.s "FAILBOSS1"@356
conv.s.v
call.i callscene(argc=1)
popz.v
b [13]

:[12]
pushglb.v global.bossscene
call.i callscene(argc=1)
popz.v

:[13]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
b [15]

:[14]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
push.s "FAILBOSS2"@357
conv.s.v
call.i callscene(argc=1)
popz.v
b [15]

:[15]
popz.v

:[end]