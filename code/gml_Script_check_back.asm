.localvar 0 arguments

:[0]
pushi.e 9
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
pushi.e 8
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [8]

:[4]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[6]
pushi.e 1
conv.i.v
ret.v

:[7]
b [end]

:[8]
pushi.e 0
conv.i.v
ret.v

:[end]