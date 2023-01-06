/// @description 몬스터 체력바
// 이 에디터에 코드를 작성할 수 있습니다

//체력바
draw_healthbar(bbox_left-1.5, bbox_top-11, bbox_right+1.5, bbox_top-10, (hp/maxhp)*100, c_dkgray, c_red, c_green, 0, true, true)
draw_self();