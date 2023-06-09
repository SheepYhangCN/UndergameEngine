///@arg weekday
function GetWeekday(){
var weekday=current_weekday
var result="ERROR"
if(argument_count>0){
weekday=argument[0]}
result=GetString("str_weekday"+string(weekday))
return result
}