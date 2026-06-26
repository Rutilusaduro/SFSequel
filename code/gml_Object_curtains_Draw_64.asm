.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.height
push.v self.ww
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[end]