.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.hidestats
pushi.e 1
pop.v.i global.hide_inventory
pushi.e 1
pop.v.i global.hide_txtbox
push.v self.depth
pushi.e 10000
add.i.v
pop.v.v self.depth

:[end]