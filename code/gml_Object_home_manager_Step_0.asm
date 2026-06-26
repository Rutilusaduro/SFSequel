.localvar 0 arguments
.localvar 1 i 503
.localvar 2 a 509
.localvar 3 o 514

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
pushglb.v global.dayscene
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushglb.v global.dayscene
call.i callscene(argc=1)
popz.v
b [48]

:[12]
push.v self.roommode
pushi.e 0
cmp.i.v EQ
bf [48]

:[13]
pushi.e 3
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [15]

:[14]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[15]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [17]

:[16]
pushi.e 6
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[17]
pushi.e 9
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [19]

:[18]
pushi.e 9
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[19]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 11
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [21]

:[20]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[21]
pushi.e 9
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [23]

:[22]
pushi.e 9
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[23]
pushi.e 0
pop.v.i self.vmode
pushi.e 0
pop.v.i self.dmode
pushi.e 0
pop.v.i self.umode
pushi.e 0
pop.v.i self.savespot
push.s "My office...What should we work on?"@1829
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [31]

:[24]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [30]

:[25]
pushi.e 0
pop.v.i local.i
push.s "Explore the office"@1830
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
pushglb.v global.bossnotif
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.s "Talk to the boss"@1737
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[27]
push.s "Manage office resources"@1831
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "Have a snack"@1832
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "memories"@350
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.s "Memories"@1833
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[29]
push.s "Game options"@1834
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "Go home"@1835
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[30]
popenv [25]

:[31]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [48]

:[32]
pushglb.v global.choice
dup.v 0
push.s "Explore the office"@1830
cmp.s.v EQ
bt [40]

:[33]
dup.v 0
push.s "Go home"@1835
cmp.s.v EQ
bt [41]

:[34]
dup.v 0
push.s "Manage office resources"@1831
cmp.s.v EQ
bt [42]

:[35]
dup.v 0
push.s "Talk to the boss"@1737
cmp.s.v EQ
bt [43]

:[36]
dup.v 0
push.s "Have a snack"@1832
cmp.s.v EQ
bt [44]

:[37]
dup.v 0
push.s "Memories"@1833
cmp.s.v EQ
bt [45]

:[38]
dup.v 0
push.s "Game options"@1834
cmp.s.v EQ
bt [46]

:[39]
b [47]

:[40]
pushi.e 16
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [47]

:[41]
pushi.e 2
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [47]

:[42]
pushi.e 3
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [47]

:[43]
pushi.e 18
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [47]

:[44]
pushi.e 5
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [47]

:[45]
pushi.e 6
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [47]

:[46]
pushi.e 7
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [47]

:[47]
popz.v

:[48]
push.v self.roommode
pushi.e 7
cmp.i.v EQ
bf [83]

:[49]
push.v self.vmode
pushi.e 0
cmp.i.v EQ
bf [72]

:[50]
push.s "Change sound or, go home?"@1836
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [57]

:[51]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [56]

:[52]
pushglb.v global.muted
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.s "Unmute game sounds"@1837
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
b [55]

:[54]
push.s "Mute game sounds"@1838
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices

:[55]
push.s "Exit to main menu"@1839
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "Back to game"@1840
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[56]
popenv [52]

:[57]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [72]

:[59]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [72]

:[60]
pushglb.v global.choice
dup.v 0
push.s "Mute game sounds"@1838
cmp.s.v EQ
bt [65]

:[61]
dup.v 0
push.s "Unmute game sounds"@1837
cmp.s.v EQ
bt [65]

:[62]
dup.v 0
push.s "Exit to main menu"@1839
cmp.s.v EQ
bt [69]

:[63]
dup.v 0
push.s "Back to game"@1840
cmp.s.v EQ
bt [70]

:[64]
b [71]

:[65]
pushglb.v global.muted
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i audio_set_master_gain(argc=2)
popz.v
pushi.e 0
pop.v.i global.muted
b [68]

:[67]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i audio_set_master_gain(argc=2)
popz.v
pushi.e 1
pop.v.i global.muted

:[68]
call.i madechoice(argc=0)
popz.v
b [71]

:[69]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [71]

:[70]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [71]

:[71]
popz.v

:[72]
push.v self.vmode
pushi.e 1
cmp.i.v EQ
bf [83]

:[73]
push.s "Are you sure? Unsaved progress will be lost. You will start the day over next time you open the game."@1841
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [77]

:[74]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [76]

:[75]
push.s "Go back"@1842
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "To main menu"@1843
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[76]
popenv [75]

:[77]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [83]

:[79]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [83]

:[80]
pushglb.v global.choice
push.s "Go back"@1842
cmp.s.v EQ
bf [82]

:[81]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [83]

:[82]
pushi.e 2
conv.i.v
call.i room_goto(argc=1)
popz.v

:[83]
push.v self.roommode
pushi.e 2
cmp.i.v EQ
bf [98]

:[84]
push.v self.vmode
pushi.e 0
cmp.i.v EQ
bf [95]

:[85]
push.s "Finish the day, go home and save?"@1844
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [89]

:[86]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [88]

:[87]
push.s "Absolutely"@1845
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Nevermind"@1846
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[88]
popenv [87]

:[89]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [95]

:[91]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [95]

:[92]
pushglb.v global.choice
push.s "Nevermind"@1846
cmp.s.v EQ
bf [94]

:[93]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [95]

:[94]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v

:[95]
push.v self.vmode
pushi.e 1
cmp.i.v EQ
bf [98]

:[96]
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [98]

:[97]
push.s "dayend"@855
conv.s.v
call.i callscene(argc=1)
popz.v

:[98]
push.v self.roommode
pushi.e 6
cmp.i.v EQ
bf [162]

:[99]
push.v self.vmode
pushi.e 0
cmp.i.v EQ
bf [159]

:[100]
push.s "I've saved some photos from my lunches with the girls. Who's do I want to open?"@1847
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [120]

:[101]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [119]

:[102]
pushi.e 0
pop.v.i local.i
push.s "finalchloe"@455
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
push.s "Chloe"@619
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[104]
push.s "finalpearl"@459
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [106]

:[105]
push.s "Pearl"@620
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[106]
push.s "finalkathy"@462
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
push.s "Kathy"@623
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[108]
push.s "finaljesse"@463
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
push.s "Jesse"@624
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[110]
push.s "finalvic"@457
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
push.s "Victoria"@622
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[112]
push.s "finalerika"@460
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
push.s "Erika"@621
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[114]
push.s "finalstacy"@456
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [116]

