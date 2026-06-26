.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
pop.v.i self.vmode
pushi.e 0
pop.v.i self.noscene
pushi.e 0
pop.v.i self.sceneok
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 10
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[2]
push.s ""@150
pop.v.s self.officedia
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.s "You spot Chloe staple up a motivational office poster on the wall. She meticulously measures her handiwork for evenness and then walks away back to her desk. "@2052
pop.v.s self.officedia

:[4]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
push.s "Someone has subtilty  changed Chloe's motivational poster to say something crude. The handiwork is quite good, you almost didn't notice and you doubt anyone not paying attention would either. You wonder when it will be discovered. "@2053
pop.v.s self.officedia

:[6]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 6
cmp.i.v EQ
bf [8]

:[7]
push.s "The crude poster edit remains on the wall. "@2054
pop.v.s self.officedia

:[8]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 8
cmp.i.v EQ
bf [10]

:[9]
push.s "Someone has finally removed the crude poster edit. The wallspace is replaced with an outline on company guidelines about professionalism in the workplace. "@2055
pop.v.s self.officedia

:[10]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 9
cmp.i.v EQ
bf [12]

:[11]
push.s "Someone has already edited the new poster. "@2056
pop.v.s self.officedia

:[12]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v EQ
bf [14]

:[13]
push.s "They already took down the new poster "@2057
pop.v.s self.officedia

:[14]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 11
cmp.i.v EQ
bf [16]

:[15]
push.s "Someone taped up a meme refrencing the old poster in the place where it used to be. "@2058
pop.v.s self.officedia

:[16]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 12
cmp.i.v EQ
bf [18]

:[17]
push.s "The original meme was taken down, but several more have taken it's place. Once this snowball starts rolling it's momentum is already unstoppable. "@2059
pop.v.s self.officedia

:[18]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 14
cmp.i.v EQ
bf [20]

:[19]
push.s "Enough is enough, a corperate warning has been pasted on top of the cleared out meme wall. Apparently it's serious since no one has posted up anything else and, as far as you can tell the warning is unedited. "@2060
pop.v.s self.officedia

:[20]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 16
cmp.i.v EQ
bf [end]

:[21]
push.s "Someone taped a meme hidden behind the corperate warning..."@2061
pop.v.s self.officedia

:[end]