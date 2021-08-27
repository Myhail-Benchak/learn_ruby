# learn_ruby
Симулятор игрушечного робота

Описание:
 - Приложение является симулятором движения игрушечного робота по прямоугольному столу с размерами X x Y клеток. Если размер не задан, задать размер 5х6 клеток.
 - На столе больше нет никаких препятствий.
 - Робот может свободно передвигаться по столу, но надо избежать его падения со стола. Любая комманда, которая может привести к падения робота со стола, должена быть предотвращена(пропущена), но любые последующие комманды, которые не приводят к падению робота, должны выполниться.

Техническая сторона:
 - Создать приложение которое считывало комманды следующей формы:
   PLACE X,Y,F
   MOVE
   LEFT
   RIGHT
   REPORT

 - Размер стола задается при инициализации приложения
 - PLACE задаст позицию робота на столе с координатами ячейки(X, Y) и сторону, в которую робот будет смотреть(F) - NORTH, SOUTH, EAST или WEST
 - Ячейка с координатами 0,0 должна быть разценена как самый крайний юго-западный угол (SOUTH WEST)
 - Самая первая валидная комманда для робота должна быть PLACE комманда. Приложение должно отклонить все комманды в последовательности пока комманда PLACE не будет выполнина
 - MOVE - подвинет робота на одну ячейку вперед по направлению, которому он сейчас смотрит.
 - LEFT и RIGHT - повернут робота на 90 градусов в соответствующем направлении без изменения его позиции
 - REPORT - выведет текущие координаты робота (X, Y) и его текущее направление (F). Вывод может быть в произвольной форме.

 - Робот, который не находится на столе, должен игнорировать комманды MOVE, LEFT, RIGHT и REPORT 
 - Ввод данных может быть как из файла так и из коммандной строки(на ваш выбор)
 - Разработчик должен предоставить тестовые данные для проверки.

Ограничения:
 - Робот не должен упасть со стола во время движения. Это так же включает себя начальное положение робота.
 - Любая комманда, которая влечет за собой падение робота должна быть проигнорирована

Примеры Ввыода и Вывода:
а)
PLACE 0,0,NORTH
MOVE
REPORT
->Output: 0,1,NORTH

б)
PLACE 0,0,NORTH
LEFT
REPORT
->Output: 0,0,WEST

в)
PLACE 1,2,EAST
MOVE
MOVE
LEFT
MOVE
REPORT
->Output: 3,3,NORTH

CLI(command line interface), ООП Приветствуется.


==================================soccer_exercise==========================================
The Problem
We want you to create a command-line application that will calculate the ranking table for a soccer league.

Input/output
The input and output will be text. Your solution should parse the provided sample input file via stdin (pipe or redirect) or by parsing a file passed by name on the command line. Your solution should output the correct result via stdout to the console.

The input contains results of games, one per line. See sample input for details. The output should be ordered from most to least points, following the format specified in expected output.

You can expect that the input will be well-formed. There is no need to add special handling for malformed input files.

The rules
In this league, a draw (tie) is worth 1 point and a win is worth 3 points. A loss is worth 0 points. If two or more teams have the same number of points, they should have the same rank and be printed in alphabetical order (as in the tie for 3rd place in the sample data).

Guidelines
This should be implemented in ruby.

Your solution should be able to be run from the command line. Please include appropriate scripts and instructions for running your application and your tests.

If you use other libraries installed by rubygems/bundler it is not necessary to commit the installed packages.

Write automated tests.

Appreciated well factored, object-oriented or functional designs.

Input sample
Lions 3, Snakes 3
Tarantulas 1, FC Awesome 0
Lions 1, FC Awesome 1
Tarantulas 3, Snakes 1
Lions 4, Grouches 0

Expected output
Tarantulas, 6 pts
Lions, 5 pts
FC Awesome, 1 pt
Snakes, 1 pt
Grouches, 0 pts