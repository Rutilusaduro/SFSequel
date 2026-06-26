.localvar 0 arguments
.localvar 1 list_save 580
.localvar 2 grid_save 581
.localvar 3 o 583
.localvar 4 i 584

:[0]
push.v self.roommode
pushi.e 2
cmp.i.v EQ
bf [30]

:[1]
pushi.e 0
pop.v.i self.vmode
pushi.e 11
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [3]

:[2]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 11
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[3]
push.v self.weedmode
pushi.e 0
cmp.i.v EQ
bf [10]

:[4]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
sub.i.v
pushi.e 5
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
push.s "The weekend speeds by too quick to ever properly enjoy..."@2146
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v
push.v self.weedmode
push.e 1
add.i.v
pop.v.v self.weedmode

:[7]
b [9]

:[8]
push.v self.weedmode
push.e 1
add.i.v
pop.v.v self.weedmode

:[9]
b [30]

:[10]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
push.s "seenmyself"@445
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.l 7
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "seenmyself"@445
conv.s.v
call.i callscene(argc=1)
popz.v
b [30]

:[15]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [25]

:[16]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [25]

:[17]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [25]

:[18]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [26]

:[19]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [26]

:[20]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [26]

:[21]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [27]

:[22]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [27]

:[23]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [27]

:[24]
b [28]

:[25]
push.s "You roll out of bed to the familiar tune of the alarm blaring, and fumble for your phone in the sheets. Another day..."@2147
pop.v.s global.text
b [28]

:[26]
push.s "You lug yourself up to sitting and fumble for your phone in the sheets. Another day..."@2148
pop.v.s global.text
b [28]

:[27]
push.s "You roll yourself to your feet, stomach already growling for breakfast. Another day..."@2149
pop.v.s global.text
b [28]

:[28]
popz.v
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 3
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[30]
push.v self.roommode
pushi.e 1
cmp.i.v EQ
bf [49]

:[31]
push.v self.vmode
pushi.e 0
cmp.i.v EQ
bf [40]

:[32]
push.s "Would you like to save? (Note: You won't be able to save again until the end of this new day)"@2150
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [36]

:[33]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [35]

:[34]
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

:[35]
popenv [34]

:[36]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [40]

:[37]
pushglb.v global.choice
push.s "Yes"@668
cmp.s.v EQ
bf [39]

