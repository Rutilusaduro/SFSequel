.localvar 0 arguments

:[0]
push.s "BEFORE WE CONTINUE: This software is intended for +18 audiences ONLY. By clicking 'continue' you agree that you are at least 18 years of age. Continue? (Press SPACE to select)"@2705
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [4]

:[1]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [3]

:[2]
push.s "Continue"@647
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Close Game"@2706
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[3]
popenv [2]

:[4]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
pushglb.v global.choice
push.s "Continue"@647
cmp.s.v EQ
bf [7]

:[6]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [end]

:[7]
call.i game_end(argc=0)
popz.v

:[end]