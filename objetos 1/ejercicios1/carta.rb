class Carta
    attr_accessor :num, :pinta
    def initialize(num, pinta)
        @num = num 
        @pinta = pinta
    end
 
    def to_s
        "#{@num}, #{@pinta}"
    end  
end 

mano = [] 
5.times do
#numero entre 1 y 13
    mano.push Carta.new(rand(1..13),rand(1..4))
end

pintas = [{}]

mano.each do |m| 
    
    if m.pinta == 1
        pintas.push(:num => m.num,:pinta => "Corazon")
    elsif m.pinta == 2
        pintas.push(:num => m.num,:pinta => "Diamante")
    elsif m.pinta == 3 
        pintas.push(:num => m.num,:pinta => "Trebol")
    elsif m.pinta == 4 
        pintas.push(:num => m.num,:pinta => "Picas")
    end
end

#puts mano
puts pintas



