/// @description Insert description here
// You can write your code in this editor


//list with partymembers 
partylist = ds_list_create();//import team 
teamlist = ds_list_create();//create list of teammember for ingame

ds_list_add(partylist,oScientist);
ds_list_add(partylist,oSoldier);
ds_list_add(partylist,oSoldier);
ds_list_add(partylist,oSoldier);

//simple loop to spawn party when map starts
var i;
for (i = 0; i < ds_list_size(partylist); i += 1){
var team = instance_create_layer(x + lengthdir_x(60,90 * i), y + lengthdir_y(100, 90 * i),"Instances",partylist[|i]);
ds_list_add(teamlist,team);
}
ds_list_destroy(partylist);//not needed anymore

//start with scientist selected:
active_pawn = teamlist[|0];
active_pawn.selected =true;

instance_create_layer(x,y,"Instances",oViewCamera)
cam1 = camera_set_view_target(view_camera[0],oViewCamera);


