.localvar 0 arguments
.localvar 1 i 435

:[0]
pushglb.v global.hidestats
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.box_y2
push.v self.box_x2
push.v self.box_y1
push.v self.box_x1
call.i nubox(argc=4)
popz.v
pushi.e 0
pop.v.i local.i

:[5]
pushloc.v local.i
push.v self.dispheight
cmp.v.v LT
bf [end]

:[6]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.twidth
push.v self.height
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.displaytxt
call.i string_hash_to_newline(argc=1)
push.v self.text_y
push.v self.height
pushloc.v local.i
mul.v.v
add.v.v
push.v self.text_x
call.i draw_text_ext(argc=5)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [5]

:[end]