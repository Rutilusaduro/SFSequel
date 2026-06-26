.localvar 0 arguments

:[0]
push.s "M"@265
conv.s.v
call.i string_hash_to_newline(argc=1)
call.i string_height(argc=1)
pushi.e 5
add.i.v
pop.v.v self.height
pushi.e 0
pop.v.i self.csel
pushi.e 0
pop.v.i self.setstring

:[end]