.localvar 0 arguments

:[0]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [5]

:[1]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[3]
pushi.e 1
conv.i.v
ret.v

:[4]
b [end]

:[5]
pushi.e 0
conv.i.v
ret.v

:[end]