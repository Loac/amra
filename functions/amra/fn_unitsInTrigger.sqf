/*
    Author:
        Amra.

    Description:
        Get all units in marker or trigger area.

    Example:
        ["BLUE MARKER"] call amra_fnc_unitsInTrigger;
*/

private [
    "_marker",
    "_units",
    "_inTrigger"
];

_marker = [_this, 0, ""] call BIS_fnc_param;

_units = [];

{
    _inTrigger = [_marker, position _x] call BIS_fnc_inTrigger;

    if (_inTrigger) then {
        _units = _units + [_x];
    };
} forEach allUnits;

_units;