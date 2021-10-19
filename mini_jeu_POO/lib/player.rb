class Player
    attr_accessor :name, :life_point

    def initialize(name)
        @name     = name.to_s
        @life_points = 10
    end

    def show_state
        puts "#{name} a #{life_points}"
    end
    
    def gets_damage(damage_points)
        @life_points -= damage_points
        puts "Le joueur #{name} a #{damage_points} de dégats ! Il a mainetnant #{life_points} PV !!"

        if @life_points <= 0
            puts "#{name}, vous êtes mort !!"
        end
    end

    def attacks(other_player)
        puts "#{name} attaque #{other_player.name} !!"
        damage = compute_damage
        other_player.gets_damage(damage)

    end

    def compute_damage
        return rand(1..6)
    end

end

class HumanPlayer < Player
    attr_accessor :weapon_level, :name, :life_points

    def initialize(name)
        @name = name.to_s
        @life_points = 100
        @weapon_level = 1
    end

    def show_state
        puts "#{name} a #{life_points} PV, son arme est de niveau #{weapon_level}"
    end

    def compute_damage
        rand(1..6)*@weapon_level
    end

    def compute_damage
        rand(1..6)*@weapon_level
    end

    def search_weapon
        new_weapon = rand(1..6)
        puts "Tu as trouvé une arme de niveau : #{new_weapon} !"

        if new_weapon > @weapon_level
            @weapon_level = new_weapon
            puts "Yes ! Elle est mieux que ton arme actuelle, on l'équipe !!"
        else
            puts "€$*#... C'est arme est nulle ..."
        end
    end

    def search_health_pack
        new_heal = rand(1..6)
        case new_heal
        when 1
            puts "Il n'y a rien ..."
        when 2..5
            puts "+50 PV !"
            if @life_points <= 50
                @life_points +=50
                puts show_state
            else
                @life_points = 100
                puts show_state
            end
        when 6
            puts "wow !! +80 PV petit chanceux"
            if @life_points <= 20
                @life_points +=80
                puts show_state
            else
                life_points = 100
                puts show_state
            end
    end
end
end