:[115]
push.s "Stacy"@625
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[116]
push.s "finalpolly"@461
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
push.s "Polly"@626
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[118]
push.s "Go back"@1842
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[119]
popenv [102]

:[120]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [159]

:[122]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [159]

:[123]
pushglb.v global.choice
dup.v 0
push.s "Chloe"@619
cmp.s.v EQ
bt [133]

:[124]
dup.v 0
push.s "Pearl"@620
cmp.s.v EQ
bt [136]

:[125]
dup.v 0
push.s "Kathy"@623
cmp.s.v EQ
bt [139]

:[126]
dup.v 0
push.s "Jesse"@624
cmp.s.v EQ
bt [142]

:[127]
dup.v 0
push.s "Victoria"@622
cmp.s.v EQ
bt [145]

:[128]
dup.v 0
push.s "Erika"@621
cmp.s.v EQ
bt [148]

:[129]
dup.v 0
push.s "Stacy"@625
cmp.s.v EQ
bt [151]

:[130]
dup.v 0
push.s "Polly"@626
cmp.s.v EQ
bt [154]

:[131]
dup.v 0
push.s "Go back"@1842
cmp.s.v EQ
bt [157]

:[132]
b [158]

:[133]
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
conv.v.i
pushenv [135]

:[134]
pushi.e 46
pop.v.i self.sprite_index

:[135]
popenv [134]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [158]

:[136]
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
conv.v.i
pushenv [138]

:[137]
pushi.e 47
pop.v.i self.sprite_index

:[138]
popenv [137]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [158]

:[139]
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
conv.v.i
pushenv [141]

:[140]
pushi.e 48
pop.v.i self.sprite_index

:[141]
popenv [140]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [158]

:[142]
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
conv.v.i
pushenv [144]

:[143]
pushi.e 49
pop.v.i self.sprite_index

:[144]
popenv [143]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [158]

:[145]
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
conv.v.i
pushenv [147]

:[146]
pushi.e 51
pop.v.i self.sprite_index

:[147]
popenv [146]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [158]

:[148]
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
conv.v.i
pushenv [150]

:[149]
pushi.e 50
pop.v.i self.sprite_index

:[150]
popenv [149]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [158]

:[151]
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
conv.v.i
pushenv [153]

:[152]
pushi.e 52
pop.v.i self.sprite_index

:[153]
popenv [152]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [158]

:[154]
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
conv.v.i
pushenv [156]

:[155]
pushi.e 53
pop.v.i self.sprite_index

:[156]
popenv [155]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [158]

:[157]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [158]

:[158]
popz.v

:[159]
push.v self.vmode
pushi.e 1
cmp.i.v EQ
bf [162]

:[160]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [162]

:[161]
pushi.e 13
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i self.vmode

:[162]
push.v self.roommode
pushi.e 5
cmp.i.v EQ
bf [205]

:[163]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 9
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [165]

:[164]
pushi.e 9
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[165]
pushi.e 11
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [169]

:[166]
pushi.e 11
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [168]

:[167]
push.l 0
pop.v.l self.me

:[168]
popenv [167]

:[169]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v NEQ
bf [203]

:[170]
push.l 13
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [172]

:[171]
push.s "*Urp*...I'm already kind of full. But a snack still sounds kind of good..."@1848
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
b [173]

:[172]
push.s "I guess I am kind of hungry..."@1849
pushi.e -5
pushi.e 0
pop.v.s [array]global.text

:[173]
pushi.e 1
pop.v.i global.giving
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [175]

:[174]
pushi.e 0
pop.v.i global.giving
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i self.roommode
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
call.i madechoice(argc=0)
popz.v
b [202]

:[175]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [202]

:[176]
pushi.e 0
conv.i.v
pushglb.v global.invent_choice
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pop.v.v self.mygift
push.v self.mygift
pushi.e 0
cmp.i.v NEQ
bf [202]

:[177]
pushi.e 33
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [179]

:[178]
pushi.e 33
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[179]
push.v self.mygift
push.l 8
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i ds_list_find_index(argc=2)
pop.v.v self.past
push.v self.past
pushi.e -1
cmp.i.v NEQ
bf [181]

:[180]
pushi.e 1
pop.v.i self.hadit
b [182]

:[181]
pushi.e 0
pop.v.i self.hadit

:[182]
push.l 0
conv.l.v
push.v self.mygift
call.i give_gift(argc=2)
pop.v.v self.GIVEGIFT
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [184]

:[183]
push.v other.GIVEGIFT
pop.v.v self.image_index

:[184]
popenv [183]
push.v self.GIVEGIFT
pushi.e 3
cmp.i.v EQ
bf [194]

:[185]
push.v self.hadit
pushi.e 0
cmp.i.v EQ
bf [190]

:[186]
push.l 13
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [188]

:[187]
push.s "*BUARP* I think I've seriously overeaten today...but that was so good!!!"@1855
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]global.text
b [189]

:[188]
push.s "Oooh that was so good!!! I really needed that."@1856
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]global.text

:[189]
b [193]

:[190]
push.l 13
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [192]

:[191]
push.s "*urp* Maybe I've had a few too many of these today..."@1857
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]global.text
b [193]

:[192]
push.s "I've had some of this today already...But another can't hurt?"@1858
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]global.text

:[193]
b [202]

:[194]
push.v self.hadit
pushi.e 0
cmp.i.v EQ
bf [199]

:[195]
push.l 13
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [197]

:[196]
push.s "*URP* I'm not sure I really liked that..."@1859
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]global.text
b [198]

:[197]
push.s "Eh...Maybe this isn't my thing."@1860
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]global.text

:[198]
b [202]

:[199]
push.l 13
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [201]

:[200]
push.s "*BUARP* Ungh...I really don't want any more of these."@1861
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]global.text
b [202]

:[201]
push.s "Yeah, I don't really like these..."@1862
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]global.text

:[202]
b [205]

:[203]
pushi.e 0
pop.v.i global.giving
push.s "Whoops, don't have anything left..."@1863
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [205]

:[204]
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i self.roommode
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
call.i madechoice(argc=0)
popz.v

:[205]
push.v self.roommode
pushi.e 3
cmp.i.v EQ
bf [299]

:[206]
push.v self.vmode
pushi.e 0
cmp.i.v EQ
bf [242]

