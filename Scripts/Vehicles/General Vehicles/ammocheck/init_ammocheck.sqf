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

//waste = execVM "scripts\ammocheck.sqf";


 
_action = ["n_ammoc_1","CHECK AMMO","",{[_this select 0,["HMG_127_UGV","GMG_40mm"]] execVM "scripts\ammocheck.sqf";},{true}] call ace_interact_menu_fnc_createAction;

{[_x, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;} foreach [ugv_1, ugv_2];

