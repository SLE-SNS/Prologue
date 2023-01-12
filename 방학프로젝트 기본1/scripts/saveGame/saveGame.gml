// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveGame(){
	var _saveData = array_create(0); // 데이터를 저장할 배열
	
	with(obj_camera){ // 현재 상태를 저장한 obj 접
		
		var _saveGameData ={ // 실질적인 데이터의 구조 생성
			obj : object_get_name(object_index), // obj 이름
			currentLevel : global.level, // 현재 level
			currenthp : global.hp,
			currentExp : global.Exp,
			currentatk : global.atk,
			currentatkspeed : global.atkspeed,
			currentdir : global.dir,
			currentexp : global.maxexp,
			currentmaxhp : global.maxhp,
			currentmaxmp : global.maxmp,
			currentmp : global.mp
		}
		
		array_push(_saveData, _saveGameData); // 실질적인 데이터를ㅎ데이ㅣ터를 저장할 배열에 push
	}
	
	// json ㅍㅏ일로 변환
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "savegame.save");
	buffer_delete(_buffer);
	
	show_debug_message("Game Saved: " + _string);
	
}