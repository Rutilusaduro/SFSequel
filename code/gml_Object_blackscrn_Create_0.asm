.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.tmode
pushi.e 0
pop.v.i self.ttype
pushbltn.v self.room_height
pop.v.v self.wh
pushbltn.v self.room_width
pop.v.v self.ww
pushi.e 0
pop.v.i self.height
pushi.e 100
pop.v.i self.curspd
push.v self.depth
push.i 100000
add.i.v
pop.v.v self.depth

:[end]