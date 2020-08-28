class PersonaTipo2
    attr_accessor :edad
    def initialize (edad= 5)
        @edad = edad
    end

    def envejecer
        @edad += 1
    end
 
end

p1 = PersonaTipo2.new(21)
p1.edad = 31
puts p1.edad # 31