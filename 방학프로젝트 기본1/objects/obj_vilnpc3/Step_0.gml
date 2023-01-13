/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if(state == "walk_towards_point")
{
    move_towards_point(x_var, y_var, speed_var);
    
	//sprite_index = bearded_walk;
	if(distance_to_point(x_var, y_var) < 3)
    {	
		image_xscale = -1;
		state = "walk_back_to_start";
    }
}

else if(state == "walk_back_to_start")
{
	sprite_index = hat_man_walk;
    move_towards_point(xstart, ystart, speed_var);
    if(distance_to_point(xstart, ystart) < 3)
    {	image_xscale = 1;
		state = "walk_towards_point";
	}
}

if (obj_player.x > obj_vilnpc3.x-20 && obj_player.x < obj_vilnpc3.x+20){
	sprite_index = hat_man_idle;
	x = obj_vilnpc3.x;
	y = obj_vilnpc3.y;
	speed = 0;
	if(obj_player.x > obj_vilnpc3.x-20) {
		image_xscale = -1;
	}
}