:[207]
pushi.e 0
pop.v.i self.dmode
pushi.e 0
pop.v.i self.umode
pushi.e 0
pop.v.i self.savespot
push.s "Here I can change some of the equipment and rules about the office."@1864
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [219]

:[208]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [218]

:[209]
pushi.e 0
pop.v.i local.i
push.s "fullequip"@410
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [211]

:[210]
push.s "Pay off equipment"@1865
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[211]
push.s "fullvend"@391
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [213]

:[212]
push.s "Upgrade vending"@1866
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[213]
push.s "Manage cafe"@1867
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "Mandatory fitness program"@1868
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "candownsize"@355
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [215]

:[214]
push.s "Downsizing"@1869
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[215]
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [217]

:[216]
push.s "Monster rescue"@1870
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[217]
push.s "Go back"@1842
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[218]
popenv [209]

:[219]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [221]

:[220]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [242]

:[221]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [242]

:[222]
pushglb.v global.choice
dup.v 0
push.s "Pay off equipment"@1865
cmp.s.v EQ
bt [231]

:[223]
dup.v 0
push.s "Upgrade vending"@1866
cmp.s.v EQ
bt [232]

:[224]
dup.v 0
push.s "Manage cafe"@1867
cmp.s.v EQ
bt [233]

:[225]
dup.v 0
push.s "Downsizing"@1869
cmp.s.v EQ
bt [236]

:[226]
dup.v 0
push.s "Mandatory fitness program"@1868
cmp.s.v EQ
bt [237]

:[227]
dup.v 0
push.s "Order snacks"@1871
cmp.s.v EQ
bt [238]

:[228]
dup.v 0
push.s "Monster rescue"@1870
cmp.s.v EQ
bt [239]

:[229]
dup.v 0
push.s "Go back"@1842
cmp.s.v EQ
bt [240]

:[230]
b [241]

:[231]
pushi.e 2
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [241]

:[232]
pushi.e 3
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [241]

:[233]
pushi.e 4
pop.v.i self.vmode
push.s "fullcafe"@390
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [235]

:[234]
pushi.e 4
pop.v.i self.umode

:[235]
call.i madechoice(argc=0)
popz.v
b [241]

:[236]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [241]

:[237]
pushi.e 5
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [241]

:[238]
pushi.e 6
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [241]

:[239]
pushi.e 7
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [241]

:[240]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [241]

:[241]
popz.v

:[242]
push.v self.vmode
pushi.e 1
cmp.i.v EQ
bf [299]

:[243]
push.v self.dmode
pushi.e 0
cmp.i.v EQ
bf [259]

:[244]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.s "Who are we downsizing?"@1872
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [253]

:[245]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.downarray
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [252]

:[246]
pushi.e 0
pop.v.i local.a
push.l 2
pop.v.l local.i

:[247]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [251]

:[248]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.downsizetag
push.v self.downsizetag
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [250]

:[249]
push.s "downsize "@1874
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "?"@1875
add.s.v
pop.v.v self.choicetag
push.v self.choicetag
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.v [array]self.choices
pushloc.v local.i
pushi.e -2
pushloc.v local.a
conv.v.i
pop.v.v [array]self.downarray
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[250]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [247]

:[251]
push.s "Go back"@1842
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[252]
popenv [246]

:[253]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [255]

:[254]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [259]

:[255]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [259]

:[256]
pushglb.v global.choice
push.s "Go back"@1842
cmp.s.v EQ
bf [258]

:[257]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [259]

:[258]
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.downarray
pop.v.v self.downsze
push.v self.dmode
push.e 1
add.i.v
pop.v.v self.dmode
call.i madechoice(argc=0)
popz.v

:[259]
push.v self.dmode
pushi.e 1
cmp.i.v EQ
bf [278]

:[260]
push.s "Downsize "@1877
push.l 1
conv.l.v
push.v self.downsze
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s " into who?"@1878
add.s.v
pop.v.v global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [272]

:[261]
pushi.e 0
pop.v.i self.downarray
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.downarray
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [271]

:[262]
pushi.e 0
pop.v.i local.a
push.l 2
pop.v.l local.i

:[263]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [270]

:[264]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.downsizetag
push.v self.downsizetag
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [266]

:[265]
push.v other.downsze
pushloc.v local.i
cmp.v.v NEQ
b [267]

:[266]
push.e 0

:[267]
bf [269]

:[268]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.v [array]self.choices
pushloc.v local.i
pushi.e -2
pushloc.v local.a
conv.v.i
pop.v.v [array]self.downarray
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[269]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [263]

:[270]
push.s "Myself"@1879
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.choices
push.l 0
pushi.e -2
pushloc.v local.a
conv.v.i
pop.v.l [array]self.downarray
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
push.s "Go back"@1842
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[271]
popenv [262]

:[272]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [274]

:[273]
pushi.e 0
pop.v.i self.dmode
call.i madechoice(argc=0)
popz.v
b [278]

:[274]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [278]

:[275]
pushglb.v global.choice
push.s "Go back"@1842
cmp.s.v EQ
bf [277]

:[276]
pushi.e 0
pop.v.i self.dmode
call.i madechoice(argc=0)
popz.v
b [278]

:[277]
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.downarray
pop.v.v self.upsze
push.v self.dmode
push.e 1
add.i.v
pop.v.v self.dmode
call.i madechoice(argc=0)
popz.v

:[278]
push.v self.dmode
pushi.e 2
cmp.i.v EQ
bf [289]

:[279]
push.s "Downsize "@1877
push.l 1
conv.l.v
push.v self.downsze
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s " into "@1880
add.s.v
push.l 1
conv.l.v
push.v self.upsze
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
push.s "?"@1875
add.s.v
pop.v.v global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [283]

:[280]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [282]

:[281]
push.s "Yes"@668
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "No"@667
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[282]
popenv [281]

:[283]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [285]

:[284]
pushi.e 0
pop.v.i self.dmode
call.i madechoice(argc=0)
popz.v
b [289]

:[285]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [289]

:[286]
pushglb.v global.choice
push.s "No"@667
cmp.s.v EQ
bf [288]

:[287]
pushi.e 0
pop.v.i self.dmode
call.i madechoice(argc=0)
popz.v
b [289]

:[288]
push.v self.dmode
push.e 1
add.i.v
pop.v.v self.dmode
call.i madechoice(argc=0)
popz.v

