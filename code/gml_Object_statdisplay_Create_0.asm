.localvar 0 arguments
.localvar 1 i 423

:[0]
pushbltn.v self.room_height
pop.v.v self.wh
pushbltn.v self.room_width
pop.v.v self.ww
push.s "M"@265
conv.s.v
call.i string_hash_to_newline(argc=1)
call.i string_height(argc=1)
pushi.e 2
add.i.v
pop.v.v self.height
pushi.e 15
pop.v.i self.gap
push.v self.ww
pushi.e 2
conv.i.d
div.d.v
push.v self.gap
pushi.e 3
mul.i.v
sub.v.v
pop.v.v self.twidth
pushbltn.v self.room
pushi.e 3
cmp.i.v EQ
bf [49]

:[1]
pushi.e 0
pop.v.i self.o
push.s "Pasta"@1719
pushi.e -1
pushi.e 1
pop.v.s [array]self.dishes
push.s "Dessert"@1721
pushi.e -1
pushi.e 2
pop.v.s [array]self.dishes
push.s "Breakfast"@1722
pushi.e -1
pushi.e 3
pop.v.s [array]self.dishes
push.s "Gourmet meats"@1723
pushi.e -1
pushi.e 4
pop.v.s [array]self.dishes
push.s "Ramen and sushi"@1724
pushi.e -1
pushi.e 5
pop.v.s [array]self.dishes
push.s "Fast food"@1725
pushi.e -1
pushi.e 6
pop.v.s [array]self.dishes
push.s "Ramen"@1726
pushi.e -1
pushi.e 7
pop.v.s [array]self.dishes
push.s "Gell-o salad"@1727
pushi.e -1
pushi.e 8
pop.v.s [array]self.dishes
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 5
conv.i.d
div.d.v
call.i ceil(argc=1)
call.i string(argc=1)
pop.v.v self.weektxt
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 5
mul.i.v
sub.v.v
call.i string(argc=1)
pop.v.v self.daytxt
push.v self.daytxt
pushi.e 0
conv.i.v
call.i string(argc=1)
cmp.v.v EQ
bf [3]

:[2]
pushi.e 5
conv.i.v
call.i string(argc=1)
pop.v.v self.daytxt

:[3]
pushglb.v global.lunch
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.s " Morning"@1731
pop.v.s self.timetxt
b [6]

:[5]
push.s " Afternoon"@1733
pop.v.s self.timetxt

:[6]
push.s "WEEK: "@1734
push.v self.weektxt
add.v.s
push.s " DAY: "@1735
add.s.v
push.v self.daytxt
add.v.v
push.v self.timetxt
add.v.v
pushi.e -1
push.v self.o
conv.v.i
pop.v.v [array]self.displaytxt
push.v self.o
push.e 1
add.i.v
pop.v.v self.o
pushglb.v global.bossnotif
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.s "Talk to the boss"@1737
pushi.e -1
push.v self.o
conv.v.i
pop.v.s [array]self.displaytxt
push.v self.o
push.e 1
add.i.v
pop.v.v self.o

:[8]
push.s ""@150
pushi.e -1
push.v self.o
conv.v.i
pop.v.s [array]self.displaytxt
push.v self.o
push.e 1
add.i.v
pop.v.v self.o
push.s "LUNCH MENU:"@1738
pushi.e -1
push.v self.o
conv.v.i
pop.v.s [array]self.displaytxt
push.v self.o
push.e 1
add.i.v
pop.v.v self.o
push.s ""@150
pushi.e -1
push.v self.o
conv.v.i
pop.v.s [array]self.displaytxt
pushi.e 0
pop.v.i self.spaced
pushi.e 1
pop.v.i local.i

:[9]
pushloc.v local.i
pushi.e 9
cmp.i.v LT
bf [20]

:[10]
push.s "servecafeslot"@1740
pushloc.v local.i
call.i string(argc=1)
add.v.s
pop.v.v self.keystringa
push.s "cafeslot"@1742
pushloc.v local.i
call.i string(argc=1)
add.v.s
pop.v.v self.keystringb
push.v self.keystringa
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.keystringb
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [19]

:[14]
pushi.e -1
push.v self.o
conv.v.i
push.v [array]self.displaytxt
push.s ""@150
cmp.s.v EQ
bf [16]

:[15]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.dishes
pushi.e -1
push.v self.o
conv.v.i
pop.v.v [array]self.displaytxt
b [17]

:[16]
pushi.e -1
push.v self.o
conv.v.i
dup.i 1
push.v [array]self.displaytxt
push.s ", "@1744
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.dishes
add.v.s
add.v.v
pop.i.v [array]self.displaytxt

:[17]
pushi.e -1
push.v self.o
conv.v.i
push.v [array]self.displaytxt
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
push.v self.twidth
cmp.v.v GT
bf [19]

:[18]
push.s ""@150
pushi.e -1
push.v self.o
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]self.displaytxt
pushi.e 1
pop.v.i self.spaced

:[19]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [9]

:[20]
push.v self.o
push.e 1
add.i.v
pop.v.v self.o
push.v self.spaced
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.o
push.e 1
add.i.v
pop.v.v self.o

:[22]
pushi.e 0
pop.v.i self.spaced
push.s "anyonefit"@500
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [38]

:[23]
push.s "MONSTERS ON THE FITNESS PROGRAM:"@1745
pushi.e -1
push.v self.o
conv.v.i
pop.v.s [array]self.displaytxt
push.v self.o
push.e 1
add.i.v
pop.v.v self.o
push.s ""@150
pushi.e -1
push.v self.o
conv.v.i
pop.v.s [array]self.displaytxt
push.l 2
pop.v.l local.i

:[24]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [33]