:[38]
push.s "FAS_SAVE.ini"@645
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.events
call.i ds_map_write(argc=1)
pop.v.v local.list_save
pushloc.v local.list_save
push.s "Moxie"@634
conv.s.v
push.s "Magic"@635
conv.s.v
call.i ini_write_string(argc=3)
popz.v
pushglb.v global.statgrid
call.i ds_grid_write(argc=1)
pop.v.v local.grid_save
pushloc.v local.grid_save
push.s "Swag"@639
conv.s.v
push.s "Magic"@635
conv.s.v
call.i ini_write_string(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v

:[39]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v

:[40]
push.v self.vmode
pushi.e 1
cmp.i.v EQ
bf [49]

:[41]
push.s "Continue playing? If not, unsaved progress will be lost."@2151
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [45]

:[42]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [44]

:[43]
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

:[44]
popenv [43]

:[45]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [49]

:[46]
pushglb.v global.choice
push.s "Yes"@668
cmp.s.v EQ
bf [48]

:[47]
pushi.e 2
pop.v.i self.roommode
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [49]

:[48]
pushi.e 2
conv.i.v
call.i room_goto(argc=1)
popz.v

:[49]
push.v self.roommode
pushi.e 0
cmp.i.v EQ
bf [203]

:[50]
pushi.e 13
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [52]

:[51]
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

:[52]
push.s "Alright then, lets get through the formalities. We're going to take a quick personality quiz for our records."@2152
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Question one: What's your name~? (Use keyboard to type a name.)"@2153
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "How'd you come dressed today?"@2154
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "There's no good way to say this...Do you have tits?"@2155
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "What's your favorite flavor?"@2156
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.v self.comment
push.s "Now, What's your second favorite flavor?"@2157
add.s.v
pushi.e -5
pushi.e 6
pop.v.v [array]global.text
push.v self.comment
push.s "I guess we can work with this."@2158
add.s.v
pushi.e -5
pushi.e 7
pop.v.v [array]global.text
push.s "Well, what do you think? Looks good?"@2159
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s "Alright~! You're all set to go!"@2160
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s "Ah. Actually, one more thing: Our last guy always called in the donuts for the day. That's gonna have to be your job now, so get used to it. And don't ever forget it!!! Believe me, you don’t want to walk in here with these monsters empty-handed~ Get them called in, get settled at your desk, and then come back here and see me ASAP."@2161
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [54]

:[53]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[54]
push.s "Boss"@917
pop.v.s global.boxname
pushglb.v global.line
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [65]

:[55]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [85]

:[56]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [106]

:[57]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [115]

:[58]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [124]

:[59]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [146]

:[60]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [170]

:[61]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [173]

:[62]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [196]

:[63]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [199]

:[64]
b [202]

:[65]
push.v self.vmode
pushi.e 0
cmp.i.v EQ
bf [77]

:[66]
push.s "A new recruit~! Welcome to the team~ I don't think we need to waste time with lengthy intros do we? You already know what you're doing here, correct?"@2162
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 39
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [68]

:[67]
pushi.e 39
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[68]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [72]

:[69]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [71]

:[70]
push.s "I'm good."@2163
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Uh...run it by me?"@2164
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[71]
popenv [70]

:[72]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [77]

:[73]
pushglb.v global.choice
push.s "Uh...run it by me?"@2164
cmp.s.v EQ
bf [75]

:[74]
push.s "You mean to tell me you got as far as my office and you don’t even know *why*??? Not exactly starting off strong, pal. I’ll make it simple for ya: we’re bringing you on as “Office Efficiency Administrator”. A title I made up, so it means whatever the hell I need it to. You’re here for a three-week trial period which you’ll be assessed at the end of. You’ll keep the job depending on your performance. Got all that?"@2165
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 1
pop.v.i self.vmode
b [76]

:[75]
push.v global.line
push.e 1
add.i.v
pop.v.v global.line

:[76]
call.i madechoice(argc=0)
popz.v

:[77]
push.v self.vmode
pushi.e 1
cmp.i.v EQ
bf [84]

:[78]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [82]

:[79]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [81]

:[80]
push.s "Yes, sir!"@2166
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Uh..."@2167
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[81]
popenv [80]

:[82]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
pushi.e 0
pop.v.i self.vmode
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[84]
b [202]

:[85]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 39
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [87]

:[86]
pushi.e 39
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[87]
push.v self.approval
pushi.e 0
cmp.i.v EQ
bf [94]

:[88]
push.s "Question one: What's your name~?"@2168
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.v self.clear
pushi.e 0
cmp.i.v EQ
bf [90]

:[89]
push.s "Nugame"@615
pop.v.s self.keyboard_string
pushi.e 1
pop.v.i self.clear

:[90]
pushbltn.v self.keyboard_string
call.i string_length(argc=1)
pushi.e 15
cmp.i.v GT
bf [92]

:[91]
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v self.keyboard_string
call.i string_copy(argc=3)
pop.v.v self.keyboard_string

:[92]
pushbltn.v self.keyboard_string
pop.v.v self.nuname
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [94]

:[93]
push.s "approve"@2169
conv.s.v
call.i show_debug_message(argc=1)
popz.v
pushi.e 1
pop.v.i self.approval
call.i madechoice(argc=0)
popz.v

:[94]
push.v self.approval
pushi.e 1
cmp.i.v EQ
bf [105]

:[95]
push.s "So your name is "@2170
push.v self.nuname
add.v.s
push.s "?"@1875
add.s.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [99]

:[96]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [98]

:[97]
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

:[98]
popenv [97]

:[99]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
pushi.e 0
pop.v.i self.approval
call.i madechoice(argc=0)
popz.v
b [105]

:[101]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [105]

:[102]
pushglb.v global.choice
push.s "Yes"@668
cmp.s.v EQ
bf [104]

:[103]
push.s "confirm name"@2171
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.v self.nuname
call.i string(argc=1)
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [105]

:[104]
push.s "Nevermind on the name"@2172
conv.s.v
call.i show_debug_message(argc=1)
popz.v
pushi.e 0
pop.v.i self.clear
pushi.e 0
pop.v.i self.approval
call.i madechoice(argc=0)
popz.v

:[105]
b [202]

:[106]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [110]

:[107]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [109]

:[108]
push.s "Pants"@2173
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Skirt"@2174
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[109]
popenv [108]

:[110]
push.v csel
push.s "legs"@342
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
push.v global.line
push.e 1
sub.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [114]

:[112]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[114]
b [202]

:[115]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [119]

:[116]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [118]

:[117]
push.s "No"@667
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Yes"@668
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "Lots~"@2175
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[118]
popenv [117]

:[119]
push.v csel
push.s "boobs"@341
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [121]

:[120]
push.v global.line
push.e 1
sub.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [123]

:[121]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [123]

:[122]
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[123]
b [202]

:[124]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [128]

:[125]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [127]

:[126]
push.s "Chocolate!"@2176
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Magic!"@2177
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "Salty!"@2178
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.s "Blood!"@2179
pushi.e -1
pushi.e 3
pop.v.s [array]self.choices
push.s "Cute, aesthetic foods!"@2180
pushi.e -1
pushi.e 4
pop.v.s [array]self.choices
push.s "Cinnamon and spices!"@2181
pushi.e -1
pushi.e 5
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[127]
popenv [126]

:[128]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
push.v global.line
push.e 1
sub.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [145]

:[130]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [145]

:[131]
pushglb.v global.choice
dup.v 0
push.s "Chocolate!"@2176
cmp.s.v EQ
bt [138]

:[132]
dup.v 0
push.s "Magic!"@2177
cmp.s.v EQ
bt [139]

:[133]
dup.v 0
push.s "Salty!"@2178
cmp.s.v EQ
bt [140]

:[134]
dup.v 0
push.s "Blood!"@2179
cmp.s.v EQ
bt [141]

:[135]
dup.v 0
push.s "Cute, aesthetic foods!"@2180
cmp.s.v EQ
bt [142]

:[136]
dup.v 0
push.s "Cinnamon and spices!"@2181
cmp.s.v EQ
bt [143]

:[137]
b [144]

:[138]
push.s "A classic craving, of course~ And a notorious diet-ruiner... "@2182
pop.v.s self.comment
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [144]

:[139]
push.s "Can't say I know what that...tastes like? But to each monster their own I suppose. "@2183
pop.v.s self.comment
push.l 2
conv.l.v
push.l 4
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [144]

:[140]
push.s "Who doesn't love some good salty snacks~? Not really the best for your heart though. Might want to make sure you read over the insurance plan real good. "@2184
pop.v.s self.comment
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [144]

:[141]
push.s "Oh, Huh... "@2185
pop.v.s self.comment
push.l 4
conv.l.v
push.l 4
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [144]

:[142]
push.s "That's not...really a flavor. But uh... "@2186
pop.v.s self.comment
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [144]

:[143]
push.s "You one of those fancy nerds who wears the scarves and takes photos of their coffee? What? I'm not judging. "@2187
pop.v.s self.comment
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [144]

:[144]
popz.v
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[145]
b [202]

:[146]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [150]

:[147]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [149]

:[148]
push.s "Chocolate!"@2176
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Magic!"@2177
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "Salty!"@2178
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.s "Blood!"@2179
pushi.e -1
pushi.e 3
pop.v.s [array]self.choices
push.s "Cute, aesthetic foods!"@2180
pushi.e -1
pushi.e 4
pop.v.s [array]self.choices
push.s "Cinnamon and spices!"@2181
pushi.e -1
pushi.e 5
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[149]
popenv [148]

:[150]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [152]

:[151]
push.v global.line
push.e 1
sub.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [169]

:[152]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [169]

:[153]
pushglb.v global.choice
dup.v 0
push.s "Chocolate!"@2176
cmp.s.v EQ
bt [160]

:[154]
dup.v 0
push.s "Magic!"@2177
cmp.s.v EQ
bt [161]

:[155]
dup.v 0
push.s "Salty!"@2178
cmp.s.v EQ
bt [162]

:[156]
dup.v 0
push.s "Blood!"@2179
cmp.s.v EQ
bt [163]

:[157]
dup.v 0
push.s "Cute, aesthetic foods!"@2180
cmp.s.v EQ
bt [164]

:[158]
dup.v 0
push.s "Cinnamon and spices!"@2181
cmp.s.v EQ
bt [165]

:[159]
b [166]

:[160]
push.s "A classic craving, of course~ And a notorious diet-ruiner... "@2182
pop.v.s self.comment
push.l 1
conv.l.v
push.l 5
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [166]

:[161]
push.s "Can't say I know what that...tastes like? But to each monster their own I suppose. "@2183
pop.v.s self.comment
push.l 2
conv.l.v
push.l 5
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [166]

:[162]
push.s "Who doesn't love some good salty snacks~? Not really the best for your heart though. Might want to make sure you read over the insurance plan real good. "@2184
pop.v.s self.comment
push.l 3
conv.l.v
push.l 5
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [166]

:[163]
push.s "Oh, Huh... "@2185
pop.v.s self.comment
push.l 4
conv.l.v
push.l 5
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [166]

:[164]
push.s "That's not...really a flavor. But uh... "@2186
pop.v.s self.comment
push.l 5
conv.l.v
push.l 5
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [166]

:[165]
push.s "You one of those fancy nerds who wears the scarves and takes photos of their coffee? What? I'm not judging. "@2187
pop.v.s self.comment
push.l 6
conv.l.v
push.l 5
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
b [166]

:[166]
popz.v
push.l 4
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 5
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
bf [168]

:[167]
push.s "You're sort of one-note aren't you...At least you know what you like. "@2188
pop.v.s self.comment

:[168]
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[169]
b [202]

:[170]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 39
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [172]

:[171]
pushi.e 39
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[172]
b [202]

:[173]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [183]

:[174]
pushi.e -1
push.l 4
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
chkindex.e
push.i 32000
mul.i.i
push.l 5
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
chkindex.e
add.i.i
push.v [array]self.headarray
push.s "head"@343
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
pop.v.i self.approval
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 39
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [178]

:[175]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [177]

:[176]
push.s "Yes"@668
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Go back"@1842
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[177]
popenv [176]

:[178]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [183]

:[179]
pushglb.v global.choice
push.s "Go back"@1842
cmp.s.v EQ
bf [181]

:[180]
pushi.e 1
pop.v.i self.mode
call.i madechoice(argc=0)
popz.v
b [182]

:[181]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.v global.line
push.e 1
add.i.v
pop.v.v global.line

:[182]
call.i madechoice(argc=0)
popz.v

:[183]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [195]

:[184]
push.s "Oh? Back how far?"@2189
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [188]

:[185]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [187]

:[186]
push.s "All the way back"@2190
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Just choose favorite flavors again"@2191
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "Nevermind, continue."@2192
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[187]
popenv [186]

:[188]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [195]

:[189]
pushglb.v global.choice
push.s "All the way back"@2190
cmp.s.v EQ
bf [191]

:[190]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i self.clear
pushi.e 2
pop.v.i global.line
pushi.e 0
pop.v.i self.mode
call.i madechoice(argc=0)
popz.v

:[191]
pushglb.v global.choice
push.s "Just choose favorite flavors again"@2191
cmp.s.v EQ
bf [193]

:[192]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 5
pop.v.i global.line
pushi.e 0
pop.v.i self.mode
call.i madechoice(argc=0)
popz.v

:[193]
pushglb.v global.choice
push.s "Nevermind, continue."@2192
cmp.s.v EQ
bf [195]

:[194]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[195]
b [202]

:[196]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 39
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [198]

:[197]
pushi.e 39
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[198]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
b [202]

:[199]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [201]

:[200]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.atetag
pushi.e 0
conv.i.v
push.v self.atetag
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
pop.v.i global.bossnotif
push.s "firstmeeting"@295
pop.v.s global.bossscene
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
push.s ""@150
pop.v.s global.boxname
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i global.text
pushi.e 3
pop.v.i self.roommode
pushi.e 39
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
call.i madechoice(argc=0)
popz.v

:[201]
b [202]

:[202]
popz.v

:[203]
push.v self.roommode
pushi.e 3
cmp.i.v EQ
bf [end]

:[204]
push.v self.vmode
pushi.e 0
cmp.i.v EQ
bf [251]

:[205]
pushi.e 39
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.donutcost
cmp.v.v GTE
bf [238]

:[206]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [208]

:[207]
pushi.e 6
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i global.goldonly
push.s "gold only so what gives?"@2194
conv.s.v
call.i show_debug_message(argc=1)
popz.v

:[208]
pushi.e 9
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [210]

:[209]
pushi.e 9
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[210]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [212]

:[211]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[212]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Time to order donuts..."@2195
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Do-Nut Barn"@2196
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Howdy there~!!! This here's the Do-Nut Barn! Dozen donuts are "@2197
pushglb.v global.donutcost
call.i string(argc=1)
add.v.s
push.s "ea. What can I put ya down for today?"@2198
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 1
cmp.i.v GTE
bf [237]

:[213]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [216]

:[214]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
exit.i

:[215]
b [227]

:[216]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [218]

:[217]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [219]

:[218]
push.e 0

:[219]
bf [227]

:[220]
pushglb.v global.choice
push.s "Finished"@777
cmp.s.v EQ
bf [223]

:[221]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
exit.i

:[222]
b [227]

:[223]
push.v csel
pop.v.v self.savespot
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.needarray
pop.v.v self.myselection
push.v self.myselection
pushglb.v global.donutlist
call.i ds_list_find_index(argc=2)
pop.v.v self.findspot
push.v self.findspot
pushi.e -1
cmp.i.v EQ
bf [225]

:[224]
push.v self.myselection
pushglb.v global.donutlist
call.i ds_list_add(argc=2)
popz.v
push.s "Do-Nut Barn"@2196
pushi.e -1
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]self.namearray
push.s "So, one box of "@2199
push.l 1
conv.l.v
push.v self.myselection
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "s? Anything else?"@2200
add.s.v
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.donutcost
sub.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [226]

