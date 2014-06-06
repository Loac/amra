/*
    Author:
        Amra.

    Description:
        Init freeze timer.

    Скрипт получает имя маркера.
    Определяет всех игроков, находящиеся внутри этого маркера.
    Отправляет им команду "фриз".
    Запускает цикл с таймером.
    Отправляет каждый "тик" обновленное значение таймера.
    С истичением таймера отправляет команду "анфриз".
*/

// Get marjer name.
_marker = _this select 0;

waitUntil {
    sleep 1;

    // Decrease value timer and publich it.
    [["freezeTime", freezeTime - 1]] call amra_fnc_broadcast;

    // Skip freeze time if both sides agree.
    if (freezeTime > 5 and outpostReady and assaultReady) then {
        freezeTime = 5;
    };

    // Wait for timer is over or both sides is ready.
    freezeTime < 0;
};