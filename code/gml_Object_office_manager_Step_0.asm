.localvar 0 arguments
.localvar 1 i 548

:[0]
pushi.e 7
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [2]

:[1]
pushi.e 8
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [8]

:[4]
pushglb.v global.cutmusic
pushi.e 1
cmp.i.v EQ
bf [7]

:[5]
pushi.e 13
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [7]

:[6]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[7]
b [10]

:[8]
pushi.e 12
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [10]

:[9]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 12
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[10]
pushglb.v global.officemode
pushi.e 0
cmp.i.v EQ
bf [32]

:[11]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
pop.v.i self.vmode
pushi.e 0
pop.v.i self.dmode
pushi.e 0
pop.v.i self.noscene
push.v self.officedia
push.s "It's a good idea to check up on everyone to see how I'm doing. Where should I go?"@2062
add.s.v
pop.v.v global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [15]

:[12]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [14]

:[13]
push.s "Break room"@2063
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Front desk"@2064
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "Sales"@2065
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.s "IT"@2066
pushi.e -1
pushi.e 3
pop.v.s [array]self.choices
push.s "Customer service"@2067
pushi.e -1
pushi.e 4
pop.v.s [array]self.choices
push.s "Go back"@1842
pushi.e -1
pushi.e 5
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[14]
popenv [13]

:[15]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [32]

:[17]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [32]

:[18]
pushglb.v global.choice
dup.v 0
push.s "Go back"@1842
cmp.s.v EQ
bt [25]

:[19]
dup.v 0
push.s "Break room"@2063
cmp.s.v EQ
bt [26]

:[20]
dup.v 0
push.s "Front desk"@2064
cmp.s.v EQ
bt [27]

:[21]
dup.v 0
push.s "Sales"@2065
cmp.s.v EQ
bt [28]

:[22]
dup.v 0
push.s "IT"@2066
cmp.s.v EQ
bt [29]

:[23]
dup.v 0
push.s "Customer service"@2067
cmp.s.v EQ
bt [30]

:[24]
b [31]

:[25]
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [31]

:[26]
pushi.e 15
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [31]

:[27]
pushi.e 1
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [31]

:[28]
pushi.e 2
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [31]

:[29]
pushi.e 3
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [31]

:[30]
pushi.e 4
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [31]

:[31]
popz.v

:[32]
pushglb.v global.officemode
pushi.e 1
cmp.i.v EQ
bf [71]

:[33]
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [35]

:[34]
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v

:[35]
pushglb.v global.frontscene
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [47]

:[36]
push.v self.sceneok
pushi.e 0
cmp.i.v EQ
bf [44]

:[37]
pushglb.v global.frontscene
push.s "frontvore"@510
cmp.s.v EQ
bf [44]

:[38]
push.l 1
conv.l.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
push.v self.keystring1
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bt [41]

:[39]
push.v self.keystring2
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bt [41]

:[40]
push.l 7
conv.l.v
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
b [42]

:[41]
push.e 1

:[42]
bf [44]

:[43]
pushi.e 1
conv.i.v
pushglb.v global.frontscene
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
pop.v.i self.noscene

:[44]
push.v self.noscene
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
pushglb.v global.frontscene
call.i callincident(argc=1)
popz.v
pushi.e 1
pop.v.i self.sceneok

:[46]
b [71]

:[47]
push.s "abusedcandybowl"@499
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
push.s "You happen to catch Pearl hide the candybowl before you can make it to her desk..."@2069
pop.v.s self.abuse
b [50]

:[49]
push.s ""@150
pop.v.s self.abuse

:[50]
push.s "The entranceway of the office. You have to pass by the receptionist desk and then the wall of private offices, like HR and Marketing, to the cubicles beyond. "@2071
push.v self.abuse
add.v.s
pop.v.v global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [58]

:[51]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [57]

