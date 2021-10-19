class player
    attr_accessor :name, :life_point

    def initialize(name)
        @name     = name.to_s
        @life_points = 10
    end

    def show_state
        puts "#{name}" a "#{life_points}"
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
