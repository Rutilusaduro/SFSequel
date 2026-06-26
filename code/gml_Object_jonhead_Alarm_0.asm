.localvar 0 arguments

:[0]
push.v self.dir
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [3]

:[1]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [7]

:[2]
b [11]

:[3]
push.v self.y
push.v self.bot
cmp.v.v LTE
bf [5]

:[4]
push.v self.y
push.v self.dist
add.v.v
pop.v.v self.y
b [6]

:[5]
push.v self.dir
push.e 1
add.i.v
pop.v.v self.dir

:[6]
b [11]

:[7]
push.v self.y
push.v self.top
cmp.v.v GTE
bf [9]

:[8]
push.v self.y
push.v self.dist
sub.v.v
pop.v.v self.y
b [10]

:[9]
push.v self.dir
push.e 1
sub.i.v
pop.v.v self.dir

:[10]
b [11]

:[11]
popz.v

:[end]