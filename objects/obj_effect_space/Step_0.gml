//帧数检测
if(fps<30){a+=1}else{a=0}
if(a>fps*2){a=0}
if(a=fps*2){
instance_destroy()
CC_Add(GetString("str_space_effect_fps"))
}