.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.makearray
pushi.e 1
pop.v.i global.hidestats
pushi.e 1
pop.v.i global.hide_inventory
pushi.e 1
pop.v.i global.cutmusic
pushi.e 0
pop.v.i self.vmode
push.s "testscene"@347
pop.v.s self.scene
pushi.e 0
pop.v.i self.turnoffbg
pushi.e 0
pop.v.i self.savespot
pushi.e 0
pop.v.i self.scenefeed
pushi.e 0
pop.v.i self.namearray
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i global.text
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i self.confirm
pushi.e 0
pop.v.i self.WAIT
pushi.e 3
pop.v.i self.likelevel
push.s "Goodness, has it really been that long since I last saw you? You know I have some diets you can try if you’re interested. Nothing personal."@1456
pushi.e -1
push.l 2
conv.l.i
pop.v.s [array]self.preyline
push.s "O-Oh! Is that you??? I um...didn’t recognize you at first."@1458
pushi.e -1
push.l 3
conv.l.i
pop.v.s [array]self.preyline
push.s "Wait... Is that you??? I couldn’t even recognize who I was talking to under all that blubber~ >:3c"@1459
pushi.e -1
push.l 6
conv.l.i
pop.v.s [array]self.preyline
push.s "Goodness gracious you’ve gone and gotten huge!? I didn’ even recognize ya for a sec there."@1460
pushi.e -1
push.l 7
conv.l.i
pop.v.s [array]self.preyline
push.s "A-Ah!? Y-You’ve gotten so b-big..."@1461
pushi.e -1
push.l 4
conv.l.i
pop.v.s [array]self.preyline
push.s "Wow. When’d you get so fat all the sudden? Can you still walk???"@1462
pushi.e -1
push.l 5
conv.l.i
pop.v.s [array]self.preyline
push.s "My my, has it really been that long since I last saw you? You sure have put on a LOT of weight you know~ What? I’m just being honest. "@1463
pushi.e -1
push.l 8
conv.l.i
pop.v.s [array]self.preyline
push.s "Oh...izzz that you!? Goodnezzz I didn’t recognize you! Not with all that blubber in the way of course."@1464
pushi.e -1
push.l 9
conv.l.i
pop.v.s [array]self.preyline

:[end]