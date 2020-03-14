set NAME_DB=moika2deploy
set NAME_TEMPLATE=moika2
createdb -U root -T %NAME_TEMPLATE% -e %NAME_DB%