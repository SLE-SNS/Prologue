/// @description 몬스터 체력바
// 이 에디터에 코드를 작성할 수 있습니다

draw_set_font(Font2);
//체력바
var cam_x=camera_get_view_x(view_camera[0])
var cam_y=camera_get_view_y(view_camera[0])
draw_sprite(bossback,0,cam_x+120,cam_y)
draw_sprite_part(bosshp,0,0,0,301*(hp/maxhp),301,cam_x+170,cam_y+10)
draw_text(cam_x+250,cam_y+22, "Boss : True Road")
draw_self();