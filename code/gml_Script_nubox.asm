.localvar 0 arguments
.localvar 1 _size 3
.localvar 2 _x1 5
.localvar 3 _y1 7
.localvar 4 _x2 9
.localvar 5 _y2 11
.localvar 6 _w 12
.localvar 7 _h 13
.localvar 8 _columns 14
.localvar 9 _rows 15

:[0]
pushi.e 0
conv.i.v
call.i sprite_get_width(argc=1)
pushi.e 3
conv.i.d
div.d.v
pop.v.v local._size
pushbltn.v self.argument0
pop.v.v local._x1
pushbltn.v self.argument1
pop.v.v local._y1
pushbltn.v self.argument2
pop.v.v local._x2
pushbltn.v self.argument3
pop.v.v local._y2
pushloc.v local._x2
pushloc.v local._x1
sub.v.v
pop.v.v local._w
pushloc.v local._y2
pushloc.v local._y1
sub.v.v
pop.v.v local._h
pushloc.v local._w
pushloc.v local._size
rem.v.v
pop.v.v local._columns
pushloc.v local._h
pushloc.v local._size
rem.v.v
pop.v.v local._rows
pushloc.v local._y1
pushloc.v local._x1
pushloc.v local._size
pushloc.v local._size
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
pushloc.v local._y1
pushloc.v local._x1
pushloc.v local._w
add.v.v
pushloc.v local._size
sub.v.v
pushloc.v local._size
pushloc.v local._size
pushi.e 0
conv.i.v
pushloc.v local._size
pushi.e 2
mul.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
pushloc.v local._y1
pushloc.v local._h
add.v.v
pushloc.v local._size
sub.v.v
pushloc.v local._x1
pushloc.v local._size
pushloc.v local._size
pushloc.v local._size
pushi.e 2
mul.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
pushloc.v local._y1
pushloc.v local._h
add.v.v
pushloc.v local._size
sub.v.v
pushloc.v local._x1
pushloc.v local._w
add.v.v
pushloc.v local._size
sub.v.v
pushloc.v local._size
pushloc.v local._size
pushloc.v local._size
pushi.e 2
mul.i.v
pushloc.v local._size
pushi.e 2
mul.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local._h
pushloc.v local._size
pushi.e 2
mul.i.v
sub.v.v
pushi.e 1
conv.i.v
pushloc.v local._y1
pushloc.v local._size
add.v.v
pushloc.v local._x1
pushi.e 1
conv.i.v
pushloc.v local._size
pushloc.v local._size
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local._h
pushloc.v local._size
pushi.e 2
mul.i.v
sub.v.v
pushi.e 1
conv.i.v
pushloc.v local._y1
pushloc.v local._size
add.v.v
pushloc.v local._x1
pushloc.v local._w
add.v.v
pushloc.v local._size
sub.v.v
pushi.e 1
conv.i.v
pushloc.v local._size
pushloc.v local._size
pushloc.v local._size
pushi.e 2
mul.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._w
pushloc.v local._size
pushi.e 2
mul.i.v
sub.v.v
pushloc.v local._y1
pushloc.v local._x1
pushloc.v local._size
add.v.v
pushloc.v local._size
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._size
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._w
pushloc.v local._size
pushi.e 2
mul.i.v
sub.v.v
pushloc.v local._y1
pushloc.v local._h
add.v.v
pushloc.v local._size
sub.v.v
pushloc.v local._x1
pushloc.v local._size
add.v.v
pushloc.v local._size
pushi.e 1
conv.i.v
pushloc.v local._size
pushi.e 2
mul.i.v
pushloc.v local._size
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local._h
pushloc.v local._size
pushi.e 2
mul.i.v
sub.v.v
pushloc.v local._w
pushloc.v local._size
pushi.e 2
mul.i.v
sub.v.v
pushloc.v local._y1
pushloc.v local._size
add.v.v
pushloc.v local._x1
pushloc.v local._size
add.v.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._size
pushloc.v local._size
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[end]