:[52]
pushi.e 0
pop.v.i local.i
push.s "Chloeate"@465
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
push.s "Talk to Chloe"@2072
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[54]
push.s "Pearlate"@469
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
push.s "Talk to Pearl"@2073
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[56]
push.s "Talk to Levi"@2074
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "Go back"@1842
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[57]
popenv [52]

:[58]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [71]

:[60]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [71]

:[61]
pushglb.v global.choice
dup.v 0
push.s "Go back"@1842
cmp.s.v EQ
bt [66]

:[62]
dup.v 0
push.s "Talk to Chloe"@2072
cmp.s.v EQ
bt [67]

:[63]
dup.v 0
push.s "Talk to Pearl"@2073
cmp.s.v EQ
bt [68]

:[64]
dup.v 0
push.s "Talk to Levi"@2074
cmp.s.v EQ
bt [69]

:[65]
b [70]

:[66]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [70]

:[67]
pushi.e 21
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [70]

:[68]
pushi.e 26
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [70]

:[69]
pushi.e 5
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [70]

:[70]
popz.v

:[71]
pushglb.v global.officemode
pushi.e 2
cmp.i.v EQ
bf [105]

:[72]
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [74]

:[73]
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v

:[74]
pushglb.v global.salesscene
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [86]

:[75]
push.v self.sceneok
pushi.e 0
cmp.i.v EQ
bf [83]

:[76]
pushglb.v global.salesscene
push.s "salesvore"@511
cmp.s.v EQ
bf [83]

:[77]
push.l 1
conv.l.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
push.v self.keystring1
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bt [80]

:[78]
push.v self.keystring2
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bt [80]

:[79]
push.l 7
conv.l.v
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
b [81]

:[80]
push.e 1

:[81]
bf [83]

:[82]
pushi.e 1
conv.i.v
pushglb.v global.salesscene
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
pop.v.i self.noscene

:[83]
push.v self.noscene
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
pushglb.v global.salesscene
call.i callincident(argc=1)
popz.v
pushi.e 1
pop.v.i self.sceneok

:[85]
b [105]

:[86]
push.s "The sales department. Evereyone's always hard at work earning that commission. But what are we even selling here??? Nobody bothered to explain it to me and at this point? I'm too afraid to ask."@2075
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [94]

:[87]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [93]

:[88]
pushi.e 0
pop.v.i local.i
push.s "Jesseate"@470
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [90]

:[89]
push.s "Talk to Jesse"@2076
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[90]
push.s "Kathyate"@473
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [92]

:[91]
push.s "Talk to Kathy"@2077
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[92]
push.s "Go back"@1842
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[93]
popenv [88]

:[94]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [105]

:[96]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [105]

:[97]
pushglb.v global.choice
dup.v 0
push.s "Go back"@1842
cmp.s.v EQ
bt [101]

:[98]
dup.v 0
push.s "Talk to Jesse"@2076
cmp.s.v EQ
bt [102]

:[99]
dup.v 0
push.s "Talk to Kathy"@2077
cmp.s.v EQ
bt [103]

:[100]
b [104]

:[101]
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [104]

:[102]
pushi.e 27
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [104]

:[103]
pushi.e 28
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [104]

:[104]
popz.v

:[105]
pushglb.v global.officemode
pushi.e 3
cmp.i.v EQ
bf [139]

:[106]
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [108]

:[107]
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v

:[108]
pushglb.v global.itscene
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [120]

:[109]
push.v self.sceneok
pushi.e 0
cmp.i.v EQ
bf [117]

:[110]
pushglb.v global.itscene
push.s "itvore"@512
cmp.s.v EQ
bf [117]

:[111]
push.l 1
conv.l.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
push.v self.keystring1
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bt [114]

:[112]
push.v self.keystring2
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bt [114]

:[113]
push.l 7
conv.l.v
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
b [115]

:[114]
push.e 1

:[115]
bf [117]

:[116]
pushi.e 1
conv.i.v
pushglb.v global.itscene
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
pop.v.i self.noscene

