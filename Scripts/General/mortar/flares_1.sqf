// https://community.bistudio.com/wiki/doArtilleryFire
// https://community.bistudio.com/wiki/Position
// https://community.bistudio.com/wiki/getMarkerPos

if (! isServer) exitWith {};

waituntil {v_night};


while {v_night AND (alive mortar_1)} do 

				{
					mortar_1 setVehicleAmmo 1;
					
					mortar_1 doArtilleryFire [[8770,3594,25], "8Rnd_82mm_Mo_Flare_white", 1];
					
					mortar_1 setVehicleAmmo 1;
					sleep 3;
					
					mortar_1 doArtilleryFire [[8950,3567,25], "8Rnd_82mm_Mo_Flare_white", 1];
					
					mortar_1 setVehicleAmmo 1;
					sleep 12;
					
					mortar_1 doArtilleryFire [[9317,3366,25], "8Rnd_82mm_Mo_Flare_white", 1];
					
					mortar_1 setVehicleAmmo 1;
					sleep 3;
					
					mortar_1 doArtilleryFire [[9617,3266,25], "8Rnd_82mm_Mo_Flare_white", 1];
					
					mortar_1 setVehicleAmmo 1;
					sleep 12;
					
					mortar_1 doArtilleryFire [[9748,3146,25], "8Rnd_82mm_Mo_Flare_white", 1];
					
					mortar_1 setVehicleAmmo 1;
					sleep 3;
					
					mortar_1 doArtilleryFire [[9840,3588,25], "8Rnd_82mm_Mo_Flare_white", 1];
					
					mortar_1 setVehicleAmmo 1;
					
					sleep 120;
					
				};
