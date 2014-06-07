/*
    Author:
        Amra.

    Description:
        Convert time to string fomat 00:00.

    See:
        BIS_fnc_timeToString

    Example:
        _timer = [100] call amra_fnc_timeToTimer;
*/

private [
    "_time",
    "_min",
    "_sec"
];

_time = _this select 0;

_min = floor (_time / 60);
_sec = floor (_time - (_min * 60));

if (_min > 9) then { _min = str (_min) } else { _min = "0" + str (_min) };
if (_sec > 9) then { _sec = str (_sec) } else { _sec = "0" + str (_sec) };

format ["%1:%2", _min, _sec];