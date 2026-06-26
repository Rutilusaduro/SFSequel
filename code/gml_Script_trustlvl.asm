.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v self.goul
push.l 3
conv.l.v
push.v self.goul
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
div.v.v
call.i floor(argc=1)
ret.v

:[end]