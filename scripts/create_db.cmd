set NAME_DB=moika2test
createdb -U root -O root -E UTF8 -D pg_default -l Russian_Russia.1251 -e %NAME_DB% 2>err.txt