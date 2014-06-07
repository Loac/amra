/*
    Author:
        Amra.

    Description:
        Freeze all units in trigger area.

    Example:
        ["blue", 10] call amra_fnc_freezeTrigger;

    Скрипт получает имя маркера.
    Определяет всех игроков, находящиеся внутри этого маркера.
    Отправляет им команду "фриз".
    Запускает цикл с таймером.
    Отправляет каждый "тик" обновленное значение таймера.
    С истичением таймера отправляет команду "анфриз".
*/

private [
    "_marker",
    "_time",
    "_timeStart",
    "_timeRemain",
    "_units"
];

// Get marker name.
_marker = [_this, 0, ""] call BIS_fnc_param;

// Get freeze time.
_time = [_this, 1, 0] call BIS_fnc_param;

// Get units into marker area.
_units = [_marker] call amra_fnc_unitsInTrigger;

// Sent each unit command "freeze".
{
    [_marker, "amra_fnc_freeze", owner _x] spawn BIS_fnc_MP;
} forEach _units;


[_time] spawn {
    _time = _this select 0;

    _timeStart = time;

    waitUntil {
        // Update timer;
        _timeRemain = _time - (time - _timeStart);

        // Send timer to client.
        // [0, ["timeRemain", timeRemain]] call amra_fnc_broadcastClient;

        hint ([_timeRemain] call amra_fnc_timeToTimer);

        sleep 1;

        // Check remaining time.
        _timeRemain < 1;
    };
}