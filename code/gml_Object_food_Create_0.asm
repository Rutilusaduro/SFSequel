.localvar 0 arguments

:[0]
pushi.e 2
conv.i.v
call.i sprite_get_width(argc=1)
pop.v.v self.foodwidth
pushi.e 0
pop.v.i self.image_speed
push.v 31.depth
pushi.e 1
add.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.mydish
pushi.e 18
pop.v.i self.spd

:[end]