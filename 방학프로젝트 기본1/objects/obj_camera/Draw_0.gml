/// @description 인터페이스
// 이 에디터에 코드를 작성할 수 있습니다

draw_set_font(Font2);

//인터페이스
var cam_x=camera_get_view_x(view_camera[0])
var cam_y=camera_get_view_y(view_camera[0])
draw_sprite(HUD_Back,0,cam_x,cam_y)
draw_sprite_part(EXPBar2,0,0,0,324*(global.Exp/global.maxexp),360,cam_x+158,cam_y)
draw_sprite(HPBarVar1,0,cam_x,cam_y)
draw_sprite_part(HPBarVar3,0,0,0,104,103-(103 * (global.hp/global.maxhp)),cam_x+53,cam_y+252)
draw_sprite(HUD_Front,0,cam_x,cam_y)
draw_sprite(RightAngel,0,cam_x,cam_y)
draw_sprite(LeftAngel,0,cam_x,cam_y)
draw_sprite(ManaBarVar1,0,cam_x,cam_y)
draw_sprite_part(ManaBarVar4,0,0,0,104,103-(103 * (global.mp/global.maxmp)),cam_x+483,cam_y+252)
draw_sprite(SkillSlots,0,cam_x,cam_y)
draw_text(cam_x+178,cam_y+315, "LV:" + string(global.level))