:[289]
push.v self.dmode
pushi.e 3
cmp.i.v EQ
bf [299]

:[290]
push.l 1
conv.l.v
push.v self.downsze
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.downsizetag
push.v self.upsze
push.l 0
cmp.l.v NEQ
bf [292]

:[291]
push.l 1
conv.l.v
push.v self.upsze
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
push.v self.downsze
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.voretag
pushi.e 1
conv.i.v
push.v self.voretag
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [293]

:[292]
push.s "youate"@1005
push.l 1
conv.l.v
push.v self.downsze
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
pop.v.v self.voretag
pushi.e 1
conv.i.v
push.v self.voretag
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[293]
pushi.e 1
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 4
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [295]

:[294]
push.v self.downsizetag
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
b [296]

:[295]
push.e 0

:[296]
bf [298]

:[297]
pushi.e 0
pop.v.i self.downsze
pushi.e 0
pop.v.i self.upsze
pushi.e 0
pop.v.i self.dmode
exit.i

:[298]
push.s "downsizing"@810
conv.s.v
call.i callscene(argc=1)
popz.v

:[299]
push.v self.roommode
pushi.e 3
cmp.i.v EQ
bf [362]

:[300]
push.v self.vmode
pushi.e 3
cmp.i.v EQ
bf [362]

:[301]
push.v self.umode
pushi.e 0
cmp.i.v EQ
bf [335]

:[302]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.vendingcost
cmp.v.v GTE
bf [333]

:[303]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [319]

:[304]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [318]

:[305]
pushi.e 0
pop.v.i local.i
push.s "vendslot1"@383
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [307]

:[306]
push.s "Purchase ENER-GEE SODA machine"@1882
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[307]
push.s "vendslot2"@384
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [309]

:[308]
push.s "Purchase candy machine"@1883
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[309]
push.s "vendslot3"@385
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [311]

:[310]
push.s "Purchase bakery machine"@1884
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[311]
push.s "vendslot4"@386
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [313]

:[312]
push.s "Purchase Cruncheez chips machine"@1885
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[313]
push.s "vendslot5"@387
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [315]

:[314]
push.s "Purchase milkshake dispenser"@1886
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[315]
push.s "vendslot6"@388
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [317]

:[316]
push.s "Purchase Fancy Coffee dispenser"@1887
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[317]
push.s "Nevermind"@1846
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[318]
popenv [305]

:[319]
push.v choicelength
pushi.e 1
cmp.i.v EQ
bf [321]

:[320]
push.s "Oh wow! It looks like I've gotten everything off the catalog!"@1888
pop.v.s global.text
pushi.e 1
conv.i.v
push.s "fullvend"@391
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [322]

:[321]
push.s "Looks like I can buy new vending machines for the office. I'm sure everyone would appreciate that! A new machine is "@1889
pushglb.v global.vendingcost
call.i string(argc=1)
add.v.s
push.s " gold. I'd better chose wisely."@1890
add.s.v
pop.v.v global.text

:[322]
push.s "fullvend"@391
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [326]

:[323]
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [325]

:[324]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v

:[325]
b [332]

:[326]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [328]

:[327]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [332]

:[328]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [332]

:[329]
pushglb.v global.choice
push.s "Nevermind"@1846
cmp.s.v EQ
bf [331]

:[330]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [332]

:[331]
pushglb.v global.choice
pop.v.v self.savespot
pushi.e 1
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v

:[332]
b [335]

:[333]
push.s "Whoops...Looks like I can't afford anything else right now."@1891
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [335]

:[334]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v

:[335]
push.v self.umode
pushi.e 1
cmp.i.v EQ
bf [359]

:[336]
push.v self.savespot
dup.v 0
push.s "Purchase ENER-GEE SODA machine"@1882
cmp.s.v EQ
bt [343]

:[337]
dup.v 0
push.s "Purchase candy machine"@1883
cmp.s.v EQ
bt [344]

:[338]
dup.v 0
push.s "Purchase bakery machine"@1884
cmp.s.v EQ
bt [345]

:[339]
dup.v 0
push.s "Purchase Cruncheez chips machine"@1885
cmp.s.v EQ
bt [346]

:[340]
dup.v 0
push.s "Purchase milkshake dispenser"@1886
cmp.s.v EQ
bt [347]

:[341]
dup.v 0
push.s "Purchase Fancy Coffee dispenser"@1887
cmp.s.v EQ
bt [348]

:[342]
b [349]

:[343]
push.s "'ENER-GEE SODA' brand may be just the 'PUNCH' this office needs. They come in four flavors: 'TIGER BLOOD', 'WOLF SPICE', 'SUPER CUTIE' and 'ELECTRO ENER-GEE'. Should I get it?"@1892
pop.v.s global.text
pushi.e 1
pop.v.i self.mymachine
b [349]

:[344]
push.s "Who doesn't love candy??? They offer four diffrent bars: Chocolate, Mint, Berries and Cream and 'Sinnamon spice'. Should I get it?"@1894
pop.v.s global.text
pushi.e 2
pop.v.i self.mymachine
b [349]

:[345]
push.s "Nothing like the smell of fresh baked goods to de-stress a long work day. They offer four snacks: Cutie Croissant, Chocolate-chip Cookies, Salty Pretzel Bun and Sinnamon Pumpkin Muffin. Should we get one?"@1895
pop.v.s global.text
pushi.e 3
pop.v.i self.mymachine
b [349]

:[346]
push.s "'Cruncheez' chips has a machine to bring their patented 'crunchology' right to the office! They have four flavors: 'SALTY GAMER', 'Sparkle Swirl', 'Bloody Mary' and 'Chocolate'. Should we get it?"@1896
pop.v.s global.text
pushi.e 4
pop.v.i self.mymachine
b [349]

:[347]
push.s "A milkshake dispenser right in your office! They come in four classic flavors: Vanilla, Chocolate, Strawberry and Blood. Wait what? Should...I get this?"@1897
pop.v.s global.text
pushi.e 5
pop.v.i self.mymachine
b [349]

:[348]
push.s "Coffee is a staple for any office enviornment. But some of these flavors seem a little unconventional. 'Magic Unicorn Swirl', 'Sea Salt Caramel', 'Pumpkin Spice' and 'B+ Blood Brew'. Should we get it?"@1898
pop.v.s global.text
pushi.e 6
pop.v.i self.mymachine
b [349]

