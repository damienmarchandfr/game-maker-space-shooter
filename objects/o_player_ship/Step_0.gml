var _cursor_direction =  point_direction(self.x,self.y,mouse_x,mouse_y)
var _mouse_right_clicked = mouse_check_button(mb_right)
var _mouse_left_clicked = mouse_check_button_pressed(mb_left)

// Move
if(_mouse_right_clicked && self.speed < self.max_speed){
	self.direction = _cursor_direction
    motion_add(self.image_angle,self.acceleration)
}else{
	self.friction = self.friction_amount
}



// Display
if(_mouse_right_clicked){
	repeat(2){
		var _offset = random_range(-4,4)
		var _length = -14
		var _x = self.x + lengthdir_x(_length,self.image_angle) + _offset 
		var _y = self.y + lengthdir_y(_length,self.image_angle) + _offset
		instance_create_layer(_x,_y,"Effects",o_p_explosion)
	}
}


self.image_angle = _cursor_direction
self.image_index = _mouse_right_clicked


// Fire
if(_mouse_left_clicked){
	create_2_lasers()
}