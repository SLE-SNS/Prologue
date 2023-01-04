/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

//STEP EVENT
//state for walking towards new point

if(state == "walk_towards_point")
{
    move_towards_point(x_var, y_var, speed_var);
    //have to check for range; movement isn't exact, so just checking
    //like you did means that the condition is never satisfied because x might be 300.002 instead of 300
    sprite_index = breadman_walking_l;
	if(distance_to_point(x_var, y_var) < 3)
    {	
		//sprite_index = breadman_stop_l;
		state = "walk_back_to_start";
    }
}
//walking back towards start state
else if(state == "walk_back_to_start")
{
	sprite_index = breadman_walking_r;
    move_towards_point(xstart, ystart, speed_var);
    if(distance_to_point(xstart, ystart) < 3)
    {	//sprite_index = breadman_stop;
		state = "walk_towards_point";

    }
}