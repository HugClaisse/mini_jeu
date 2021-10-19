require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Poutine")
player2 = Player.new("Biden")


while player1.life_points > 0 && player2.life_points > 0
    puts "Voici l'état de chaque joueur :"
    puts ""
    puts player1.show_state, player2.show_state

    puts "Passons à la phase d'attaque !!"
    puts ""
    if player2.life_points > 0
        puts player2.attacks(player1)
    else break
        if player1.life_points > 0
            puts player1.attacks(player2)
        else break    
    end
end

if player1.life_points <= 0
    puts player1.name + " est mort. Fin du combat !!"
end

if player2.life_points <= 0
    puts player2.name + " est mort. Fin du combat !!"
end