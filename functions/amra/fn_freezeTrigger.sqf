/*
    Author:
        Amra.

    Description:
        Freeze all units in trigger area.

    Example:
        ["blue"] call amra_fnc_freezeTrigger;

    Скрипт получает имя маркера.
    Определяет всех игроков, находящиеся внутри этого маркера.
    Отправляет им команду "фриз".
    Запускает цикл с таймером.
    Отправляет каждый "тик" обновленное значение таймера.
    С истичением таймера отправляет команду "анфриз".
*/

// Get marker name.
_marker = [_this, 0, ""] call BIS_fnc_param;

// Get freeze time.
_time = [_this, 1, ""] call BIS_fnc_param;

// Get units into marker area.
_units = [_marker] call amra_fnc_unitsInTrigger;

// Sent each unit command "freeze".
{
    [_marker, "amra_fnc_freeze"] spawn BIS_fnc_MP;
} forEach _units;