:[117]
push.v self.noscene
pushi.e 0
cmp.i.v EQ
bf [119]

:[118]
pushglb.v global.itscene
call.i callincident(argc=1)
popz.v
pushi.e 1
pop.v.i self.sceneok

:[119]
b [139]

:[120]
push.s "Downstairs is all IT and development. There's a few private offices but a good deal of the floor is taken up by servers down here. It feels unnaturally chilly in there...eerie."@2078
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [128]

:[121]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [127]

:[122]
pushi.e 0
pop.v.i local.i
push.s "Victoriaate"@467
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [124]

:[123]
push.s "Talk to Victoria"@2079
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[124]
push.s "Pollyate"@472
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [126]

:[125]
push.s "Talk to Polly"@2080
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[126]
push.s "Go back"@1842
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[127]
popenv [122]

:[128]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [139]

:[130]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [139]

:[131]
pushglb.v global.choice
dup.v 0
push.s "Go back"@1842
cmp.s.v EQ
bt [135]

:[132]
dup.v 0
push.s "Talk to Victoria"@2079
cmp.s.v EQ
bt [136]

:[133]
dup.v 0
push.s "Talk to Polly"@2080
cmp.s.v EQ
bt [137]

:[134]
b [138]

:[135]
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [138]

:[136]
pushi.e 23
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [138]

:[137]
pushi.e 22
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [138]

:[138]
popz.v

:[139]
pushglb.v global.officemode
pushi.e 4
cmp.i.v EQ
bf [173]

:[140]
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [142]

:[141]
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v

:[142]
pushglb.v global.custscene
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [154]

:[143]
push.v self.sceneok
pushi.e 0
cmp.i.v EQ
bf [151]

:[144]
pushglb.v global.custscene
push.s "custvore"@513
cmp.s.v EQ
bf [151]

:[145]
push.l 1
conv.l.v
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
push.v self.keystring1
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bt [148]

:[146]
push.v self.keystring2
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bt [148]

:[147]
push.l 7
conv.l.v
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
b [149]

:[148]
push.e 1

:[149]
bf [151]

:[150]
pushi.e 1
conv.i.v
pushglb.v global.custscene
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
pop.v.i self.noscene

:[151]
push.v self.noscene
pushi.e 0
cmp.i.v EQ
bf [153]

:[152]
pushglb.v global.custscene
call.i callincident(argc=1)
popz.v
pushi.e 1
pop.v.i self.sceneok

:[153]
b [173]

:[154]
push.s "Here's customer service. The phones are ringing off the wall! But nobody seems to be in any hurry to pick them up...I don't blame them."@2081
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [162]

:[155]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [161]

:[156]
pushi.e 0
pop.v.i local.i
push.s "Erikaate"@471
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [158]

:[157]
push.s "Talk to Erika"@2082
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[158]
push.s "Stacyate"@466
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [160]

:[159]
push.s "Talk to Stacy"@2083
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[160]
push.s "Go back"@1842
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[161]
popenv [156]

:[162]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [164]

:[163]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [173]

:[164]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [173]

:[165]
pushglb.v global.choice
dup.v 0
push.s "Go back"@1842
cmp.s.v EQ
bt [169]

:[166]
dup.v 0
push.s "Talk to Erika"@2082
cmp.s.v EQ
bt [170]

:[167]
dup.v 0
push.s "Talk to Stacy"@2083
cmp.s.v EQ
bt [171]

:[168]
b [172]

:[169]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [172]

:[170]
pushi.e 24
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [172]

:[171]
pushi.e 25
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [172]

:[172]
popz.v

:[173]
pushglb.v global.officemode
pushi.e 5
cmp.i.v EQ
bf [end]

:[174]
push.s "leviintro"@349
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [178]

:[175]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [177]

:[176]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[177]
push.s "Levi"@914
pop.v.s global.boxname
push.s "leviintro"@349
conv.s.v
call.i callscene(argc=1)
popz.v
b [end]

