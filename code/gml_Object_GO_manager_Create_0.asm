.localvar 0 arguments

:[0]
call.i window_get_width(argc=0)
pop.v.v self.ww
call.i window_get_height(argc=0)
pop.v.v self.wh
pushi.e 0
pop.v.i self.choices
pushi.e 0
pop.v.i self.csel
pushi.e 0
pop.v.i self.roommode

:[end]