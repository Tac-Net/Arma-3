/* 
Scripted by: [TacNet] Insect
Original Idea: [PzGrenBtl 402] Mishkar
https://www.tactical-network.de
Feel free to use & share

USAGE:
Call in init.sqf or trigger
[vehicleName] execVM "scripts\vehstuck.sqf"
*/

if !(isserver) exitwith {};
params ["_veh"];

// erzeugt array für Fahrzeugname + Fuelstatus des Fahrzeuges
if (IsNil "aFUELARRAY") then {aFUELARRAY = []; publicvariable "aFUELARRAY"};

// prüft alle 5 Sekunden Fahrt ob Fahrzeug auf einer Straße ist und Wahrscheinlichkeit erfüllt
waituntil {sleep 5; !(isOnRoad _veh) AND (random 1 < dPROPABILITY) AND (speed _veh > 0)};

// befüllt array mit fahrzeugname + fuelstand
aFUELARRAY pushback [_veh, fuel _veh];
publicvariable "aFUELARRAY";

// setzt fuel & spd = 0
[_veh, 0] remoteExec ["setFuel", _veh, true];
[_veh, [0.1,0.1,0.1]] remoteExec ["setVelocity", _veh, true];
["Festgefahren"] remoteExec ["hint", _veh, true];


// stellt sicher dass fuel & spd 0 und stabil sind
waituntil {fuel _veh == 0 AND speed _veh == 0};
sleep 1;
waituntil {fuel _veh == 0 AND speed _veh == 0};


_pos = getpos _veh;

// erstellt ace-interaction zum freigraben
[-2, {params ["_veh"];
_action = ["unstuck","Fahrzeug befreien","",
	{
	[_target, _player] spawn 
		{
		params ["_veh", "_player", "_unstuckway"];
		bVEHUNSTUCK = 0;
		_fuel = {if (_x select 0 == _veh) then {_x select 1;}} forEach aFUELARRAY;
		_entrenchingtool = false;
		{if (_x == "ACE_EntrenchingTool") then {_entrenchingtool = true}} foreach items _player;
		if !(_entrenchingtool) exitwith {hint "Klappspaten zum graben benötigt"};
		[_player] spawn {while {bVEHUNSTUCK == 0} do {params ["_player"]; _player switchmove "Acts_carFixingWheel"; sleep 20}};
		[dDIGGINGTIME, [], {bVEHUNSTUCK = 1; Hint "Fahrzeug freigegraben"}, {bVEHUNSTUCK = 2; if (bVEHUNSTUCK == 2) exitwith {Hint "Graben abgebrochen."; _player switchmove "";}}, "Graben"] call ace_common_fnc_progressBar;
		waituntil {sleep 0.5; bVEHUNSTUCK == 1};
		[_veh, _fuel] remoteExec ["setFuel", _veh, true];
		_player switchmove "";
		}
	}
,{true},{},[], [0,0,0], 300] call ace_interact_menu_fnc_createAction;
[_veh, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
}, [_veh]] call CBA_fnc_globalExecute;


//prüft, ob fuel > 0 oder fahrzeug 5m weit von der festgefahren-position weggezogen wird
[_veh, _pos] spawn 
	{
	params ["_veh", "_pos"];
	waituntil {sleep 0.5; _veh distance _pos > 5 OR fuel _veh > 0};
	if (fuel _veh > 0) exitwith {};
	_fuel = {if (_x select 0 == _veh) then {_x select 1;}} forEach aFUELARRAY;
	[_veh, _fuel] remoteExec ["setFuel", _veh, true];
	};

//setzt all den scheiss von oben zurück
waituntil {sleep 1; fuel _veh > 0};
[_veh, 0, ["ACE_MainActions", "unstuck"]] remoteExec ["ace_interact_menu_fnc_removeActionFromObject", 0, true];
{if (_x select 0 == _veh) then {aFUELARRAY deleteat  _forEachIndex}} forEach aFUELARRAY;
[_veh, dPROPABILITY] execVM "scripts\vehstuck.sqf";







