require_relative 'Mamifero'
class Perro < Mamifero 
    def habla 
        "guau"
    end 
end

puts Perro.new.habla #guau
#puts Mamifero.new.habla #habla malo
puts Mamifero.new.vertebrado
puts Perro.new.vertebrado
print Perro.ancestors
puts Perro.new.is_a? Perro #true
puts Perro.new.is_a? Mamifero #true
puts Perro.new.is_a? Fixnum #false

