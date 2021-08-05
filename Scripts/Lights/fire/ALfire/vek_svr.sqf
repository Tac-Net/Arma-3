// by ALIAS


if (!isServer) exitWith {};

	_lft = _this select 0;
	_obje = _this select 1;
	_killv = _this select 2;
	
	sleep _lft;

	if (_killv) then {
		_obje setDammage 1;
	};
	