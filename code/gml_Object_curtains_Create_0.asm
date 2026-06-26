.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.tmode
pushi.e 0
pop.v.i self.ttype
pushi.e 0
pop.v.i global.line
pushi.e 14
pop.v.i self.dest
pushi.e 1
pop.v.i global.hide_inventory
pushi.e 1
pop.v.i global.hidestats
pushbltn.v self.room
pushi.e 6
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.returnoffice
b [3]

:[2]
pushi.e 0
pop.v.i self.returnoffice

:[3]
pushbltn.v self.room_height
pop.v.v self.wh
pushbltn.v self.room_width
pop.v.v self.ww
pushi.e 0
pop.v.i self.height
pushi.e 80
pop.v.i self.curspd
push.v self.depth
push.i 100000
sub.i.v
pop.v.v self.depth

:[end]