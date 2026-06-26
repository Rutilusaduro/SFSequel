.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.a

:[1]
push.v self.a
push.v self.settingslen
cmp.v.v LT
bf [end]

:[2]
push.v self.a
push.v self.csel
cmp.v.v EQ
bf [4]

:[3]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [5]

:[4]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[5]
pushi.e -1
push.v self.a
conv.v.i
push.v [array]self.settingstext
call.i string_hash_to_newline(argc=1)
pushi.e 15
push.v self.height
push.v self.a
mul.v.v
add.v.i
pushi.e 15
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.a
push.e 1
add.i.v
pop.v.v self.a
b [1]

:[end]