class Game

    attr_accessor :human_player, :enemies

    def initialize(human_name)
        @enemies = Array.new
        @human_player = HumanPlayer.new(human_name)
        (1..4).each do |i|
            @enemies << Player.new("bot#{i}")
        end
    end

    def kill_player(dead_bot)
        @enemies.each do |bot|
            if bot.life_points <= 0
                @enemies.delete(bot.name)
            else
                break
            end
        end
        return @enemies
    end

    def is_still_ongoing?
        @human_player.life_points > 0 && !@enemies.empty? ? true : false
    end

    def show_players
        @human_player.show_state

        puts "Encore #{enemies.count} ennemies !!"
    end

    def menu
        
        puts "Quelle action souhaites-tu effectuer ?"
        puts "--------------------------------------"
        puts "a - chercher une meilleure arme"
        puts "s - chercher à se soigner"
        puts "--------------------------------------"
        puts "attaquer un joueur en vue :"

        i = 0
        while i < @enemies.length
            print "#{i} = #{enemies[i].show_state}"

            i +=1
        end

    end