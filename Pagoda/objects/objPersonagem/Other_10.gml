/// @description Controles
if(!morreu){
	keyleft = -keyboard_check(key.left);
	keyright = keyboard_check(key.right);
	keyright_ = keyboard_check_pressed(key.right);
	keyleft_ = keyboard_check_pressed(key.left);
	if(!soltar){
		keyjump = keyboard_check_pressed(key.jump);
		keydown = keyboard_check(key.down);
		keyatk = keyboard_check(key.atk);
		keyup = keyboard_check(key.up);
	}
}