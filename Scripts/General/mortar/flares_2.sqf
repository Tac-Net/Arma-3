
if (! isServer) exitWith {};

waituntil {v_night};

while {v_night AND (alive mortar_2)} do 

				{

					mortar_2 doArtilleryFire [[10579,3247,25], "8Rnd_82mm_Mo_Flare_white", 1];
					
					mortar_2 setVehicleAmmo 1;
					sleep 3;
					
					mortar_2 doArtilleryFire [[10627,2773,25], "8Rnd_82mm_Mo_Flare_white", 1];
					
					mortar_2 setVehicleAmmo 1;
					sleep 12;
					
					mortar_2 doArtilleryFire [[9999,3294,25], "8Rnd_82mm_Mo_Flare_white", 1];
					
					mortar_2 setVehicleAmmo 1;
					sleep 3;
					
					mortar_2 doArtilleryFire [[10169,2998,25], "8Rnd_82mm_Mo_Flare_white", 1];
					
					mortar_2 setVehicleAmmo 1;
					sleep 12;
					
					mortar_2 doArtilleryFire [[9744,3508,25], "8Rnd_82mm_Mo_Flare_white", 1];
					
					mortar_2 setVehicleAmmo 1;
					sleep 3;
					
					mortar_2 doArtilleryFire [[9504,3488,25], "8Rnd_82mm_Mo_Flare_white", 1];
					
					mortar_2 setVehicleAmmo 1;
					
					sleep 120;
					
				};