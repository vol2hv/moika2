cls
set PGUSER=root
set NAME_DB=moika2deploy
dropdb --if-exists %NAME_DB%
createdb -O root -E UTF8 -D pg_default -l Russian_Russia.1251 -e %NAME_DB%
pg_restore -w -d %NAME_DB% --verbose %NAME_DB%.backup