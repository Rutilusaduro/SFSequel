.localvar 0 arguments

:[0]
pushbltn.v self.room_width
pop.v.v self.ww
pushi.e 1
conv.i.v
call.i sprite_get_width(argc=1)
pop.v.v self.size
push.v self.ww
push.v self.size
pushi.e 5
mul.i.v
sub.v.v
pop.v.v self.startspot
push.s "Gold: 999"@685
conv.s.v
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
pop.v.v self.goldlen
push.s "M"@265
conv.s.v
call.i string_hash_to_newline(argc=1)
call.i string_height(argc=1)
pushi.e 30
add.i.v
pop.v.v self.goldheigh
push.v self.ww
push.v self.goldlen
pushi.e 30
add.i.v
sub.v.v
pop.v.v self.box_x
push.v self.size
pop.v.v self.box_y
push.v self.ww
push.v self.goldlen
pushi.e 15
add.i.v
sub.v.v
pop.v.v self.gold_x
push.v self.size
pushi.e 15
add.i.v
pop.v.v self.gold_y
pushi.e 0
pop.v.i self.image_speed

:[end]