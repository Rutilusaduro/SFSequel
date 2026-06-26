.localvar 0 arguments
.localvar 1 __prop 78
.localvar 2 __bind 79
.localvar 3 __val 80
.localvar 4 __backinfo 81
.localvar 5 __backid 82
.localvar 6 __layerid 83
.localvar 7 __isfore 84
.localvar 8 __visible 85
.localvar 9 __index 86
.localvar 10 __htiled 87
.localvar 11 __vtiled 88
.localvar 12 __stretch 89
.localvar 13 __blend 90
.localvar 14 __alpha 91
.localvar 15 __xscale 92
.localvar 16 __yscale 93
.localvar 17 __x 94
.localvar 18 __y 95
.localvar 19 __hspeed 96
.localvar 20 __vspeed 97

:[0]
pushbltn.v self.argument0
pop.v.v local.__prop
pushbltn.v self.argument1
pop.v.v local.__bind
pushbltn.v self.argument2
pop.v.v local.__val
pushbltn.v self.argument3
pop.v.v local.__backinfo
pushi.e -7
pushi.e 0
push.v [array]local.__backinfo
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -1
conv.i.v
ret.v

:[2]
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
push.l 1
cmp.l.v EQ
bf [6]

:[3]
pushloc.v local.__val
call.i round(argc=1)
pushloc.v local.__isfore
call.i round(argc=1)
cmp.v.v NEQ
bf [5]

:[4]
pushloc.v local.__layerid
call.i layer_get_visible(argc=1)
pop.v.v local.__visible
pushloc.v local.__backid
call.i layer_background_get_sprite(argc=1)
pop.v.v local.__index
pushloc.v local.__backid
call.i layer_background_get_htiled(argc=1)
pop.v.v local.__htiled
pushloc.v local.__backid
call.i layer_background_get_vtiled(argc=1)
pop.v.v local.__vtiled
pushloc.v local.__backid
call.i layer_background_get_stretch(argc=1)
pop.v.v local.__stretch
pushloc.v local.__backid
call.i layer_background_get_blend(argc=1)
pop.v.v local.__blend
pushloc.v local.__backid
call.i layer_background_get_alpha(argc=1)
pop.v.v local.__alpha
pushloc.v local.__backid
call.i layer_background_get_xscale(argc=1)
pop.v.v local.__xscale
pushloc.v local.__backid
call.i layer_background_get_yscale(argc=1)
pop.v.v local.__yscale
pushloc.v local.__layerid
call.i layer_get_x(argc=1)
pop.v.v local.__x
pushloc.v local.__layerid
call.i layer_get_y(argc=1)
pop.v.v local.__y
pushloc.v local.__layerid
call.i layer_get_hspeed(argc=1)
pop.v.v local.__hspeed
pushloc.v local.__layerid
call.i layer_get_vspeed(argc=1)
pop.v.v local.__vspeed
pushloc.v local.__alpha
pushloc.v local.__blend
pushloc.v local.__vspeed
pushloc.v local.__hspeed
pushloc.v local.__stretch
pushloc.v local.__yscale
pushloc.v local.__xscale
pushloc.v local.__vtiled
pushloc.v local.__htiled
pushloc.v local.__y
pushloc.v local.__x
pushloc.v local.__index
pushloc.v local.__val
pushloc.v local.__visible
pushloc.v local.__bind
call.i __background_set_element(argc=15)
popz.v

:[5]
b [36]

:[6]
pushloc.v local.__prop
dup.v 0
push.l 0
cmp.l.v EQ
bt [20]

:[7]
dup.v 0
push.l 2
cmp.l.v EQ
bt [21]

:[8]
dup.v 0
push.l 3
cmp.l.v EQ
bt [24]

:[9]
dup.v 0
push.l 4
cmp.l.v EQ
bt [25]

:[10]
dup.v 0
push.l 7
cmp.l.v EQ
bt [26]

:[11]
dup.v 0
push.l 8
cmp.l.v EQ
bt [27]

:[12]
dup.v 0
push.l 9
cmp.l.v EQ
bt [28]

:[13]
dup.v 0
push.l 10
cmp.l.v EQ
bt [29]

:[14]
dup.v 0
push.l 11
cmp.l.v EQ
bt [30]

:[15]
dup.v 0
push.l 12
cmp.l.v EQ
bt [31]

:[16]
dup.v 0
push.l 13
cmp.l.v EQ
bt [32]

:[17]
dup.v 0
push.l 14
cmp.l.v EQ
bt [33]

:[18]
b [34]

:[19]
b [35]

:[20]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_set_visible(argc=2)
popz.v
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_visible(argc=2)
popz.v
b [35]

:[21]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_change(argc=2)
popz.v
pushloc.v local.__val
call.i sprite_exists(argc=1)
conv.v.b
bf [23]

:[22]
push.i 16777215
conv.i.v
pushloc.v local.__backid
call.i layer_background_blend(argc=2)
popz.v
pushi.e 1
conv.i.v
pushloc.v local.__backid
call.i layer_background_alpha(argc=2)
popz.v

:[23]
b [35]

:[24]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_x(argc=2)
popz.v
b [35]

:[25]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_y(argc=2)
popz.v
b [35]

:[26]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_htiled(argc=2)
popz.v
b [35]

:[27]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_vtiled(argc=2)
popz.v
b [35]

:[28]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_xscale(argc=2)
popz.v
b [35]

:[29]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_yscale(argc=2)
popz.v
b [35]

:[30]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_hspeed(argc=2)
popz.v
b [35]

:[31]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_vspeed(argc=2)
popz.v
b [35]

:[32]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_blend(argc=2)
popz.v
b [35]

:[33]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_alpha(argc=2)
popz.v
b [35]

:[34]
b [35]

:[35]
popz.v

:[36]
pushi.e -1
conv.i.v
ret.v

:[end]