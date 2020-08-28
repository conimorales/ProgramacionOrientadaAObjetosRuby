#carga desde afuera 
require_relative 'mamifero'
class Perro < Mamifero
    def habla 
        "guau"
    end 

end
puts Perro.new.habla #guau
puts Mamifero.new.habla #undefined method
