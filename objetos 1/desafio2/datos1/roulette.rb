class Roulette

  attr_accessor :azar, :history

  def initialize
    @history = []
  end

  def play(numero)

    numero_azar = rand(1..10)

    write_history(numero, numero_azar)

    return numero == numero_azar

  end

  def write_history(numero_jugada, numero_ruleta)
    @history.push({
      resultado: (numero_jugada == numero_ruleta),
      numero_jugada: numero_jugada,
      numero_ruleta: numero_ruleta
    })
  end

  def roulette_history

     File.write("Roulette_history#{self.object_id}.txt", write_data(history))

  end

  def roulette_winner

      File.write("Roulette_winner#{self.object_id}.txt", write_data(history.select{|h| h[:resultado]}))

  end

  def write_data(array)
    array.map{|h| "#{h[:resultado]}, #{h[:numero_jugada]}, #{h[:numero_ruleta]}"}.join("\n")
  end



  def retorno_valor

    file = File.open("Roulette_history#{self.object_id}.txt", "r")
    data = file.readlines
    file.close()

    data.each do |dato|
      return dato
    end
  end
end

p1 = Roulette.new
p2 = Roulette.new
p3 = Roulette.new

puts  p1.play(5)
puts  p1.play(7)
puts  p1.play(9)
puts  p2.play(7)
puts  p3.play(6)
puts  p1.roulette_history
puts  p1.roulette_winner
puts  p1.retorno_valor