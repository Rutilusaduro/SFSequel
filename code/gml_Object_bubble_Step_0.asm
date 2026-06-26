.localvar 0 arguments

:[0]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.y
push.v self.orgy
push.v self.dist
add.v.v
cmp.v.v LT
bf [3]

:[2]
push.v self.y
push.v self.spd
add.v.v
pop.v.v self.y
b [4]

:[3]
pushi.e 1
pop.v.i self.mode

:[4]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
push.v self.y
push.v self.orgy
cmp.v.v GT
bf [7]

:[6]
push.v self.y
push.v self.spd
sub.v.v
pop.v.v self.y
b [8]

:[7]
pushi.e 2
pop.v.i self.mode

:[8]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]