// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function				enemy_bounce(_object_,acceleration,_max_speed);
/// @param {index} _object	Object collide with
/// @param {real} _acceleratopn  
/// @param {int} _max_speed 
function enemy_bounce(_object,_acceleration,_max_speed){
	
	if(!instance_exists(_object)) exit
	
	var _bounce_direction = point_direction(_object.x,_object.y,self.x,self.y)
	motion_add(_bounce_direction,_acceleration/5)
	
	if(self.speed > _max_speed){
		self.speed = _max_speed
	}
}

function follow_player(){
	var _player = instance_find(o_player_ship,0)

	if(!_player) exit;

	var _player_direction = point_direction(self.x,self.y,_player.x,_player.y)
	self.image_angle = self.direction
	motion_add(_player_direction,self.acceleration)

	if(self.speed > self.max_speed){
		self.speed = self.max_speed
	}
}