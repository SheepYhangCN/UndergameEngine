![](https://img.shields.io/github/stars/SheepYhangCN/UndergameEngine?style=flat-square ":no-zoom")
![](https://img.shields.io/github/license/SheepYhangCN/UndergameEngine?style=flat-square ":no-zoom")
![](https://img.shields.io/github/languages/top/SheepYhangCN/UndergameEngine.svg?style=flat-square ":no-zoom")

# UndergameEngine
当前分支：**模板分支（template）**
<br>
你可以切换至**主分支（main）** 来获取我的游戏源码
<br><br>
一个我的自制Undertale同人游戏的合集
<br>
也是一个基于<a href=https://github.com/TML233>糖萌芦<a/>的<a href=https://github.com/TML233/UndertaleEngine>UNDERTALE Engine<a/>的开源模板
<br>
使用最新的release版GameMaker来打开yyp文件
<br>
Gamejolt页面：
https://gamejolt.com/games/Undergame-Engine/783903
<br><br>
修改项目内的宏LOCK_LANGUAGE为相应的语言可以把游戏语言锁定
# Debug使用方法
Insert 开关调试模式
<br>
~ 控制台
<br>
Home 不死模式
<br>
Delete 切换回合
<br>
End 主世界(切换空气墙、触发块、landmark显示) 战斗(切换bone.out)
<br>
PageUp 触发商店
<br>
PageDown 触发战斗
<br>
空格 暂停游戏
<br>
加号 增加HP
<br>
减号 减少HP
<br>
左Ctrl 降低LV
<br>
右Ctrl 提升LV
<br>
小键盘0 红色灵魂
<br>
小键盘1 蓝色灵魂
<br>
小键盘2 青色灵魂
<br>
小键盘3 橙色灵魂
<br>
小键盘4 黄色灵魂
<br>
小键盘5 绿色灵魂
<br>
小键盘1+2 蓝+青灵魂
<br>
小键盘2+3 青+橙灵魂
<br>
小键盘4+2 黄+青灵魂
<br>
小键盘4+3 黄+橙灵魂
<br>
小键盘4+2+3 黄+青+橙灵魂
<br>
小键盘5+2 绿+青灵魂
<br>
左Alt 逆时针旋转屏幕
<br>
右Alt 顺时针旋转屏幕
<br>
按下鼠标中键 重置屏幕旋转
<br>
鼠标前侧键 下一房间
<br>
鼠标后侧键 前一房间
<br>
S 弹出存档界面（蓝魂或蓝+青魂时失效）
<br>
L 读取存档
<br>
F 设置存档档位
<br>
Tab 切换窗口大小（1x/1.5x/2x）
<br>
F3 跳转房间
<br>
F5 切换语言
<br>
F6 结束回合
<br>
F7 修改回合时间（Battle_SetTurnTime）
<br>
F8 修改回合时间（battle_turn.timer）
<br>
F9 停止所有音频
<br>
F12 切换模式
<br>
WASD 蓝魂和蓝+青魂的方向设置
# Bullet制作名单
骨头(battle_bullet_bone)By 憨憨羊の宇航鸽鸽
<br><br>
菜单骨创建脚本(Battle_MakeMenuBone)By 憨憨羊の宇航鸽鸽 修改基于Battle_MakeBone
<br><br>
骨头创建脚本(Battle_MakeBone系列)By 1个渣渣
<br>
骨墙创建脚本(Battle_MakeBoneWall系列)By 1个渣渣
<br>
骨墙的bone_box By 憨憨羊の宇航鸽鸽
<br>
圆形骨墙创建脚本(Battle_MakeBoneWallRound)By 憨憨羊の宇航鸽鸽
<br>
会转的圆形骨墙(battle_bone_rd和oRoundBone)作者未知
<br>
会转的圆形骨墙创建脚本(Battle_MakeBoneWallRound_Rotate)By 憨憨羊の宇航鸽鸽
<br>
圆形骨墙的bone_box_round By 1个渣渣
<br>
丝滑骨墙(Battle_MakeBoneWall...Anim)By Schizoid_Doge
<br><br>
3D立方骨(obj_bone_cube)By Siki
<br>
3D立方骨生成脚本(Battle_MakeBoneCube)By 憨憨羊の宇航鸽鸽
<br><br>
GB炮By 复读鸭
<br>
GB炮生成脚本(Battle_MakeBlaster)By 憨憨羊の宇航鸽鸽 修改基于复读鸭的脚本
<br><br>
板子By 1个渣渣
<br>
板子的bounce By 憨憨羊の宇航鸽鸽
<br><br>
圆形光波 一字十字米字炸弹 撞击型弹幕 Dusttrust刀光 单发枪 By 憨憨羊の宇航鸽鸽
# Bullet生成函数使用方法
（obj=object=物体，spr=sprite=精灵图）
<br>
（带星号为可选参数）
## 板子
Battle_MakePlatform(x,y,\*obj,\*粘性,\*宽度,\*角度,\*水平速度,\*纵向速度,\*遇到框边缘回弹,\*离开房间是否自动摧毁)
## 单骨头
Battle_MakeBone/MenuBone(x,y,长度,水平速度,纵向速度,弹幕颜色类型,是否在战斗框外显示,角度,旋转速度,离开房间是否自动摧毁,\*持续时间,\*obj,\*spr)
<br>
Battle_MakeBoneH和Battle_MakeBoneV同上 但是不包括角度
## 靠边单骨头
Battle_MakeBoneLeft/Right(y,长度,纵向速度,弹幕颜色类型,是否在战斗框外显示,旋转速度,离开房间是否自动摧毁,\*持续时间,\*obj,\*spr)
<br>
Battle_MakeBoneTop/Bottom同上 但是y换为x 纵向速度换为横向速度
## 双骨头
Battle_MakeBoneTwoPoints(第1个点的x,第1个点的y,第2个点的x,第2个点的y,弹幕颜色类型,是否在战斗框外显示,离开房间是否自动摧毁,\*持续时间,\*obj,\*spr)
<br>
Battle_MakeBoneTwoH(x,y,水平速度,空隙大小,离开房间是否自动摧毁,\*持续时间,\*obj,\*spr)
Battle_MakeBoneTwoV同上 但是水平速度换为纵向速度
## 3D立方骨
Battle_MakeBoneCube(x,y,x角度,y角度,z角度,x旋转速度,y旋转速度,z旋转速度,x尺寸,y尺寸,z尺寸,\*骨头obj,\*骨头spr)
## 骨墙
Battle_MakeBoneWallBottom/Top/Left/Right(等待时间,长度,持续时间,\*弹幕颜色类型,\*obj,\*骨头spr)
<br>
Battle_MakeBoneWallRound(骨头之间的空隙,骨头尾端到框中心的距离,长度,弹幕颜色类型,等待时间,\*持续时间,\*骨头obj,\*骨头spr)
<br>
Battle_MakeBoneWallRound_Rotate(旋转速度,长度,弹幕颜色类型,等待时间,\*持续时间,\*是否要出现警示框和音效(bone_box_round),\*是否要让骨头伸出而不是直接出现,\*obj,\*骨头spr)
<br>
Battle_MakeBoneWall...Anim系列就不写了 注释都是中文的 而且我也不会用（
## GB炮
Battle_MakeBlaster(x,y,目标x,目标y,角度,目标角度,发射前等待时间,x尺寸,y尺寸,发射持续时间,入场时间,弹幕颜色类型,\*发射是否晃屏,\*spr,\*obj,\*入场音频,\*发射音频,\*光波的spr)
## 撞击型弹幕（友谊颗粒）
Battle_MakeFriendlyPellet(x,y,目标x,目标y,\*弹幕颜色类型,\*发射前等待时间,\*移动至目标点所用时间,\*发射后速度,\*运动角度,\*图像角度,\*离开房间是否自动摧毁,\*回弹缓动,\*obj,\*spr)
## 一字十字米字炸弹
Battle_MakeLineBomb(x,y,\*角度,\*宽度,\*(0为一字 1为十字 2为米字),\*弹幕颜色类型,\*x尺寸,\*y尺寸,\*缓入时间,\*爆炸前等待时间,\*光束持续时间,\*缓出时间,\*是否晃屏,\*obj,\*spr)
## Dusttrust刀光
Battle_MakeDtKnife(\*x,\*y,\*obj,\*角度,\*弹幕颜色类型,\*宽度,\*警告持续时间,\*刀光持续时间,\*刀光出现瞬间的击中伤害)
## 自动变大的圆形光波
Battle_MakeWave(x,y,\*弹幕颜色类型,\*变大速度,\*初始尺寸,\*obj)
## 单发枪
Battle_GunShoot(x,y,\*角度,\*弹幕颜色类型,\*缓入时间,\*发射前等待时间,\*x尺寸,\*y尺寸,\*发射前出现瞄准图像的距离,\*是否有水平瞄准图像,\*是否有纵向瞄准图像,\*obj,\*spr,\*发射前音效,\*发射音效)
