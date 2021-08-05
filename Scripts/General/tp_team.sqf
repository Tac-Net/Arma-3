/* - - - Check: https://forums.bistudio.com/topic/118131-teleport-to-leader-script/ - - - */
/* AUFRUF --> this addAction ["<t color='3a34ea'>Teleport zum Team</t>","scripts\tp_team.sqf"];   <-- */


_unit = _this select 1;
_gmember = selectrandom units group _unit;

if (( !alive leader group _unit) or (_unit == leader group _unit)) 

	then {
		
		if (vehicle _gmember != _gmember) then {
		
		_unit moveInCargo vehicle _gmember;
		
			} else {
	
			_unit setDir direction _gmember;
			_unit setPosATL [getPosATL _gmember select 0,getPosATL _gmember select 1,getPosATL _gmember select 2];
			_unit setPos (_gmember modelToWorld [+0.75,-1,((position _gmember) select 2)+0]);
	
		}

	} else {

		if (vehicle leader group _unit != leader group _unit) then {
	
		_unit moveInCargo vehicle leader group _unit
		
			} else {
	
			_unit setDir direction leader group _unit;
			_unit setPosATL [getPosATL leader group _unit select 0,getPosATL leader group _unit select 1,getPosATL leader group _unit select 2];
			_unit setPos (leader group _unit modelToWorld [+0.75,-1,((position leader group _unit) select 2)+0])
	
			};
		};
