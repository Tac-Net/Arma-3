//ace_interact_menu_fnc_createAction
/*
 * Argument:
 * 0: Action name <STRING>
 * 1: Name of the action shown in the menu <STRING>
 * 2: Icon <STRING>
 * 3: Statement <CODE>
 * 4: Condition <CODE>
 * 5: Insert children code <CODE> (Optional)
 * 6: Action parameters <ANY> (Optional)
 * 7: Position (Position array, Position code or Selection Name) <ARRAY>, <CODE> or <STRING> (Optional)
 * 8: Distance <NUMBER> (Optional)
 * 9: Other parameters [showDisabled,enableInside,canCollapse,runOnHover,doNotCheckLOS] <ARRAY> (Optional)
 * 10: Modifier function <CODE> (Optional)
 *
 *EXAMPLE:
 *
 *_action = ["VulcanPinch","Vulcan Pinch","",{_target setDamage 1;},{true},{},[parameters], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
 *[cursorTarget, 0, ["ACE_TapShoulderRight"], _action] call  ace_interact_menu_fnc_addActionToObject;
 *
 * Argument:
 * 0: Object the action should be assigned to <OBJECT>
 * 1: Type of action, 0 for actions, 1 for self-actions <NUMBER>
 * 2: Parent path of the new action <ARRAY> (Example: `["ACE_SelfActions", "ACE_Equipment"]`)
 * 3: Action <ARRAY>
 */

//waste = execVM "scripts\reload.sqf";

if (isNil "v_reload_1") then {v_reload_1=false};
if (isNil "v_reload_2") then {v_reload_2=false}; 

 
_action_1 = ["n_reload","RELOAD AMMO","",{ugv_1 setVehicleAmmo 1; v_reload_1=true; publicVariable "v_reload_1"; _player playMove "Acts_carFixingWheel"},{! v_reload_1}] call ace_interact_menu_fnc_createAction;

_action_2 = ["n_reload","RELOAD AMMO","",{ugv_2 setVehicleAmmo 1; v_reload_2=true; publicVariable "v_reload_2"; _player playMove "Acts_carFixingWheel"},{! v_reload_2}] call ace_interact_menu_fnc_createAction;

[ugv_1, 0, ["ACE_MainActions"], _action_1] call ace_interact_menu_fnc_addActionToObject;

[ugv_2, 0, ["ACE_MainActions"], _action_2] call ace_interact_menu_fnc_addActionToObject;