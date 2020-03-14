rem set NAME_DB=moika2deploy
set NAME_DB=moika2deploy
pg_dump -h localhost -p 5432 -U root -F t -b -v -f %NAME_DB%.backup %NAME_DB%