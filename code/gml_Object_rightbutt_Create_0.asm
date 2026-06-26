.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushbltn.v self.room_width
pop.v.v self.ww
push.v self.sprite_width
pop.v.v self.sptw
push.v self.ww
pushi.e 2
conv.i.d
div.d.v
pushi.e 32
add.i.v
pop.v.v self.x
push.v 31.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[end]