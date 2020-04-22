/// @description Insert description here
// You can write your code in this editor


#region//MOVEMENT AND GUARD
//if not on target location (so move)
if targ_x != x and targ_y !=y {
	shooting = false;	
	image_angle = direction
	}else {
		// on target location, scan for enemies
		targ = scrTargetEnemy();
		if targ and targ.object_index == oEnemy{
			aim_angle = point_direction(x,y,targ.x,targ.y)
			if round(image_angle) = round(aim_angle){
				shooting = true;
					with targ {
						if hlth >= 0 {
							hlth -=5;
						}else {
						instance_destroy();	
					}
				}
			}else {
				image_angle = aim_angle;
				shooting = false;
					}
		}else {
			shooting = false;
		}
}
	
//follow party


#endregion