:[225]
push.v self.findspot
pushglb.v global.donutlist
call.i ds_list_delete(argc=2)
popz.v
push.s "Do-Nut Barn"@2196
pushi.e -1
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]self.namearray
push.s "Op! I'll take that off your order. Anything else?"@2201
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.donutcost
add.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[226]
call.i madechoice(argc=0)
popz.v

:[227]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [237]

:[228]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.needarray
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [236]

:[229]
push.v other.savespot
pop.v.v self.csel
pushi.e 0
pop.v.i local.o
push.l 58
pop.v.l local.i

:[230]
pushloc.v local.i
push.l 65
cmp.l.v LT
bf [235]

:[231]
pushloc.v local.i
pushglb.v global.donutlist
call.i ds_list_find_index(argc=2)
pop.v.v self.findme
push.v self.findme
pushi.e -1
cmp.i.v EQ
bf [233]

:[232]
push.s "Order "@786
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "s"@2202
add.s.v
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.v [array]self.choices
b [234]

:[233]
push.s "Remove "@787
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "s"@2202
add.s.v
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.v [array]self.choices

:[234]
pushloc.v local.i
pushi.e -2
pushloc.v local.o
conv.v.i
pop.v.v [array]self.needarray
push.v local.o
push.e 1
add.i.v
pop.v.v local.o
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [230]

