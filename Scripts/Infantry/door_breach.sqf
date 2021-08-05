/* --> In die Init des BlockadeObjekts! <---*/

this addEventHandler ["Killed", { 
  params ["_unit"]; 
  deleteVehicle _unit; 
 bdg_1 animateSource ["Door_1_sound_source", 1]; 
}];