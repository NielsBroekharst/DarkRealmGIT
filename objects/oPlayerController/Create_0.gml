/// @description Insert description here
// You can write your code in this editor
active_pawn = noone;

//list with partymembers 
partylist = ds_list_create();

ds_list_add(partylist,oScientist);
ds_list_add(partylist,oSoldier);
ds_list_add(partylist,oSoldier);
ds_list_add(partylist,oSoldier);

//simple loop to spawn party when map starts
var i;
for (i = 0; i < ds_list_size(partylist); i += 1){
	instance_create_layer(x + lengthdir_x(100,90 * i), y + lengthdir_y(100, 90 * i),"Instances",partylist[|i]);

}

instance_create_layer(x,y,"Instances",oViewCamera)
camera_set_view_target(view_camera[0],oViewCamera);

