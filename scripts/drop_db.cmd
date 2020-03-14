chcp 1251
set NAME_DB=moika2

psql -Uroot -d%NAME_DB%  -- соединиться с БД
drop database %NAME_DB%; -- удалить базу данных