:[349]
popz.v
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [353]

:[350]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [352]

:[351]
push.s "Yes"@668
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Nevermind"@1846
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[352]
popenv [351]

:[353]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [355]

:[354]
pushi.e 0
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v
b [359]

:[355]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [359]

:[356]
pushglb.v global.choice
push.s "Yes"@668
cmp.s.v EQ
bf [358]

:[357]
push.s "vendslot"@1899
push.v self.mymachine
call.i string(argc=1)
add.v.s
pop.v.v self.vendkey
pushi.e 1
conv.i.v
push.v self.vendkey
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "defaultvend"@389
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.vendingcost
sub.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 2
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v
b [359]

:[358]
pushi.e 0
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v

:[359]
push.v self.umode
pushi.e 2
cmp.i.v EQ
bf [362]

:[360]
push.s "Got it! Janet will come install it sometime today."@1901
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [362]

:[361]
pushi.e 0
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v

:[362]
push.v self.roommode
pushi.e 3
cmp.i.v EQ
bf [478]

:[363]
push.v self.vmode
pushi.e 4
cmp.i.v EQ
bf [478]

:[364]
push.v self.umode
pushi.e 0
cmp.i.v EQ
bf [380]

:[365]
push.s "What should we do about the cafe menu?"@1902
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [371]

:[366]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [370]

:[367]
pushi.e 1
pop.v.i local.i
push.s "Manage menu"@1903
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "fullcafe"@390
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [369]

:[368]
push.s "Buy more menu items"@1904
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[369]
push.s "Nevermind"@1846
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[370]
popenv [367]

:[371]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [373]

:[372]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [380]

:[373]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [380]

:[374]
pushglb.v global.choice
push.s "Manage menu"@1903
cmp.s.v EQ
bf [376]

:[375]
pushi.e 4
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v

:[376]
pushglb.v global.choice
push.s "Buy more menu items"@1904
cmp.s.v EQ
bf [378]

:[377]
pushi.e 1
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v

:[378]
pushglb.v global.choice
push.s "Nevermind"@1846
cmp.s.v EQ
bf [380]

:[379]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v

:[380]
push.v self.umode
pushi.e 4
cmp.i.v EQ
bf [409]

:[381]
pushi.e 0
pop.v.i self.savespot
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [387]

:[382]
push.s "fullcafe"@390
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [384]

:[383]
pushi.e 0
pop.v.i self.vmode
b [385]

:[384]
pushi.e 0
pop.v.i self.umode

:[385]
call.i madechoice(argc=0)
popz.v
exit.i

:[386]
b [398]

:[387]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [398]

:[388]
pushglb.v global.choice
push.s "Go back"@1842
cmp.s.v EQ
bf [394]

:[389]
push.s "fullcafe"@390
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [391]

:[390]
pushi.e 0
pop.v.i self.vmode
b [392]

:[391]
pushi.e 0
pop.v.i self.umode

:[392]
call.i madechoice(argc=0)
popz.v
exit.i

:[393]
b [398]

:[394]
push.s "servecafeslot"@1740
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.menuarray
call.i string(argc=1)
add.v.s
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [396]

:[395]
pushi.e 0
conv.i.v
push.v self.keystring
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [397]

:[396]
pushi.e 1
conv.i.v
push.v self.keystring
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[397]
push.v csel
pop.v.v self.savespot
call.i madechoice(argc=0)
popz.v
pushi.e 9
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 9
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[398]
push.s "I can choose what gets served at the cafe from here."@1905
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [409]

:[399]
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
push.s "Tacos"@1906
pushi.e -1
pushi.e 7
pop.v.s [array]self.dishes
push.s "Gell-o salad"@1727
pushi.e -1
pushi.e 8
pop.v.s [array]self.dishes
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.menuarray
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [408]

:[400]
push.v other.savespot
pop.v.v self.csel
pushi.e 0
pop.v.i local.o
pushi.e 1
pop.v.i local.i

:[401]
pushloc.v local.i
pushi.e 9
cmp.i.v LT
bf [407]

:[402]
push.s "cafeslot"@1742
pushloc.v local.i
call.i string(argc=1)
add.v.s
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [406]

:[403]
push.s "servecafeslot"@1740
pushloc.v local.i
call.i string(argc=1)
add.v.s
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [405]

:[404]
push.s "Serve "@1907
pushi.e -2
pushloc.v local.i
conv.v.i
push.v [array]self.dishes
add.v.s
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.v [array]self.choices
pushloc.v local.i
pushi.e -2
pushloc.v local.o
conv.v.i
pop.v.v [array]self.menuarray
push.v local.o
push.e 1
add.i.v
pop.v.v local.o
b [406]

:[405]
push.s "Stop serving "@1908
pushi.e -2
pushloc.v local.i
conv.v.i
push.v [array]self.dishes
add.v.s
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.v [array]self.choices
pushloc.v local.i
pushi.e -2
pushloc.v local.o
conv.v.i
pop.v.v [array]self.menuarray
push.v local.o
push.e 1
add.i.v
pop.v.v local.o

:[406]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [401]

:[407]
push.s "Go back"@1842
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[408]
popenv [400]

:[409]
push.v self.umode
pushi.e 1
cmp.i.v EQ
bf [447]

:[410]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.cafecost
cmp.v.v GTE
bf [445]

:[411]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [431]

:[412]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [430]

:[413]
pushi.e 0
pop.v.i local.i
push.s "cafeslot1"@393
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [415]

:[414]
push.s "Purchase pasta bowls"@1909
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[415]
push.s "cafeslot2"@394
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [417]

:[416]
push.s "Purchase dessert dinners"@1910
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[417]
push.s "cafeslot3"@395
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [419]

:[418]
push.s "Purchase breakfast brunch"@1911
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[419]
push.s "cafeslot4"@396
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [421]

:[420]
push.s "Purchase gourmet buffet"@1912
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[421]
push.s "cafeslot5"@397
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [423]

:[422]
push.s "Purchase ramen and sushi"@1913
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[423]
push.s "cafeslot6"@398
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [425]

:[424]
push.s "Purchase fast fried feasts"@1914
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[425]
push.s "cafeslot7"@399
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [427]

:[426]
push.s "Purchase taco tuesday"@1915
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[427]
push.s "cafeslot8"@400
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [429]

