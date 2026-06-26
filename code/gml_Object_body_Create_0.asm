.localvar 0 arguments

:[0]
push.s "I EXIST"@1756
conv.s.v
call.i show_debug_message(argc=1)
popz.v
pushglb.v global.hidebody
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "IM BEING HIDDEN"@1757
conv.s.v
call.i show_debug_message(argc=1)
popz.v

:[2]
pushi.e 0
pop.v.i self.me
pushi.e 0
pop.v.i self.image_speed
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bf [4]

:[3]
push.v self.depth
pushi.e 10000
add.i.v
pop.v.v self.depth

:[4]
pushi.e 22
pushi.e -1
push.l 2
conv.l.i
pop.v.i [array]self.bodarray
pushi.e 24
pushi.e -1
push.l 2
conv.l.i
pop.v.i [array]self.upbodarray
pushi.e 23
pushi.e -1
push.l 3
conv.l.i
pop.v.i [array]self.bodarray
pushi.e 25
pushi.e -1
push.l 3
conv.l.i
pop.v.i [array]self.upbodarray
pushi.e 27
pushi.e -1
push.l 6
conv.l.i
pop.v.i [array]self.bodarray
pushi.e 28
pushi.e -1
push.l 6
conv.l.i
pop.v.i [array]self.upbodarray
pushi.e 21
pushi.e -1
push.l 7
conv.l.i
pop.v.i [array]self.bodarray
pushi.e 26
pushi.e -1
push.l 7
conv.l.i
pop.v.i [array]self.upbodarray
pushi.e 29
pushi.e -1
push.l 8
conv.l.i
pop.v.i [array]self.bodarray
pushi.e 30
pushi.e -1
push.l 8
conv.l.i
pop.v.i [array]self.upbodarray
pushi.e 31
pushi.e -1
push.l 5
conv.l.i
pop.v.i [array]self.bodarray
pushi.e 32
pushi.e -1
push.l 5
conv.l.i
pop.v.i [array]self.upbodarray
pushi.e 33
pushi.e -1
push.l 9
conv.l.i
pop.v.i [array]self.bodarray
pushi.e 34
pushi.e -1
push.l 9
conv.l.i
pop.v.i [array]self.upbodarray
pushi.e 35
pushi.e -1
push.l 4
conv.l.i
pop.v.i [array]self.bodarray
pushi.e 36
pushi.e -1
push.l 4
conv.l.i
pop.v.i [array]self.upbodarray
pushi.e 14
pushi.e -1
pushi.e 0
pop.v.i [array]self.pheadarray
pushi.e 15
pushi.e -1
pushi.e 1
pop.v.i [array]self.pheadarray
pushi.e 16
pushi.e -1
pushi.e 2
pop.v.i [array]self.pheadarray
pushi.e 17
pushi.e -1
pushi.e 3
pop.v.i [array]self.pheadarray
pushi.e 18
pushi.e -1
pushi.e 4
pop.v.i [array]self.pheadarray
pushi.e 19
pushi.e -1
pushi.e 5
pop.v.i [array]self.pheadarray
pushi.e 20
pushi.e -1
pushi.e 6
pop.v.i [array]self.pheadarray
pushi.e 6
pushi.e -1
pushi.e 0
pop.v.i [array]self.pbodarray
pushi.e 7
pushi.e -1
pushi.e 1
pop.v.i [array]self.pbodarray
pushi.e 8
pushi.e -1
pushi.e 2
pop.v.i [array]self.pbodarray
pushi.e 12
pushi.e -1
pushi.e 0
pop.v.i [array]self.plegarray
pushi.e 13
pushi.e -1
pushi.e 1
pop.v.i [array]self.plegarray
pushi.e 9
pushi.e -1
pushi.e 0
pop.v.i [array]self.uppbodarray
pushi.e 10
pushi.e -1
pushi.e 1
pop.v.i [array]self.uppbodarray
pushi.e 11
pushi.e -1
pushi.e 2
pop.v.i [array]self.uppbodarray
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 32
add.i.v
pop.v.v self.wh
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 32
sub.i.v
pop.v.v self.ww
push.i 16777215
pop.v.i self.colorblend
pushi.e 1
pop.v.i self.prop
pushi.e 41
conv.i.v
call.i sprite_get_width(argc=1)
pop.v.v self.barlen
push.v self.barlen
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.halflen
pushi.e 41
conv.i.v
call.i sprite_get_height(argc=1)
pop.v.v self.barh
pushbltn.v self.room_width
pushi.e 4
conv.i.d
div.d.v
pop.v.v self.wwp
push.v self.wwp
pushi.e 3
mul.i.v
pop.v.v self.wwg
push.v self.wh
pushi.e 96
add.i.v
pop.v.v self.bh
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.bw
push.v self.wwp
push.v self.halflen
sub.v.v
pop.v.v self.hpx1_p
push.v self.wwp
push.v self.halflen
add.v.v
pop.v.v self.hpx2_p
push.v self.wwg
push.v self.halflen
sub.v.v
pop.v.v self.hpx1_g
push.v self.wwg
push.v self.halflen
sub.v.v
pop.v.v self.hpx2_g
push.v self.ww
push.v self.halflen
sub.v.v
pop.v.v self.hpx1
pushi.e 480
pop.v.i self.hpy1
push.v self.ww
push.v self.halflen
add.v.v
pop.v.v self.hpx2
push.v self.hpy1
push.v self.barh
add.v.v
pop.v.v self.hpy2

:[end]