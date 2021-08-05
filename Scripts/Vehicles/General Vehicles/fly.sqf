/* fnc_createAction ODER ace_interact_menu_fnc_createAction
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
 */
 
 
/* fnc_addActionToObject ODER ace_interact_menu_fnc_addActionToObject
 * Argument:
 * 0: Object the action should be assigned to <OBJECT>
 * 1: Type of action, 0 for actions, 1 for self-actions <NUMBER>
 * 2: Parent path of the new action <ARRAY> (Example: `["ACE_SelfActions", "ACE_Equipment"]`)
 * 3: Action <ARRAY>
 */
 
if (isNil "v_fly") then {v_fly=false};

_action = ["a_fly","Abflug","",{v_fly = true; publicVariable "v_fly";},{! v_fly}] call ace_interact_menu_fnc_createAction;

[heli_1, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