:[428]
push.s "Purchase questionable gell-o's"@1916
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[429]
push.s "Nevermind"@1846
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[430]
popenv [413]

:[431]
push.v choicelength
pushi.e 1
cmp.i.v EQ
bf [433]

:[432]
push.s "Oh wow! It looks like I've gotten everything off the catalog!"@1888
pop.v.s global.text
pushi.e 1
conv.i.v
push.s "fullcafe"@390
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [434]

:[433]
push.s "Here I can buy new menu items for Henriette to serve in the cafe. But new menus are "@1917
pushglb.v global.vendingcost
call.i string(argc=1)
add.v.s
push.s " gold. I'd better chose wisely."@1890
add.s.v
pop.v.v global.text

:[434]
push.s "fullcafe"@390
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [438]

:[435]
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [437]

:[436]
pushi.e 0
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v

:[437]
b [444]

:[438]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [440]

:[439]
pushi.e 0
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v
b [444]

:[440]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [444]

:[441]
pushglb.v global.choice
push.s "Nevermind"@1846
cmp.s.v EQ
bf [443]

:[442]
pushi.e 0
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v
b [444]

:[443]
pushglb.v global.choice
pop.v.v self.savespot
pushi.e 2
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v

:[444]
b [447]

:[445]
push.s "Whoops...Looks like I can't afford anything else right now."@1891
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [447]

:[446]
pushi.e 0
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v

:[447]
push.v self.umode
pushi.e 2
cmp.i.v EQ
bf [475]

:[448]
push.v self.savespot
dup.v 0
push.s "Purchase pasta bowls"@1909
cmp.s.v EQ
bt [457]

:[449]
dup.v 0
push.s "Purchase dessert dinners"@1910
cmp.s.v EQ
bt [458]

:[450]
dup.v 0
push.s "Purchase breakfast brunch"@1911
cmp.s.v EQ
bt [459]

:[451]
dup.v 0
push.s "Purchase gourmet buffet"@1912
cmp.s.v EQ
bt [460]

:[452]
dup.v 0
push.s "Purchase ramen and sushi"@1913
cmp.s.v EQ
bt [461]

:[453]
dup.v 0
push.s "Purchase fast fried feasts"@1914
cmp.s.v EQ
bt [462]

:[454]
dup.v 0
push.s "Purchase taco tuesday"@1915
cmp.s.v EQ
bt [463]

:[455]
dup.v 0
push.s "Purchase questionable gell-o's"@1916
cmp.s.v EQ
bt [464]

:[456]
b [465]

:[457]
push.s "Nothing like a carbo-loaded meal while stuck in your office job! Should I get it?"@1918
pop.v.s global.text
pushi.e 1
pop.v.i self.mymachine
b [465]

:[458]
push.s "Life IS short after all! Might as well? Should I get it?"@1919
pop.v.s global.text
pushi.e 2
pop.v.i self.mymachine
b [465]

:[459]
push.s "Breakfast for lunch! Time's relative anyways. Should I get it?"@1920
pop.v.s global.text
pushi.e 3
pop.v.i self.mymachine
b [465]

:[460]
push.s "High-quality meats for the cost of an office lunch! As long as you don't ask where they get it. Should I buy it?"@1921
pop.v.s global.text
pushi.e 4
pop.v.i self.mymachine
b [465]

:[461]
push.s "Traditional lunch options served to the hard-working employee for countless generations. You know, that stuff the anime guys eat. Should I get it?"@1922
pop.v.s global.text
pushi.e 5
pop.v.i self.mymachine
b [465]

:[462]
push.s "Just looking at this menu makes me taste the grease. Should I get it?"@1923
pop.v.s global.text
pushi.e 6
pop.v.i self.mymachine
b [465]

:[463]
push.s "Taco Tuesday every day! So why still call it that? Should I get it?"@1924
pop.v.s global.text
pushi.e 7
pop.v.i self.mymachine
b [465]

:[464]
push.s "Bringing back the classic lunches everyone wishes the world forgot! Should I get it?"@1925
pop.v.s global.text
pushi.e 8
pop.v.i self.mymachine
b [465]

:[465]
popz.v
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [469]

:[466]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [468]

:[467]
push.s "Yes"@668
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Nevermind"@1846
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[468]
popenv [467]

:[469]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [471]

:[470]
pushi.e 1
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v
b [475]

:[471]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [475]

:[472]
pushglb.v global.choice
push.s "Yes"@668
cmp.s.v EQ
bf [474]

:[473]
push.s "cafeslot"@1742
push.v self.mymachine
call.i string(argc=1)
add.v.s
pop.v.v self.vendkey
pushi.e 1
conv.i.v
push.v self.vendkey
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "defaultcafe"@392
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.cafecost
sub.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 3
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v
b [475]

:[474]
pushi.e 1
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v

:[475]
push.v self.umode
pushi.e 3
cmp.i.v EQ
bf [478]

:[476]
push.s "Got it! Someone will come deliver the supplies right away."@1926
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [478]

:[477]
pushi.e 1
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v
pushi.e 9
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 9
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[478]
push.v self.roommode
pushi.e 3
cmp.i.v EQ
bf [509]

:[479]
push.v self.vmode
pushi.e 5
cmp.i.v EQ
bf [509]

:[480]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [483]

:[481]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
exit.i

:[482]
b [491]

:[483]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [491]

:[484]
pushglb.v global.choice
push.s "Go back"@1842
cmp.s.v EQ
bf [487]

:[485]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
exit.i

:[486]
b [491]

:[487]
push.l 7
conv.l.v
pushi.e 0
push.v csel
conv.v.i
push.v [array]self.progarray
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [489]

:[488]
pushi.e 0
conv.i.v
push.l 7
conv.l.v
pushi.e 0
push.v csel
conv.v.i
push.v [array]self.progarray
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [490]

:[489]
pushi.e 1
conv.i.v
push.l 7
conv.l.v
pushi.e 0
push.v csel
conv.v.i
push.v [array]self.progarray
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[490]
push.v csel
pop.v.v self.savespot
pushi.e 1
conv.i.v
push.s "anyonefit"@500
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
call.i madechoice(argc=0)
popz.v
pushi.e 9
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 9
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[491]
push.s "Our insurance plan suggests a fitness program, here's what they say about it: 'Putting monsters on the program means they won't gain any weight and revert back to their starting body size. However their stats will still increase and they will still recieve the benifits from snacks and gifts. Putting yourself on the program, in addition to everything listed before, means no one will gift you any additional food during the lunch game or at the end of the day.' Should we put anyone on it?"@1927
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [509]

