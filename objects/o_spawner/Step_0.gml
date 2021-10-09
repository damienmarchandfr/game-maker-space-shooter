var enemy_count = instance_number(p_ship) - 1
var _enemies = [o_enemy_red,o_enemy_orange]
var _game = instance_find(o_game,0)

var _score = 0
if(_game){
	_score = _game.game_score
}

if(enemy_count <= self.min_enemies_number + _score div 10){
	var _center_x = room_width/2
	var _center_y = room_height/2
	
	// Create new enemies wave
	repeat(self.enemies_number_to_add){
		var _direction = random(360)
		var _distance = random_range(room_width*0.6,room_width*1.25)
		var _x = _center_x + lengthdir_x(_distance,_direction)
		var _y = _center_y + lengthdir_y(_distance,_direction)
		
		// Random index
		var _index = irandom(1)
		instance_create_layer(_x,_y,"Instances",_enemies[_index])
	}
}