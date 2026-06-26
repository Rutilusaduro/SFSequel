.localvar 0 arguments

:[0]
push.v 31.paused
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
pushi.e 38
conv.i.v
call.i keyboard_check(argc=1)
pushi.e 1
cmp.i.v EQ
bt [3]

:[2]
pushi.e 87
conv.i.v
call.i keyboard_check(argc=1)
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
push.v self.x
push.v self.spd
push.d 1.5
mul.d.v
sub.v.v
pop.v.v self.x
b [7]

:[6]
push.v self.x
push.v self.spd
sub.v.v
pop.v.v self.x

:[7]
push.v self.x
push.v self.foodwidth
neg.v
cmp.v.v LT
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
push.v self.x
push.v self.nuspawn
cmp.v.v LTE
bf [11]

:[10]
push.v self.didspawn
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [end]

:[13]
push.s "did spawn"@2751
conv.s.v
call.i show_debug_message(argc=1)
popz.v
pushi.e 34
conv.i.v
push.v self.y
push.v self.rw
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.didspawn

:[end]