// Inherit the parent event
event_inherited();

var _game = instance_find(o_game,0)

if(_game){
	// Best score
	if(_game.game_score > _game.hight_score){
		_game.hight_score = _game.game_score
	}
	ini_open("data.prout")
	ini_write_real("scores","highest",_game.hight_score)
	ini_close()
	
	// Init score
	_game.game_score = 0
}

room_goto(r_menu_start)

