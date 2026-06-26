.localvar 0 arguments
.localvar 1 __prop 118
.localvar 2 __bind 119
.localvar 3 __backinfo 120
.localvar 4 __res 121
.localvar 5 __backid 122
.localvar 6 __layerid 123
.localvar 7 __isfore 124

:[0]
pushbltn.v self.argument0
pop.v.v local.__prop
pushbltn.v self.argument1
pop.v.v local.__bind
pushbltn.v self.argument2
pop.v.v local.__backinfo
pushi.e -7
pushi.e 0
push.v [array]local.__backinfo
pushi.e -1
cmp.i.v EQ
bt [2]

:[1]
pushi.e -7
pushi.e 0
push.v [array]local.__backinfo
pushi.e -7
pushi.e 1
push.v [array]local.__backinfo
call.i layer_background_exists(argc=2)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [6]

:[4]
pushloc.v local.__bind
call.i __background_get_element(argc=1)
pop.v.v local.__backinfo
pushi.e -7
pushi.e 0
push.v [array]local.__backinfo
pushi.e -1
cmp.i.v EQ
bf [6]

:[5]
pushi.e -1
conv.i.v
ret.v

:[6]
pushi.e -1
pop.v.i local.__res
pushi.e -7
pushi.e 0
push.v [array]local.__backinfo
pop.v.v local.__backid
pushi.e -7
pushi.e 1
push.v [array]local.__backinfo
pop.v.v local.__layerid
pushi.e -7
pushi.e 2
push.v [array]local.__backinfo
pop.v.v local.__isfore
pushloc.v local.__prop
dup.v 0
push.l 0
cmp.l.v EQ
bt [23]

:[7]
dup.v 0
push.l 1
cmp.l.v EQ
bt [24]

:[8]
dup.v 0
push.l 2
cmp.l.v EQ
bt [25]

:[9]
dup.v 0
push.l 3
cmp.l.v EQ
bt [26]

:[10]
dup.v 0
push.l 4
cmp.l.v EQ
bt [27]

:[11]
dup.v 0
push.l 5
cmp.l.v EQ
bt [28]

:[12]
dup.v 0
push.l 6
cmp.l.v EQ
bt [29]

:[13]
dup.v 0
push.l 7
cmp.l.v EQ
bt [30]

:[14]
dup.v 0
push.l 8
cmp.l.v EQ
bt [31]

:[15]
dup.v 0
push.l 9
cmp.l.v EQ
bt [32]

:[16]
dup.v 0
push.l 10
cmp.l.v EQ
bt [33]

:[17]
dup.v 0
push.l 11
cmp.l.v EQ
bt [34]

:[18]
dup.v 0
push.l 12
cmp.l.v EQ
bt [35]

:[19]
dup.v 0
push.l 13
cmp.l.v EQ
bt [36]

:[20]
dup.v 0
push.l 14
cmp.l.v EQ
bt [37]

:[21]
b [38]

:[22]
b [39]

:[23]
pushloc.v local.__layerid
call.i layer_get_visible(argc=1)
pop.v.v local.__res
b [39]

:[24]
pushloc.v local.__isfore
pop.v.v local.__res
b [39]

:[25]
pushloc.v local.__backid
call.i layer_background_get_sprite(argc=1)
pop.v.v local.__res
b [39]

:[26]
pushloc.v local.__layerid
call.i layer_get_x(argc=1)
pop.v.v local.__res
b [39]

:[27]
pushloc.v local.__layerid
call.i layer_get_y(argc=1)
pop.v.v local.__res
b [39]

:[28]
pushloc.v local.__backid
call.i layer_background_get_index(argc=1)
call.i sprite_get_width(argc=1)
pop.v.v local.__res
b [39]

:[29]
pushloc.v local.__backid
call.i layer_background_get_index(argc=1)
call.i sprite_get_height(argc=1)
pop.v.v local.__res
b [39]

:[30]
pushloc.v local.__backid
call.i layer_background_get_htiled(argc=1)
pop.v.v local.__res
b [39]

:[31]
pushloc.v local.__backid
call.i layer_background_get_vtiled(argc=1)
pop.v.v local.__res
b [39]

:[32]
pushloc.v local.__backid
call.i layer_background_get_xscale(argc=1)
pop.v.v local.__res
b [39]

:[33]
pushloc.v local.__backid
call.i layer_background_get_yscale(argc=1)
pop.v.v local.__res
b [39]

:[34]
pushloc.v local.__layerid
call.i layer_get_hspeed(argc=1)
pop.v.v local.__res
b [39]

:[35]
pushloc.v local.__layerid
call.i layer_get_vspeed(argc=1)
pop.v.v local.__res
b [39]

:[36]
pushloc.v local.__backid
call.i layer_background_get_blend(argc=1)
pop.v.v local.__res
b [39]

:[37]
pushloc.v local.__backid
call.i layer_background_get_alpha(argc=1)
pop.v.v local.__res
b [39]

:[38]
b [39]

:[39]
popz.v
pushloc.v local.__res
ret.v

:[end]