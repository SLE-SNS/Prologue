/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(state == "walk_towards_point")
{
    move_towards_point(x_var, y_var, speed_var);
    sprite_index = beardman_walk;
	image_xscale = -1;
	if(distance_to_point(x_var, y_var) < 3)
    {	
		//sprite_index = breadman_stop_l;
		state = "walk_back_to_start";
    }
}

else if(state == "walk_back_to_start")
{
	sprite_index = beardman_walk;
    move_towards_point(xstart, ystart, speed_var);
    if(distance_to_point(xstart, ystart) < 3)
    {	//sprite_index = breadman_stop;
		state = "walk_towards_point";

    }
}




