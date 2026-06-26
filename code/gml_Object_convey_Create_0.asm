.localvar 0 arguments

:[0]
pushi.e 40
conv.i.v
call.i sprite_get_width(argc=1)
pop.v.v self.foodwidth
pushi.e 0
pop.v.i self.image_speed
pushi.e 18
pop.v.i self.spd
pushbltn.v self.room_width
pop.v.v self.rw
pushbltn.v self.room_width
push.v self.foodwidth
sub.v.v
pop.v.v self.nuspawn
pushi.e 0
pop.v.i self.didspawn
push.v 31.depth
pushi.e 2
add.i.v
pop.v.v self.depth

:[end]