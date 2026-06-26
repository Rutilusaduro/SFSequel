.localvar 0 arguments

:[0]
push.v self.height
push.v self.wh
cmp.v.v LTE
bf [end]

:[1]
push.v self.height
push.v self.curspd
add.v.v
pop.v.v self.height

:[end]