/*
    Author:
        Amra

    Description:
        Server initialization.
*/

// Load params.
_handle = [] execVM "server\params.sqf"; waitUntil { scriptDone _handle };

// Add freeze area.
["blue", 10] call amra_fnc_freezeTrigger;