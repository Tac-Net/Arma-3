/* ---> In der initServe.sqf

{null = [_x] execVM "scripts\road_check.sqf";} forEach [dingo_0, dingo_1, dingo_2, eagle_0, eagle_1, eagle_2];

<---*/

_kfz = _this select 0;



waitUntil {sleep 1; not isOnRoad _kfz};

_pos_alt = getPos _kfz;
_treibstoff = fuel _kfz;
_ausfall = true;

_safehaven = _pos_alt distance safehavenmarker;
if (_safehaven < 100) then {_ausfall = false};

while {_ausfall} do
{
	sleep 0.5;
	if (isOnRoad _kfz) then {_ausfall = false};
	_pos_neu = getPos _kfz;
	_entfernung = _pos_neu distance _pos_alt;
	if (_entfernung > 3 && _ausfall) then
	{
		_zahl = selectRandom [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
		// hint str _zahl;
		if (_zahl == 1) then
		{
			// hint "Ausfall!";
			[_kfz, 0] remoteExec ["setFuel", _kfz, true];
			[_kfz, [0, 0, 0]] remoteExec ["setVelocity", _kfz, true];
			sleep 1;
			[_kfz, [0, 0, 0]] remoteExec ["setVelocity", _kfz, true];
			_ausfall = false;
		};
	};
	_pos_alt = _pos_neu;
};

sleep 1;
// hint "Schleife beendet";

waitUntil {sleep 1; isOnRoad _kfz};

[_kfz, _treibstoff] remoteExec ["setFuel", _kfz, true];

sleep 1;
// hint "Skript neustart";

[_kfz] execVM "scripts\road_check.sqf";