:[178]
push.v self.vmode
pushi.e 0
cmp.i.v EQ
bf [216]

:[179]
push.s "The boss dropped you in here blind, didn’t he? Well lucky you, I’ve got time to show you the ropes~"@2084
pushi.e -1
pushi.e 0
pop.v.s [array]self.fattxt
push.s "Something seems different about you. Did you get a haircut? New shoes? Perhaps expanded your horizons a bit?"@2086
pushi.e -1
pushi.e 1
pop.v.s [array]self.fattxt
push.s "I'm required by HR to tell you about our maternity leave options. I have this pamphl- oh? You're not pregnant? How embarrassing... for you."@2087
pushi.e -1
pushi.e 2
pop.v.s [array]self.fattxt
push.s "Well well well, someone is acclimating quite nicely. Keep it up and you might just be big enough to bully someone else around. Keep up the good work."@2088
pushi.e -1
pushi.e 3
pop.v.s [array]self.fattxt
push.s "Feeling large and in charge? Don't get too big for your britches. There's always someone bigger, and hungrier. You're still a small fry in this office."@2089
pushi.e -1
pushi.e 4
pop.v.s [array]self.fattxt
push.s "What's wrong? Lose you way to the cafeteria? I'll notify them you're coming. Would hate for them to run out before you waddle to the elevator."@2090
pushi.e -1
pushi.e 5
pop.v.s [array]self.fattxt
push.s "I've been notified that someone needs a new cubicle. Apparently, they got too fat to fit between the cubicle walls. Any idea who that could be, tubby?"@2091
pushi.e -1
pushi.e 6
pop.v.s [array]self.fattxt
push.s "Woah there. How did you even get to work? A forklift? I almost mistook you for the boss, but he's bigger than you even now. Still, I'm impressed. How's it feel fatty? To be swimming in the product of your own gluttony. I bet you love it. Any bigger and you'd make a perfect snack."@2092
pushi.e -1
pushi.e 7
pop.v.s [array]self.fattxt
push.s "Levi eyes you hungrily. You don't think you should bother him right now."@2093
pushi.e -1
pushi.e 8
pop.v.s [array]self.fattxt
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [181]

:[180]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[181]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v LT
bf [183]

:[182]
push.s "Levi"@914
pop.v.s global.boxname
b [184]

:[183]
push.s ""@150
pop.v.s global.boxname

:[184]
pushi.e -1
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]self.fattxt
pop.v.v global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [198]

:[185]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [197]

:[186]
pushi.e 0
pop.v.i local.i
push.s "Earning money"@2094
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "Making friends"@2095
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "A warning"@2096
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "fridgescene"@346
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [188]

:[187]
push.s "accusetime"@380
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [189]

:[188]
push.e 0

:[189]
bf [191]

:[190]
push.s "The fridge"@2097
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[191]
push.s "airscene"@361
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [193]

:[192]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [194]

:[193]
push.e 0

:[194]
bf [196]

:[195]
push.s "The air"@2098
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[196]
push.s "Go back"@1842
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[197]
popenv [186]

:[198]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [200]

:[199]
pushi.e 10
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 1
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [215]

:[200]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [215]

:[201]
pushglb.v global.choice
dup.v 0
push.s "Go back"@1842
cmp.s.v EQ
bt [208]

:[202]
dup.v 0
push.s "Earning money"@2094
cmp.s.v EQ
bt [209]

:[203]
dup.v 0
push.s "Making friends"@2095
cmp.s.v EQ
bt [210]

:[204]
dup.v 0
push.s "A warning"@2096
cmp.s.v EQ
bt [211]

:[205]
dup.v 0
push.s "The fridge"@2097
cmp.s.v EQ
bt [212]

:[206]
dup.v 0
push.s "The air"@2098
cmp.s.v EQ
bt [213]

:[207]
b [214]

:[208]
pushi.e 10
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 1
pop.v.i global.officemode
call.i madechoice(argc=0)
popz.v
b [214]

