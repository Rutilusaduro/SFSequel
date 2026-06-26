.localvar 0 arguments
.localvar 1 __bind 100
.localvar 2 __result 101
.localvar 3 __fgstring 102
.localvar 4 __bgstring 103
.localvar 5 __fglen 104
.localvar 6 __bglen 105
.localvar 7 __layerlist 106
.localvar 8 __layerlistlength 107
.localvar 9 __layerid 108
.localvar 10 __isforeground 109
.localvar 11 __i 110
.localvar 12 __layername 111
.localvar 13 __slotchr 112
.localvar 14 __slot 113
.localvar 15 __els 114
.localvar 16 __elslength 115
.localvar 17 __newback 116

:[0]
pushbltn.v self.argument0
pop.v.v local.__bind
pushi.e -1
pushi.e -7
pushi.e 0
pop.v.i [array]local.__result
pushi.e -1
pushi.e -7
pushi.e 1
pop.v.i [array]local.__result
pushi.e -1
pushi.e -7
pushi.e 2
pop.v.i [array]local.__result
push.s "Compatibility_Foreground_"@132
pop.v.s local.__fgstring
push.s "Compatibility_Background_"@134
pop.v.s local.__bgstring
pushloc.v local.__fgstring
call.i string_length(argc=1)
pop.v.v local.__fglen
pushloc.v local.__bgstring
call.i string_length(argc=1)
pop.v.v local.__bglen
call.i layer_get_all(argc=0)
pop.v.v local.__layerlist
pushloc.v local.__layerlist
call.i array_length_1d(argc=1)
pop.v.v local.__layerlistlength
pushi.e -1
pop.v.i local.__layerid
pushi.e 0
pop.v.i local.__isforeground
pushi.e 0
pop.v.i local.__i

:[1]
pushloc.v local.__i
pushloc.v local.__layerlistlength
cmp.v.v LT
bf [14]

:[2]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layerlist
call.i layer_get_name(argc=1)
pop.v.v local.__layername
pushloc.v local.__layername
pushloc.v local.__fgstring
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [8]

:[3]
pushloc.v local.__fglen
pushi.e 1
add.i.v
pushloc.v local.__layername
call.i string_char_at(argc=2)
pop.v.v local.__slotchr
pushloc.v local.__slotchr
push.s ""@150
cmp.s.v EQ
bf [5]

:[4]
b [13]

:[5]
pushloc.v local.__slotchr
call.i real(argc=1)
pop.v.v local.__slot
pushloc.v local.__slot
pushloc.v local.__bind
cmp.v.v EQ
bf [7]

:[6]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layerlist
pop.v.v local.__layerid
pushi.e 1
pop.v.i local.__isforeground
b [14]

:[7]
b [13]

:[8]
pushloc.v local.__layername
pushloc.v local.__bgstring
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [13]

:[9]
pushloc.v local.__bglen
pushi.e 1
add.i.v
pushloc.v local.__layername
call.i string_char_at(argc=2)
pop.v.v local.__slotchr
pushloc.v local.__slotchr
push.s ""@150
cmp.s.v EQ
bf [11]

:[10]
b [13]

:[11]
pushloc.v local.__slotchr
call.i real(argc=1)
pop.v.v local.__slot
pushloc.v local.__slot
pushloc.v local.__bind
cmp.v.v EQ
bf [13]

:[12]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__layerlist
pop.v.v local.__layerid
pushi.e 0
pop.v.i local.__isforeground
b [14]

:[13]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [1]

:[14]
pushloc.v local.__layerid
pushi.e -1
cmp.i.v NEQ
bf [21]

:[15]
pushloc.v local.__layerid
call.i layer_get_all_elements(argc=1)
pop.v.v local.__els
pushloc.v local.__els
call.i array_length_1d(argc=1)
pop.v.v local.__elslength
pushi.e 0
pop.v.i local.__i

:[16]
pushloc.v local.__i
pushloc.v local.__elslength
cmp.v.v LT
bf [20]

:[17]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__els
call.i layer_get_element_type(argc=1)
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]local.__els
pushi.e -7
pushi.e 0
pop.v.v [array]local.__result
pushloc.v local.__layerid
pushi.e -7
pushi.e 1
pop.v.v [array]local.__result
pushloc.v local.__isforeground
pushi.e -7
pushi.e 2
pop.v.v [array]local.__result

:[19]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [16]

:[20]
b [22]

:[21]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.__bind
call.i __background_set_element(argc=15)
pop.v.v local.__newback
pushi.e -7
pushi.e 0
push.v [array]local.__newback
pushi.e -7
pushi.e 0
pop.v.v [array]local.__result
pushi.e -7
pushi.e 1
push.v [array]local.__newback
pushi.e -7
pushi.e 1
pop.v.v [array]local.__result
pushi.e 0
pushi.e -7
pushi.e 2
pop.v.i [array]local.__result

:[22]
pushloc.v local.__result
ret.v

:[end]