:[25]
push.l 7
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [32]

:[26]
pushi.e -1
push.v self.o
conv.v.i
push.v [array]self.displaytxt
push.s ""@150
cmp.s.v EQ
bf [28]

:[27]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
push.v self.o
conv.v.i
pop.v.v [array]self.displaytxt
b [29]

:[28]
pushi.e -1
push.v self.o
conv.v.i
dup.i 1
push.v [array]self.displaytxt
push.s ", "@1744
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
add.v.v
pop.i.v [array]self.displaytxt

:[29]
pushi.e -1
push.v self.o
conv.v.i
push.v [array]self.displaytxt
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
push.v self.twidth
cmp.v.v GT
bf [31]

:[30]
push.s ""@150
pushi.e -1
push.v self.o
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]self.displaytxt
pushi.e 1
pop.v.i self.spaced

:[31]
pushi.e 1
pop.v.i self.foundone

:[32]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [24]

:[33]
push.l 7
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e -1
push.v self.o
conv.v.i
dup.i 1
push.v [array]self.displaytxt
push.s ", myself"@1747
add.s.v
pop.i.v [array]self.displaytxt

:[35]
push.v self.o
push.e 1
add.i.v
pop.v.v self.o
push.v self.spaced
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
push.v self.o
push.e 1
add.i.v
pop.v.v self.o

:[37]
pushi.e 0
pop.v.i self.spaced

:[38]
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [49]

:[39]
push.s "MONSTERS IN NEED OF RESCUE:"@1748
pushi.e -1
push.v self.o
conv.v.i
pop.v.s [array]self.displaytxt
push.v self.o
push.e 1
add.i.v
pop.v.v self.o
push.s ""@150
pushi.e -1
push.v self.o
conv.v.i
pop.v.s [array]self.displaytxt
push.l 2
pop.v.l local.i

:[40]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [49]

:[41]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [48]

:[42]
pushi.e -1
push.v self.o
conv.v.i
push.v [array]self.displaytxt
push.s ""@150
cmp.s.v EQ
bf [44]

:[43]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
push.v self.o
conv.v.i
pop.v.v [array]self.displaytxt
b [45]

:[44]
pushi.e -1
push.v self.o
conv.v.i
dup.i 1
push.v [array]self.displaytxt
push.s ", "@1744
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
add.v.v
pop.i.v [array]self.displaytxt

:[45]
pushi.e -1
push.v self.o
conv.v.i
push.v [array]self.displaytxt
call.i string_hash_to_newline(argc=1)
call.i string_width(argc=1)
push.v self.twidth
cmp.v.v GT
bf [47]

:[46]
push.s ""@150
pushi.e -1
push.v self.o
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]self.displaytxt

:[47]
pushi.e 1
pop.v.i self.foundone

:[48]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [40]

:[49]
pushbltn.v self.room
pushi.e 4
cmp.i.v EQ
bf [53]

:[50]
pushi.e 0
pop.v.i self.o
push.s "CURRENT ORDER:"@1749
pushi.e -1
push.v self.o
conv.v.i
pop.v.s [array]self.displaytxt
push.v self.o
push.e 1
add.i.v
pop.v.v self.o
pushglb.v global.donutlist
call.i ds_list_size(argc=1)
pop.v.v self.listlen
pushi.e 0
pop.v.i local.i

:[51]
pushloc.v local.i
push.v self.listlen
cmp.v.v LT
bf [53]

:[52]
pushloc.v local.i
pushglb.v global.donutlist
call.i ds_list_find_value(argc=2)
pop.v.v self.thename
push.l 1
conv.l.v
push.v self.thename
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
pushi.e -1
push.v self.o
conv.v.i
pop.v.v [array]self.displaytxt
push.v self.o
push.e 1
add.i.v
pop.v.v self.o
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [51]

:[53]
pushbltn.v self.room
pushi.e 3
cmp.i.v EQ
bf [56]

:[54]
pushglb.v global.dayscene
push.s "pizzatime"@360
cmp.s.v EQ
bf [56]

:[55]
pushi.e 7
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [57]

:[56]
push.e 0

:[57]
bf [61]

:[58]
pushi.e 0
pop.v.i self.displaytxt
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.displaytxt
pushi.e 0
pop.v.i self.o
push.s "CURRENT ORDER:"@1749
pushi.e -1
push.v self.o
conv.v.i
pop.v.s [array]self.displaytxt
push.v self.o
push.e 1
add.i.v
pop.v.v self.o
pushglb.v global.pizzalist
call.i ds_list_size(argc=1)
pop.v.v self.listlen
pushi.e 0
pop.v.i local.i

:[59]
pushloc.v local.i
push.v self.listlen
cmp.v.v LT
bf [61]

:[60]
pushloc.v local.i
pushglb.v global.pizzalist
call.i ds_list_find_value(argc=2)
pop.v.v self.thename
push.l 1
conv.l.v
push.v self.thename
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
pushi.e -1
push.v self.o
conv.v.i
pop.v.v [array]self.displaytxt
push.v self.o
push.e 1
add.i.v
pop.v.v self.o
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [59]

:[61]
push.v self.displaytxt
call.i array_length_1d(argc=1)
pop.v.v self.dispheight
push.v self.gap
pop.v.v self.box_x1
push.v self.gap
pop.v.v self.box_y1
push.v self.ww
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.box_x2
push.v self.gap
pushi.e 3
mul.i.v
push.v self.dispheight
push.v self.height
mul.v.v
add.v.v
pop.v.v self.box_y2
push.v self.gap
pushi.e 2
mul.i.v
pop.v.v self.text_x
push.v self.gap
pushi.e 2
mul.i.v
pop.v.v self.text_y

:[end]