.localvar 0 arguments

:[0]
pushi.e 16
conv.i.v
call.i keyboard_check(argc=1)
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v 31.paused
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.image_index
b [end]

:[5]
pushi.e 0
pop.v.i self.image_index

:[end]