:[492]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [508]

:[493]
push.v other.savespot
pop.v.v self.csel
pushi.e 0
pop.v.i local.o
push.l 2
pop.v.l local.i

:[494]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [504]

:[495]
pushloc.v local.i
push.l 2
cmp.l.v NEQ
bt [497]

:[496]
push.s "brokediet"@38
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
b [498]

:[497]
push.e 1

:[498]
bf [503]

:[499]
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
pushi.e 0
cmp.i.v EQ
bf [503]

:[500]
push.l 7
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [502]

:[501]
push.s "Put "@1928
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s " on the program"@1929
add.s.v
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.v [array]self.choices
pushloc.v local.i
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.v [array]self.progarray
push.v local.o
push.e 1
add.i.v
pop.v.v local.o
b [503]

:[502]
push.s "Take "@1930
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s " off the program"@1931
add.s.v
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.v [array]self.choices
pushloc.v local.i
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.v [array]self.progarray
push.v local.o
push.e 1
add.i.v
pop.v.v local.o

:[503]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [494]

:[504]
push.l 7
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [506]

:[505]
push.s "Put myself on the program"@1932
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.s [array]self.choices
push.l 0
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.l [array]self.progarray
push.v local.o
push.e 1
add.i.v
pop.v.v local.o
b [507]

:[506]
push.s "Take myself off the program"@1933
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.s [array]self.choices
push.l 0
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.l [array]self.progarray
push.v local.o
push.e 1
add.i.v
pop.v.v local.o

:[507]
push.s "Go back"@1842
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[508]
popenv [493]

:[509]
push.v self.roommode
pushi.e 3
cmp.i.v EQ
bf [572]

:[510]
push.v self.vmode
pushi.e 2
cmp.i.v EQ
bf [572]

:[511]
push.v self.umode
pushi.e 0
cmp.i.v EQ
bf [549]

:[512]
pushi.e 0
pop.v.i self.clear
pushglb.v global.equipcost
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
mul.i.v
pushi.e 2
sub.i.v
mul.v.v
pop.v.v self.equipprice
push.s "Here's the equipment upgrades they want me to finish...What should we pay off?"@1936
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [532]

:[513]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.menuarray
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [531]

:[514]
pushi.e 0
pop.v.i local.i
push.s "airscene"@361
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [516]

:[515]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [517]

:[516]
push.e 0

:[517]
bf [519]

:[518]
push.s "Replace air conditioning"@1937
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[519]
push.s "fridgescene"@346
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [521]

:[520]
push.s "fridgepaid"@433
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [522]

:[521]
push.e 0

:[522]
bf [524]

:[523]
push.s "Replace fridge"@1938
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[524]
push.s "copypaid"@429
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [526]

:[525]
push.s "Replace copier"@1939
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[526]
push.s "chairpaid"@427
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [528]

:[527]
push.s "Replace chairs"@1940
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[528]
push.s "dronepaid"@431
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [530]

:[529]
push.s "Buy office drones"@1941
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[530]
push.s "Nevermind"@1846
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[531]
popenv [514]

:[532]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [534]

:[533]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [549]

:[534]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [549]

:[535]
pushglb.v global.choice
push.s "Nevermind"@1846
cmp.s.v EQ
bf [537]

:[536]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [549]

:[537]
pushglb.v global.choice
dup.v 0
push.s "Replace air conditioning"@1937
cmp.s.v EQ
bt [543]

:[538]
dup.v 0
push.s "Replace fridge"@1938
cmp.s.v EQ
bt [544]

:[539]
dup.v 0
push.s "Replace copier"@1939
cmp.s.v EQ
bt [545]

:[540]
dup.v 0
push.s "Replace chairs"@1940
cmp.s.v EQ
bt [546]

:[541]
dup.v 0
push.s "Buy office drones"@1941
cmp.s.v EQ
bt [547]

:[542]
b [548]

:[543]
push.s "airpay"@434
pop.v.s self.keystring
push.s "airpaid"@435
pop.v.s self.keystringpaid
b [548]

:[544]
push.s "fridgepay"@432
pop.v.s self.keystring
push.s "fridgepaid"@433
pop.v.s self.keystringpaid
b [548]

:[545]
push.s "copypay"@428
pop.v.s self.keystring
push.s "copypaid"@429
pop.v.s self.keystringpaid
b [548]

:[546]
push.s "chairpay"@426
pop.v.s self.keystring
push.s "chairpaid"@427
pop.v.s self.keystringpaid
b [548]

:[547]
push.s "dronepay"@430
pop.v.s self.keystring
push.s "dronepaid"@431
pop.v.s self.keystringpaid
b [548]

:[548]
popz.v
pushi.e 1
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v

:[549]
push.v self.umode
pushi.e 1
cmp.i.v EQ
bf [569]

:[550]
push.v self.clear
pushi.e 0
cmp.i.v EQ
bf [552]

:[551]
push.s ""@150
pop.v.s self.keyboard_string
pushi.e 1
pop.v.i self.clear

:[552]
pushbltn.v self.keyboard_string
call.i string_length(argc=1)
pushi.e 3
cmp.i.v GT
bf [554]

:[553]
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v self.keyboard_string
call.i string_copy(argc=3)
pop.v.v self.keyboard_string

:[554]
pushbltn.v self.keyboard_string
pop.v.v self.amount
push.v self.amount
push.s ""@150
cmp.s.v EQ
bf [556]

:[555]
pushi.e 0
pop.v.i self.amount

:[556]
push.v self.equipprice
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
sub.v.v
pop.v.v self.togo
push.s "How much should we pay off? (Type the amount you want to pay. Press TAB to go back)\r\n    AMOUNT LEFT TO PAY: "@1944
push.v self.togo
call.i string(argc=1)
add.v.s
push.s "g\r\n    AMOUNT PAYING: "@1945
add.s.v
push.v self.amount
call.i string(argc=1)
add.v.v
push.s "g"@1946
add.s.v
pop.v.v global.text
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [558]

:[557]
pushi.e 0
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v
b [569]

:[558]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [569]

:[559]
push.v self.amount
push.s " "@1947
cmp.s.v EQ
bf [561]

:[560]
pushi.e 0
pop.v.i self.amount

