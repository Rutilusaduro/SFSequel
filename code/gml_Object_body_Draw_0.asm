.localvar 0 arguments

:[0]
pushglb.v global.right_body
push.v self.id
cmp.v.v EQ
bf [2]

:[1]
pushi.e -1
pop.v.i self.face
b [3]

:[2]
pushi.e 1
pop.v.i self.face

:[3]
pushi.e 39
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 0
pop.v.i self.colorblend
push.d 0.25
pop.v.d self.prop
push.v self.bw
pop.v.v self.myx
push.v self.bh
pop.v.v self.myy
b [6]

:[5]
pushi.e 1
pop.v.i self.prop
push.v self.ww
pop.v.v self.myx
push.v self.wh
pop.v.v self.myy

:[6]
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [30]

:[7]
pushglb.v global.hidebody
pushi.e 0
cmp.i.v EQ
bf [30]

:[8]
push.v self.me
push.l 0
cmp.l.v EQ
bf [19]

:[9]
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [17]

:[10]
push.l 13
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.l 0
conv.l.v
call.i over_full(argc=1)
pop.v.v self.fulllvl
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
push.v self.fulllvl
pushi.e -1
push.s "legs"@342
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.plegarray
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
push.v self.fulllvl
pushi.e -1
push.s "boobs"@341
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.uppbodarray
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
push.v self.fulllvl
pushi.e -1
push.s "head"@343
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.pheadarray
call.i draw_sprite_ext(argc=9)
popz.v
b [16]

:[12]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v GTE
bf [14]

:[13]
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
push.s "head"@343
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.pheadarray
call.i draw_sprite_ext(argc=9)
popz.v

:[14]
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
push.s "legs"@342
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.plegarray
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
push.s "boobs"@341
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.pbodarray
call.i draw_sprite_ext(argc=9)
popz.v
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v LT
bf [16]

:[15]
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
push.s "head"@343
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.pheadarray
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
b [18]

:[17]
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
pushi.e 0
conv.i.v
pushi.e -1
push.s "legs"@342
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.plegarray
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
pushi.e 0
conv.i.v
pushi.e -1
push.s "boobs"@341
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.pbodarray
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
pushi.e 0
conv.i.v
pushi.e -1
push.s "head"@343
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.pheadarray
call.i draw_sprite_ext(argc=9)
popz.v

:[18]
b [30]

:[19]
push.v self.me
push.l 2
cmp.l.v EQ
bf [21]

:[20]
push.s "brokediet"@38
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
pushi.e 0
conv.i.v
pushi.e -1
push.v self.me
conv.v.i
push.v [array]self.bodarray
call.i draw_sprite_ext(argc=9)
popz.v
b [30]

:[24]
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [29]

:[25]
push.l 13
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.v self.me
call.i over_full(argc=1)
pop.v.v self.fulllvl
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
push.v self.fulllvl
pushi.e -1
push.v self.me
conv.v.i
push.v [array]self.upbodarray
call.i draw_sprite_ext(argc=9)
popz.v
b [28]

:[27]
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
push.v self.me
conv.v.i
push.v [array]self.bodarray
call.i draw_sprite_ext(argc=9)
popz.v

:[28]
b [30]

:[29]
pushi.e 1
conv.i.v
push.v self.colorblend
pushi.e 1
conv.i.v
push.v self.prop
push.v self.face
push.v self.prop
mul.v.v
push.v self.myy
push.v self.myx
pushi.e 0
conv.i.v
pushi.e -1
push.v self.me
conv.v.i
push.v [array]self.bodarray
call.i draw_sprite_ext(argc=9)
popz.v

:[30]
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bf [end]

:[31]
pushglb.v global.guest
push.l 0
cmp.l.v NEQ
bf [37]

:[32]
push.v self.hpy1
push.v self.hpx1_p
pushi.e 2
conv.i.v
pushi.e 41
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v 31.myhp
push.v 31.maxmyhp
div.v.v
pop.v.v self.cur_hpp
push.v self.cur_hpp
pushi.e 0
cmp.i.v LT
bf [34]

:[33]
pushi.e 0
pop.v.i self.cur_hpp

:[34]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.cur_hpp
push.v self.hpy1
push.v self.hpx1_p
pushi.e 1
conv.i.v
pushi.e 41
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.hpy1
push.v self.hpx1_p
pushi.e 0
conv.i.v
pushi.e 41
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.hpy1
push.v self.hpx1_g
pushi.e 2
conv.i.v
pushi.e 41
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v 31.hp
push.v 31.maxhp
div.v.v
pop.v.v self.cur_hpp
push.v self.cur_hpp
pushi.e 0
cmp.i.v LT
bf [36]

:[35]
pushi.e 0
pop.v.i self.cur_hpp

:[36]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.cur_hpp
push.v self.hpy1
push.v self.hpx1_g
pushi.e 1
conv.i.v
pushi.e 41
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.hpy1
push.v self.hpx1_g
pushi.e 0
conv.i.v
pushi.e 41
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [end]

:[37]
push.v self.hpy1
push.v self.hpx1
pushi.e 2
conv.i.v
pushi.e 41
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v 31.myhp
push.v 31.maxmyhp
div.v.v
pop.v.v self.cur_hpp
push.v self.cur_hpp
pushi.e 0
cmp.i.v LT
bf [39]

:[38]
pushi.e 0
pop.v.i self.cur_hpp

:[39]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.cur_hpp
push.v self.hpy1
push.v self.hpx1
pushi.e 1
conv.i.v
pushi.e 41
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.hpy1
push.v self.hpx1
pushi.e 0
conv.i.v
pushi.e 41
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]