
class Towers
  attr_reader :array_a, :array_b, :array_c

  def initialize
    @array_a = [3, 2, 1]
    @array_b = []
    @array_c = []
    @height = array_a.length
    @arrays_hash = {"a" => @array_a, "b" => @array_b, "c" => @array_c}
  end

  def play
    until win?
      puts "make move tower, tower"
      move  = gets.chomp.split(", ")
      turn(@arrays_hash[move[0]], @arrays_hash[move[1]])
    end
    puts "you won"
  end

  def turn(arr1, arr2)

    arr2 << arr1.pop
  end

  def win?
    return false unless array_a.empty?
    potential_winner = (array_b.empty? ? array_c : array_b)
    potential_winner.length == @height && potential_winner == potential_winner.sort.reverse
  end

end #End of class

if __FILE__ == $PROGRAM_NAME
  game = Towers.new
  game.play
end
