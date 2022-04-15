require_relative 'monster'
require_relative 'player'

phpkachu = Monster.new('Phpkachu', 80, 50)
sqlrtle = Monster.new('Sqlrtle', 100, 20)
cppmander = Monster.new('Cppmander', 40, 80)
bashtoise = Monster.new('Bashtoise', 60, 60)
torterraform = Monster.new('Torterraform', 120, 10)

player1 = Player.new('Player 1', [phpkachu, cppmander, torterraform])
player2 = Player.new('Player 2', [sqlrtle, cppmander.clone, bashtoise])
# Stats untuk masing-masing player saya buat otomatis tercetak setelah instance diinisiasi

puts '=======================Turn 1======================='
puts ''

player1.attack(player2, player1.monsters[0], player2.monsters[1])
player2.attack(player1, player2.monsters[0], player1.monsters[1])
# Stats untuk masing-masing player saya buat otomatis tercetak setelah player melakukan attack