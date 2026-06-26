.localvar 0 arguments

:[0]
push.v self.venddecide
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.s "vendslot"@1899
push.v self.myvend
call.i string(argc=1)
add.v.s
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.myvend
pop.v.v self.image_index

:[3]
pushi.e 1
pop.v.i self.venddecide

:[end]