![](https://img.shields.io/github/release/SheepYhangCN/UndergameEngine.svg?style=flat-square ":no-zoom")
![](https://img.shields.io/github/stars/SheepYhangCN/UndergameEngine?style=flat-square ":no-zoom")
![](https://img.shields.io/github/license/SheepYhangCN/UndergameEngine?style=flat-square ":no-zoom")
![](https://img.shields.io/github/languages/top/SheepYhangCN/UndergameEngine.svg?style=flat-square ":no-zoom")

# Undergame Engine
Current branch: **template**
<br>
You can switch to **main** branch to get my game source
<br><br>
A game compilation of my self-made Undertale fangames
<br>
Also a open-source template based on <a href=https://github.com/TML233/UndertaleEngine>UNDERTALE Engine<a/> by <a href=https://github.com/TML233>TML<a/> 
<br>
Use the latest release version of GameMaker to open yyp file
<br>
Gamejolt page:
https://gamejolt.com/games/Undergame-Engine/783903

# How 2 use Debug
Insert Switch Debug
<br>
~ Console
<br>
Home Undead mode
<br>
Delete Change turn
<br>
End overworld(switch block, trigger, landmark visible) battle(switch bone.out)
<br>
PageUp Start Shop
<br>
PageDown Encounter Battle
<br>
Space Pause game
<br>
Plus HP+
<br>
Minus HP-
<br>
L Ctrl LV-
<br>
R Ctrl LV+
<br>
keypad0 red soul
<br>
keypad1 blue soul
<br>
keypad2 aqua soul
<br>
keypad3 orange soul
<br>
keypad4 yellow soul
<br>
keypad5 green soul
<br>
keypad1+2 blue+aqua soul
<br>
keypad2+3 aqua+orange soul
<br>
keypad4+2 yellow+aqua soul
<br>
keypad4+3 yellow+orange soul
<br>
keypad4+2+3 yellow+aqua+orange soul
<br>
keypad5+2 green+aqua soul
<br>
L Alt anti-clockwise rotate screen
<br>
R Alt clockwise rotate screen
<br>
Middle mouse button Reset screen rotate
<br>
Front mouse sidekey Next room
<br>
Back mouse sidekey Previous room
<br>
S Shown saving menu (invalid while blue soul or blue+aqua soul)
<br>
L Load save
<br>
F Set Save Slot
<br>
Tab switch window size (1x/1.5x/2x)
<br>
F3 goto room
<br>
F5 switch English and sChinese
<br>
F6 End turn
<br>
F7 change turn timer (Battle_SetTurnTime)
<br>
F8 change turn timer (battle_turn.timer)
<br>
F9 stop all audio
<br>
F12 switch mode
<br>
WASD dir setting of blue soul and blue+aqua soul
# Bullet Credits
Bone (battle_bullet_bone) By OneZhazha
<br>
Rewriting of collision By SheepYhangCN
<br><br>
Battle_MakeMenuBone By SheepYhangCN Edited based on Battle_MakeBone
<br><br>
Battle_MakeBone series By OneZhazha
<br>
Battle_MakeBoneWall series By OneZhazha
<br>
bone_box By OneZhazha
<br>
Battle_MakeBoneWallRound By SheepYhangCN
<br>
battle_bone_rd & oRoundBone By Unknown
<br>
Battle_MakeBoneWallRound_Rotate By SheepYhangCN
<br>
bone_box_round By OneZhazha
<br>
Smooth Bone Wall(Battle_MakeBoneWall...Anim) By Schizoid_Doge
<br><br>
3D bone cube (obj_bone_cube) By Siki
<br>
Battle_MakeBoneCube By SheepYhangCN
<br><br>
Gaster Blaster By FDY
<br>
Gaster Blaster spawn function(Battle_MakeBlaster) By SheepYhangCN Edited based on FDY
<br><br>
Platform By OneZhazha
<br>
bounce of platform By SheepYhangCN
<br><br>
Wave & LineBomb & FriendlyPellet & DusttrustKnife & Gun By SheepYhangCN
# How 2 Use Bullet Functions
(obj=object, spr=sprite)
<br>
(With asterisk means optional arguments)
## Platform
Battle_MakePlatform(x,y,\*obj,\*sticky,\*width,\*angle,\*hspeed,\*vspeed,\*bounce,\*auto destroy after out of the room)
## Single bone
Battle_MakeBone/MenuBone(x,y,length,hspeed,vspeed,color type,will it shown outside of board,angle,rotate speed,auto destroy after out of the room,\*duration,\*obj,\*spr of body,\*spr of end)
<br>
Battle_MakeBoneH and Battle_MakeBoneV are same but without "angle"
## Single bone but close to the board
Battle_MakeBoneLeft/Right(y,length,vspeed,color type,will it shown outside of board,rotate speed,auto destroy after out of the room,\*duration,\*obj,\*spr of body,\*spr of end)
<br>
Battle_MakeBoneTop/Bottom are same but replace "y" with "x", replace "vspeed" with "hspeed"
## Double bone
Battle_MakeBoneTwoPoints(x of first point,y of first point,x of second point,y of second point,color type,will it shown outside of board,auto destroy after out of the room,\*duration,\*obj,\*spr of body,\*spr of end)
<br>
Battle_MakeBoneTwoH(x,y,hspeed,gap scale,auto destroy after out of the room,\*duration,\*obj,\*spr of body,\*spr of end)
Battle_MakeBoneTwoV is same but replace "hspeed" with "vspeed"
## 3D Bone Cube
Battle_MakeBoneCube(x,y,xangle,yangle,zangle,xrotate speed,yrotate speed,zrotate speed,xscale,yscale,zscale,\*bone obj,\*bone, spr of body,\*bone, spr of end)
## BoneWall
Battle_MakeBoneWallBottom/Top/Left/Right(wait time,length,duration,\*color type,\*obj,\*bone, spr of body,\*bonespr of end)
<br>
Battle_MakeBoneWallRound(the gap between bones,the range between the end of the bone and the center of board,length,color type,wait time,\*duration,\*bone, spr of body,\*bone, spr of end)
<br>
Battle_MakeBoneWallRound_Rotate(rotate speed,length,color type,wait time,\*duration,\*are there any warning  box or sound(bone_box_round),\*make bone go out instead of spawn instantly,\*obj,\*bone, spr of body,\*bone, spr of end)
## Gaster Blaster
Battle_MakeBlaster(x,y,target x,target y,angle,target angle,wait time before shoot,xscale,yscale,beam duration,intro time,color type,\*will it shake screen,\*spr,\*obj,\*intro audio,\*shoot audio,\*beam spr)
## Friendly Pellet
Battle_MakeFriendlyPellet(x,y,target x,target y,\*color type,\*wait time before shoot,\*time taken to move to the target xy,\*speed after launch,\*angle of movement dependence,\*image angle,\*auto destroy after out of the room,\*tween,\*obj,\*spr)
## Line Bomb
Battle_MakeLineBomb(x,y,\*angle,\*width,\*(0=Line, 1=X, 2=米),\*color type,\*xscale,\*yscale,\*intro time,\*wait time before explode,\*beam duration,\*outro time,\*will it shake screen,\*obj,\*spr)
## Dusttrust Knife
Battle_MakeDtKnife(\*x,\*y,\*obj,\*angle,\*color type,\*width,\*warning duration,\*knife duration,\*the damage that hit at the moment that spawn)
## Wave
Battle_MakeWave(x,y,\*color type,\*scaling speed,\*start scale,\*obj)
## Gun
Battle_GunShoot(x,y,\*angle,\*color type,\*intro time,\*wait time before shoot,\*xscale,\*yscale,\*the range between the xy and the aim image before shoot,\*are there horizontal aim image,\*are there vertical aim image,\*obj,\*spr,\*prepare audio,\*shoot audio)