:[561]
push.v self.amount
call.i real(argc=1)
pop.v.v self.amount
push.v self.amount
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
cmp.v.v GT
bf [563]

:[562]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pop.v.v self.amount

:[563]
push.v self.amount
push.v self.equipprice
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
sub.v.v
cmp.v.v GT
bf [565]

:[564]
push.v self.equipprice
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
sub.v.v
pop.v.v self.amount

:[565]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.v self.amount
sub.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.v self.amount
add.v.v
push.v self.keystring
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.v self.equipprice
cmp.v.v GTE
bf [567]

:[566]
push.s "And with that...It's all paid off! Good work, me! Janet will come install everything."@1948
pop.v.s global.text
pushi.e 1
conv.i.v
push.v self.keystringpaid
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.d 0.1
add.d.v
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
pop.v.i self.paid
b [568]

:[567]
push.v self.equipprice
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
sub.v.v
pop.v.v self.togo
push.s "Paid. Only "@1950
push.v self.togo
call.i string(argc=1)
add.v.s
push.s "g more to go..."@1951
add.s.v
pop.v.v global.text
pushi.e 0
pop.v.i self.paid

:[568]
pushi.e 2
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v

:[569]
push.v self.umode
pushi.e 2
cmp.i.v EQ
bf [572]

:[570]
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [572]

:[571]
pushi.e 0
pop.v.i self.umode
call.i madechoice(argc=0)
popz.v

:[572]
push.v self.roommode
pushi.e 3
cmp.i.v EQ
bf [end]

:[573]
push.v self.vmode
pushi.e 7
cmp.i.v EQ
bf [end]

:[574]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.rescuecost
cmp.v.v GTE
bf [607]

:[575]
push.v self.dmode
pushi.e 0
cmp.i.v EQ
bf [600]

:[576]
push.s "Looks like we have some monsters who need rescuing... Calling the service is "@1952
pushglb.v global.rescuecost
call.i string(argc=1)
add.v.s
push.s "each."@1953
add.s.v
pop.v.v global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [592]

:[577]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.atearray
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.eaterarray
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.atekeytag
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.eatenkeytag
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [591]

:[578]
pushi.e 0
pop.v.i local.o
push.l 2
pop.v.l local.i

:[579]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [588]

:[580]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring1
push.v self.keystring1
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [587]

:[581]
push.l 0
pushi.e -2
pushloc.v local.o
conv.v.i
pop.v.l [array]self.eaterarray
push.s "youate"@1005
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
pop.v.v self.keystring2
push.v self.keystring2
pushi.e -2
pushloc.v local.o
conv.v.i
pop.v.v [array]self.eatenkeytag
push.l 2
pop.v.l local.a

:[582]
pushloc.v local.a
push.l 10
cmp.l.v LT
bf [586]

:[583]
push.l 1
conv.l.v
pushloc.v local.a
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring2
push.v self.keystring2
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [585]

:[584]
pushloc.v local.a
pushi.e -2
pushloc.v local.o
conv.v.i
pop.v.v [array]self.eaterarray
push.v self.keystring2
pushi.e -2
pushloc.v local.o
conv.v.i
pop.v.v [array]self.eatenkeytag

:[585]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
b [582]

:[586]
push.s "Rescue "@1958
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "?"@1875
add.s.v
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.v [array]self.choices
pushloc.v local.i
pushi.e -2
pushloc.v local.o
conv.v.i
pop.v.v [array]self.atearray
push.v self.keystring1
pushi.e -2
pushloc.v local.o
conv.v.i
pop.v.v [array]self.atekeytag
push.v local.o
push.e 1
add.i.v
pop.v.v local.o

:[587]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [579]

:[588]
push.s "Go back"@1842
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.s [array]self.choices
pushloc.v local.o
pushi.e 0
cmp.i.v EQ
bf [590]

:[589]
pushi.e 0
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[590]
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[591]
popenv [578]

:[592]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [594]

:[593]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [600]

:[594]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [600]

:[595]
pushglb.v global.choice
push.s "Go back"@1842
cmp.s.v EQ
bf [597]

:[596]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [600]

:[597]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.rescuecost
sub.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.atekeytag
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.eatenkeytag
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.l 2
conv.l.v
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.eaterarray
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
sub.i.v
push.l 2
conv.l.v
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.eaterarray
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.eaterarray
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [599]

:[598]
pushi.e 0
conv.i.v
push.l 2
conv.l.v
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.eaterarray
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[599]
pushi.e 0
conv.i.v
push.l 11
conv.l.v
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.eaterarray
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.dmode
push.e 1
add.i.v
pop.v.v self.dmode
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.rand
pushi.e 9
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 9
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
call.i madechoice(argc=0)
popz.v

:[600]
push.v self.dmode
pushi.e 1
cmp.i.v EQ
bf [606]

:[601]
push.s "Ah, maybe don’t warn the eater party. It’s easier when we can get the jump on ‘em."@1959
pushi.e -1
pushi.e 0
pop.v.s [array]self.randtext
push.s "You know we really do appreciate ya’ll keeping us in business~ If for no other reason than to prove to my dad this Maxxx-Power vac-hose was a good investment."@1961
pushi.e -1
pushi.e 1
pop.v.s [array]self.randtext
push.s "Remember that a successful extraction is NOT-PERMANENT. We do not issue refunds in the case of a repeat incident. I’d suggest an investment in muzzles."@1962
pushi.e -1
pushi.e 2
pop.v.s [array]self.randtext
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "*RING RING*"@1963
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Monster spelunker's rescue"@1964
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Hello hello! Monster spelunker's rescue! Got someone in a bad spot? We’ll have them out momentarily~"@1965
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Monster spelunker's rescue"@1964
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
pushi.e -1
push.v self.rand
conv.v.i
push.v [array]self.randtext
pushi.e -5
pushi.e 2
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "*click*"@796
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [603]

:[602]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [604]

:[603]
push.e 0

:[604]
bf [606]

:[605]
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i self.dmode
call.i madechoice(argc=0)
popz.v

:[606]
b [end]

:[607]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [609]

:[608]
pushi.e 0
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[609]
push.s "Looks like we have some monsters who need rescuing... Calling the service is "@1952
pushglb.v global.rescuecost
call.i string(argc=1)
add.v.s
push.s "each. Looks like we can't afford that..."@1966
add.s.v
pop.v.v global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[610]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v

:[end]