:[209]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [214]

:[210]
pushi.e 2
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [214]

:[211]
pushi.e 3
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [214]

:[212]
pushi.e 4
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [214]

:[213]
pushi.e 5
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [214]

:[214]
popz.v

:[215]
b [end]

:[216]
push.v self.vmode
pushi.e 1
cmp.i.v EQ
bf [218]

:[217]
push.s "Oh that’s easy. They base your budget off a cut of the production at the end of the day. That means the more productive everyone’s been, the more you earn. And it’s your job to figure out how to whip everyone into productivity machines. "@2099
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "In my experience: A fat monster is a productive monster. Seems the bigger they are the more they get done. Probably because they’re too heavy to get up out of their desk~ And there’s plenty of ways to get fat in a sedentary job position. Just keep the vending machines stocked and donuts in the breakroom and, for the most part? They’ll do it themselves."@2100
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "However, it’s most effective to try a more hands-on approach (But not literally. Keep your hands to yourself. HR violation.) just bring the snacks directly to them~ Saves them the calories of waddling back and forth from the breakroom. "@2101
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Don’t overdo it though, an overstuffed monster won’t be as productive at the end of the day. But, they will get fatter, quicker. It’s up to you how you want to balance that."@2102
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Oh, and another big help is paying off the efficiency upgrades the boss lumped on you. Funny how doing your job makes your job easier~ The more fancy tech we have around here the faster we can get things done."@2103
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen

:[218]
push.v self.vmode
pushi.e 2
cmp.i.v EQ
bf [220]

:[219]
push.s "Networking is crucial in any job environment. Especially when there’s the constant, looming threat of being eaten. But no pressure~"@2104
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "The bunch we have here are all kind of jerks. So you got your work cut out for you. But the way to any monster’s heart is through their stomach~ Usually if you heap a bunch of snacks on them they’ll come around. "@2105
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Not just any snacks though, they’re particular. And they’ll tell you if they don’t like something. However, to find out what they DO like will take some legwork. Talk to everyone around the office, listen to the gossip (not that I have to tell your nosy self that) and you should be able to figure everyone out. You’re clever~"@2106
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Monsters don’t just want the same things over and over again though. For best results try to bring a variety of gifts. Gifts will lose their effectiveness if you’ve already given at least one of the same thing that day, but they’ll start over on the next day."@2107
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Once you’re friends with a monster they may even hang out with you more often. So just suck up to everyone like your life depends on it~ Cuz it kind of does."@2108
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen

:[220]
push.v self.vmode
pushi.e 3
cmp.i.v EQ
bf [222]

:[221]
push.s "I'm sure you think that the world revolves around you, but I got news for you my lil amigo. These girls know how to fend for themselves. You install a new snack machine or leave the donuts out; they'll get into it. There isn't a person in this office who doesn't love stuffing their face. So, don't be surprised if the next time you see someone, they're a few sizes bigger."@2109
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "And a word of warning. Just because these gals are getting bigger doesn't mean they're getting friendlier. If you're not the one handing them that candy bar, then you're not getting anything out of them growing. You're just making yourself a target. Butter these girls up or wander around at your own risk. They get hungry"@2110
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen

:[222]
push.v self.vmode
pushi.e 4
cmp.i.v EQ
bf [224]

:[223]
push.s "What? You think I ate the fridge? You insult me. I had a food van or two before I even got to work today. Positively stuffed. No, only a real fat butterball would eat that fridge. Ask around a little more, you'll figure it out."@2111
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen

:[224]
push.v self.vmode
pushi.e 5
cmp.i.v EQ
bf [226]

:[225]
push.s "Christ it's hot in here. The air conditioning must be out again. Do a monster a favor and get that shit fixed. If you don't, I can guarantee you'll start to get quite unpopular around here. Plus, I told you to."@2112
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen

:[226]
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [228]

:[227]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [229]

:[228]
push.e 0

:[229]
bf [end]

:[230]
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v

:[end]