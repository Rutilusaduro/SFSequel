.localvar 0 arguments

:[0]
call.i io_clear(argc=0)
popz.v
push.v self.tmode
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [4]

:[1]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [8]

:[2]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [18]

:[3]
b [22]

:[4]
push.v self.height
push.v self.wh
cmp.v.v LTE
bf [6]

:[5]
push.v self.height
push.v self.curspd
add.v.v
pop.v.v self.height
b [7]

:[6]
push.v self.tmode
push.e 1
add.i.v
pop.v.v self.tmode

:[7]
b [22]

:[8]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
pushi.e 5
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[10]
push.v self.ttype
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [14]

:[11]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [15]

:[12]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [16]

:[13]
b [17]

:[14]
push.v self.tmode
push.e 1
add.i.v
pop.v.v self.tmode
b [17]

:[15]
push.v self.dest
call.i room_goto(argc=1)
popz.v
push.v self.tmode
push.e 1
add.i.v
pop.v.v self.tmode
b [17]

:[16]
pushglb.v global.home
call.i instance_destroy(argc=1)
popz.v
push.v self.dest
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
push.v self.dest
pop.v.v global.home
push.v self.tmode
push.e 1
add.i.v
pop.v.v self.tmode
b [17]

:[17]
popz.v
b [22]

:[18]
push.v self.height
pushi.e 0
cmp.i.v GTE
bf [20]

:[19]
push.v self.height
push.v self.curspd
sub.v.v
pop.v.v self.height
b [21]

:[20]
call.i instance_destroy(argc=0)
popz.v
popz.v
exit.i

:[21]
b [22]

:[22]
popz.v

:[end]