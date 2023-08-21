require './game.rb'
require './player.rb'

puts "Welcome Players, suit up! It's time for math!"
puts "Player 1: Enter your player name"
player_name = gets.chomp
player_1 = Player.new(player_name)
puts "Player 2: Enter your player name"
player_name = gets.chomp
player_2 = Player.new(player_name)

game1 = Game.new(player_1, player_2)
game1.start