function create_2_lasers(){
	var _distance = sprite_get_width(self.sprite_index) / 2
	var _angle = 60
	
	var _x = self.x + lengthdir_x(_distance,self.image_angle - _angle) + self.hspeed
	var _y = self.y + lengthdir_y(_distance,self.image_angle - _angle) + self.vspeed
	
	var _created_laser_right = instance_create_layer(_x,_y,"Instances",o_laser)
	_created_laser_right.direction = self.image_angle
	_created_laser_right.speed = 8
	_created_laser_right.image_angle = self.image_angle
	
	_x =  self.x + lengthdir_x(_distance,self.image_angle + _angle) + self.hspeed
	_y = self.y + lengthdir_y(_distance,self.image_angle + _angle) + self.vspeed
	
	var _created_laser_left = instance_create_layer(_x,_y,"Instances",o_laser)
	_created_laser_left.direction = self.image_angle
	_created_laser_left.speed = 8
	_created_laser_left.image_angle = self.image_angle
}