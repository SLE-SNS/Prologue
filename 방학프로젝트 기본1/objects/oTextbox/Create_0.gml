/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

messages = ds_list_create();
messageID = 0;

messageText = "";
messageChar = 0;
messageSpeed = 0.3;

enum MSG {
	TEXT,
	NAME,
	IMAGE 
}

var _guiW = display_get_gui_width()
var _guiH = display_get_gui_height()

height = floor(_guiH * 0.45);
width = _guiW;

x = 0;
y = _guiH - height;

padding = 8;