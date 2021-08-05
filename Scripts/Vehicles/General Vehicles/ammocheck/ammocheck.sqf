//aufruf: [vehicle, [muzzle1, ...]] execvm "scripts\ammocheck.sqf";

params ["_vec", "_muzzle"];  
private ["_ammo", "_string"];  
 
//count ammo for chosen muzzle  
_ammo = [];
{  
_mun = str(_vec ammo _x); 
_ammo pushback [_x, _mun];  
} foreach _muzzle;  
//create string  
string = "Munition:";  
//hint erzeugen 
{ 
_muzzle = _x select 0;  
_mun = _x select 1; 
string = string + "\n" + _muzzle + ": " + _mun;  
} foreach _ammo;  
  
[5, [], {hint string;
}, {Hint "Munitionsstatus nicht geprüft"}, "Munition prüfen"] call ace_common_fnc_progressBar;

