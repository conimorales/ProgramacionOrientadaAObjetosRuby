class PersonaTipo2

# método constructor
    def initialize (edad= 5)
        @edad = edad
    end
    def envejecer
        @edad += 1
    end
    def mostrar_edad
        puts @edad
    end 
end

p1 = PersonaTipo2.new(21)

10.times do
    p1.envejecer
end 
p1.mostrar_edad