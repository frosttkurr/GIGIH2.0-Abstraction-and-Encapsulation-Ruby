class Player
  attr_accessor :player_name
  attr_accessor :monsters
  attr_accessor :opponent

  def initialize(player_name, monsters)
    @player_name = player_name
    @monsters = monsters
    puts self.stats
  end

  def to_s
    puts "#{@player_name}:"
    @monsters.join(", ")
  end

  def attack(target, monster, opponent)
    if @monsters.include? monster
      @attacker = monster
    end

    if target.monsters.include? opponent
      @opponent = opponent
    end
    
    @opponent.take_damage(@attacker.attack_point)
    @attacker.take_damage(0.5 * @opponent.attack_point)

    puts "#{@player_name}'s #{@attacker.name} attacks enemy's #{@opponent.name}, deals #{@attacker.attack_point.to_f} damage and takes #{0.5 * @opponent.attack_point} damage"

    puts ""
    if @player_name <= "Player 1"
      puts self.stats
      puts target.stats
    else 
      puts target.stats
      puts self.stats
    end
  end

  def stats
    puts self
  end
end