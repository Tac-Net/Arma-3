/*
Scripted by Dominicus1165
https://www.tactical-network.de

USAGE:
Write the following in the init field of an object.
[[my, vehicle, array]] execVM "scripts\deleteVehicleWithCrew.sqf";
*/

//Vehicle Array. Write in [] even if only one vehicle.
params[
	["_vehicles",[],[]]
];

{
	private _vehicle = _x;
	{
		_vehicle deleteVehicleCrew _x;
	} forEach crew _vehicle;
	deleteVehicle _vehicle;
} forEach _vehicles;

/*
EXAMPLES:

Singular vehicle
[[helicopter]] execVM "scripts\deleteVehicleWithCrew.sqf";

Multiple vehicles
[[car, helicopter, boat]] execVM "scripts\deleteVehicleWithCrew.sqf";

this
[[this]] execVM "scripts\deleteVehicleWithCrew.sqf";
*/