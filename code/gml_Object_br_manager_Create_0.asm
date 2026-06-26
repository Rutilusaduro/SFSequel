.localvar 0 arguments
.localvar 1 i 530

:[0]
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.vmode
pushi.e 0
pop.v.i self.maxit
pushi.e 0
pop.v.i self.needarray
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.needarray
pushi.e 0
pop.v.i self.destroy
pushglb.v global.guestlist
call.i ds_list_empty(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [end]

:[3]
pushi.e 0
pop.v.i self.gottem

:[4]
push.l 9
conv.l.v
push.l 2
conv.l.v
call.i irandom_range(argc=2)
pop.v.v self.nuguest
push.v self.nuguest
pushglb.v global.guestlist
call.i ds_list_find_index(argc=2)
pop.v.v self.guestspot
push.v self.guestspot
pushi.e -1
cmp.i.v EQ
bf [6]

:[5]
push.v self.nuguest
pushglb.v global.guestlist
call.i ds_list_add(argc=2)
popz.v
pushi.e 1
pop.v.i self.gottem

:[6]
push.v self.gottem
pushi.e 1
cmp.i.v EQ
bf [4]

:[7]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[end]