:[235]
push.s "Finished"@777
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength
push.v id
pop.v.v self.mybox

:[236]
popenv [229]

:[237]
b [251]

:[238]
push.s "Do-Nut Barn"@2196
pop.v.s global.boxname
push.s "Whoops, looks like you can't afford any more. Finalize your order or, should I take the last selection off?"@2203
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [242]

:[239]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [241]

:[240]
push.s "Yes, finish my order"@791
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Nevermind, go back"@792
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[241]
popenv [240]
b [244]

:[242]
pushi.e 0
pushi.e 0
push.v [array]self.choices
push.s "Yes, finish my order"@791
cmp.s.v NEQ
bf [244]

:[243]
pushi.e 0
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[244]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [246]

:[245]
pushglb.v global.donutlist
call.i ds_list_size(argc=1)
pop.v.v self.listlen
push.v self.listlen
pushi.e 1
sub.i.v
pushglb.v global.donutlist
call.i ds_list_delete(argc=2)
popz.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.donutcost
add.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
call.i madechoice(argc=0)
popz.v
b [251]

:[246]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [251]

:[247]
pushglb.v global.choice
push.s "Nevermind, go back"@792
cmp.s.v EQ
bf [249]

:[248]
pushglb.v global.donutlist
call.i ds_list_size(argc=1)
pop.v.v self.listlen
push.v self.listlen
pushi.e 1
sub.i.v
pushglb.v global.donutlist
call.i ds_list_delete(argc=2)
popz.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.donutcost
add.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
call.i madechoice(argc=0)
popz.v

:[249]
pushglb.v global.choice
push.s "Yes, finish my order"@791
cmp.s.v EQ
bf [251]

:[250]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v

:[251]
push.v self.vmode
pushi.e 1
cmp.i.v EQ
bf [end]

:[252]
push.s ""@150
pop.v.s global.boxname
push.s "Looks like that's it for donuts. Time to get to work!"@2204
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[253]
pushi.e 0
pop.v.i global.goldonly
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v

:[end]