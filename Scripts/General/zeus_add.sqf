[{
    {
        _x addCuratorEditableObjects [allPlayers, true];
    } forEach allCurators;
}, 60, []] call CBA_fnc_addPerFrameHandler;