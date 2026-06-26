.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dir
pushi.e 8
pop.v.i self.dist
pushbltn.v self.room_height
pop.v.v self.wh
push.v self.wh
pushi.e 5
conv.i.d
div.d.v
pop.v.v self.top
push.v self.top
pushi.e 16
add.i.v
pop.v.v self.bot
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.x
push.v self.top
pop.v.v self.y

:[end]