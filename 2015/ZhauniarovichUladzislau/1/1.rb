  sun =
  "11..................................................11
  10()     .     . .  .  .    O  .     .     .       .10
  9.  .    .    . .   .  .    .  .    .     .        . 9
  8.   .    .   . .   .  .   .  .    .     .        .  8
  7-.   `.   .  . |   |  |  /  /   .    .-'     _,-    7
  6  `-.  `.  `. .`.  | ,' / ,'  .'  .-'   *_,-'  *    6
  5._  *`-. `.  . . | | |*/ /  .' .-' * _,-'|       _, 5
  4  `-._  `-.`. ` .  |  / ' .'.-'  _,-'   -O-_,,-''   4
  3._    `-._   `.  . | /  .'   _,-'    _,,-''      __ 3
  2  ``-.._  `-._ `. .|/ .' _.-'  _,,-''    __,,--''   2
  1--      ``-   `-.`.-.'.-'   -''      --''           1
  0=================(   )============================= 0
  1--  *   ,,-  _,-'.`-'.`-._  -.._     --..__         1
  2    _,,- _,-'  .' /|. `.  `-._  ``-.._     ``--..__ 2
  3,-'' _,-' ,  .', / ||. .`.  . `-._   -o--.._        3
  4 _,-'  ,-' .' / /  |O-. . `. `-.  `-._      ``-.._  4
  5'   ,-'  .' ,' / | ||| . `. `.  `-*   `-._        ` 5
  6 ,-'   .'  /  / .' | `. .  .  `o   `-.    `-._      6
  7'    .' *,'  /  |  |  |  .  `.  `.    `-.     `-._  7
  8 * .'   /   /  .'  |  `.  .   .   `.    .-..      ` 8
  9 .'   ,'   /   | * |   |   .   `.   `. (   )`-._    9
  10'  * /    /   .'  |   `.   .    .    `.`-'     `-.10
  11   ,'    /    |   |    |    .    `.    `.    *    11"

  galaxy = sun.split("\n")
  i = 0
  j = 0
  y = galaxy.size / 2
  x = (galaxy[y].size + 1) / 2
  puts x
  puts y
  until i > y && j > x
    print `clear`
    0.upto(galaxy.size - 1) do |height|
    0.upto(galaxy[height].size - 1) do |width|
    1.times do
      print ' '
    end
    case
    when (height < y - i || height > y + i) then
      print ''
    when (width > x + j) then
      print ''
    when (height >= y - i && height <= y + i) &&
      (width >= x - j && width <= x + j) then
      print galaxy[height][width]
    end
    end
    puts ''
    end

    if (i <= y)
      i += 1
      puts i
    end
    if (j <= x)
      j += 2
      puts j
    end
    sleep 0.15
  end