/// @description Movement state

// Move force
if instance_exists(o_player) {
var dir = point_direction(x, y, o_player.x, o_player.y);
speed_[h] = lengthdir_x(speed_[h], dir);
speed_[v] = lengthdir_y(speed_[v], dir);
move(speed_);

	//Push force
	move(speed_push_);
	if !place_meeting(x, y, o_enemy) {
		speed_push_[h] = lerp(speed_push_[h], 0, .1);
		speed_push_[v] = lerp(speed_push_[v], 0, .1);
	}

	//Death
	if health_ <= 0 {
		instance_destroy();
	}

	if distance_to_object(o_player) < 48 {
		state_ = ATTACK_;
	}
}