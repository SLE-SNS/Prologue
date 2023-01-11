// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadGame(){
	
	if(file_exists("savegame.save")){
		var _buffer = buffer_load("savegame.save");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_string);
		
		while(array_length(_loadData) > 0){
			var _loadEntity = array_pop(_loadData);
			
			with(instance_create_layer(0,0, "instances", asset_get_index(_loadEntity.obj))){
				//var load = asset_get_index(_loadEntity.currentLevel);
				global.level = _loadEntity.currentLevel;
			}
		}
		
		show_debug_message("Game Loaded: " +  _string);
	}
	
}