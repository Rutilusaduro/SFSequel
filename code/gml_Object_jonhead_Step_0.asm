.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e -1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 45
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]