.localvar 0 arguments
.localvar 1 i 487

:[0]
pushi.e 0
pop.v.i local.i
push.s "day: "@1801
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "gold: "@1803
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
pushloc.v local.i
pop.v.v self.startweight
push.s "Player weight: "@1805
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 0
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "chloe weight: "@1806
push.l 2
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 2
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "pearl weight: "@1807
push.l 2
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 3
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "kathy weight: "@1808
push.l 2
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 6
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "jesse weight: "@1809
push.l 2
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 7
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "vic weight: "@1810
push.l 2
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 5
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "erika weight: "@1811
push.l 2
conv.l.v
push.l 4
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 4
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "stacy weight: "@1812
push.l 2
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 8
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "polly weight: "@1813
push.l 2
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 9
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
pushloc.v local.i
pop.v.v self.starttrust
push.s "chloe trust: "@1814
push.l 3
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 2
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "pearl trust: "@1815
push.l 3
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 3
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "kathy trust: "@1816
push.l 3
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 6
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "jesse trust: "@1817
push.l 3
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 7
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "vic trust: "@1818
push.l 3
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 5
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "erika trust: "@1819
push.l 3
conv.l.v
push.l 4
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 4
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "stacy trust: "@1820
push.l 3
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 8
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "polly trust: "@1821
push.l 3
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i string(argc=1)
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.settingstext
push.l 9
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.l [array]self.chararray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.v self.settingstext
call.i array_length_1d(argc=1)
pop.v.v self.settingslen

:[end]