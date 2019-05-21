/// @description Initalize the enemy
speed_ = [0, 0]
speed_push_ = [0, 0];
health_ = 4;

// Bullet cooldown
bullet_cooldown_ = room_speed/2;
alarm[0] =bullet_cooldown_;

// States
MOVEMENT_ = 0;
ATTACK_ = 1;
HIT_ = 2;

state_ = MOVEMENT_;