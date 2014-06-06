/*
    Author:
        Amra.

    Description:
        Freeze client in trigger area.

    Example:
        ["blue"] spawn amra_fnc_freeze;
*/

// Get marjer name.
_marker = _this;

// Wait freezeTime is over.
waitUntil {
    _playerPosition = position player;
    _markerPosition = markerPos _marker;

    _inTrigger = [_marker, position player] call BIS_fnc_inTrigger;

    // If player leave of the freeze area.
    if (not _inTrigger) then {

        // Fade out screen.
        ["out", localize "STR_OEC_please_wait_start_mission", 0.5] call amra_fnc_fade;

        // Wait fade out, before set position.
        sleep 1;

        // Get direction to center of start position.
       _freezeDir = ([_playerPosition, _markerPosition] call BIS_fnc_dirTo);

        // Move player back.
        _range = player distance _markerPosition;

        player setPos [
            ((_markerPosition select 0) + (sin (_freezeDir + 180)) * (_range - 10)),
            ((_markerPosition select 1) + (cos (_freezeDir + 180)) * (_range - 10))
        ];

        // Fade in screen.
        ["in", "", 0.5] call amra_fnc_fade;
    };

    // No need to a lot of checks.
    sleep 1;
};