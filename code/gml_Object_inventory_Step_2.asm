.localvar 0 arguments

:[0]
pushglb.v global.giving
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [3]

:[2]
pushi.e 68
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [7]

:[5]
push.v global.invent_choice
push.e 1
add.i.v
pop.v.v global.invent_choice
pushglb.v global.invent_choice
pushi.e 4
cmp.i.v GT
bf [7]

:[6]
pushi.e 0
pop.v.i global.invent_choice

:[7]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [9]

:[8]
pushi.e 65
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [end]

:[11]
push.v global.invent_choice
push.e 1
sub.i.v
pop.v.v global.invent_choice
pushglb.v global.invent_choice
pushi.e 0
cmp.i.v LT
bf [end]

:[12]
pushi.e 4
pop.v.i global.invent_choice

:[end]