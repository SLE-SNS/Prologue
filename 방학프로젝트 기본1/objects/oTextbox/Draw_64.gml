/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var _arr = messages[| messageID];

var _name = _arr[MSG.NAME];
var _image = _arr[MSG.IMAGE];

draw_set_font(Font1);

draw_9slice(x, y, width, height, sTextbox, 0);

var _drawX = x + padding;
var _drawY = y + padding;

if (sprite_exists(_image)) {
	var _imageW = sprite_get_width(_image);
	var _imageH = sprite_get_height(_image);
	
	draw_sprite(_image, 0, _drawX + _imageW / 2, _drawY + _imageH / 2);
	
	_drawX += _imageW + padding;
}

draw_set_color(c_white);

draw_text(_drawX, _drawY, _name);

_drawY += string_height(_name) + padding;

var _maxW = width - (_drawX + padding);

draw_text_ext(_drawX, _drawY, messageText, -1, _maxW);

draw_set_color(c_white)