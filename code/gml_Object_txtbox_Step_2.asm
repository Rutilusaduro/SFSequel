.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
pushglb.v global.text
call.i is_array(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [7]

:[5]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.textlen
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
pushglb.v global.line
push.v self.textlen
cmp.v.v GTE
bf [7]

:[6]
push.v self.textlen
pushi.e 1
sub.i.v
pop.v.v global.line

:[7]
b [end]

:[8]
pushglb.v global.text
call.i is_array(argc=1)
conv.v.b
not.b
bf [end]

:[9]
pushi.e 0
pop.v.i global.line

:[end]