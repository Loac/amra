/*
    Author:
        Amra.

    Description:
        Send public variables to client.

    See:
        setVariable
        publicVariableClient

    Example:
        [clientID, ["missionComplete", true], ["blueTimer", 0]] call amra_fnc_broadcastClient;
*/

private [
    "_name",
    "_value",
    "_clientID",
    "_variables"
];

// Get first parameter.
_clientID = _this call BIS_fnc_arrayShift;

// Other it's variables for sent.
_variables = _this;

{
    _name = _x select 0;

    // If variable with value, we must change it.
    if (count _x > 1) then {
        _value = _x select 1;

        missionNamespace setVariable [_name, _value];
    };

    // Broadcast variable.
    _clientID publicVariableClient _name;

} forEach _variables;