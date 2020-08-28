class Dog 
    attr_accessor :name, :raza, :color
    def initialize(propiedades) 
        @name = propiedades[:nombre]
        @raza = propiedades[:raza]
        @color = propiedades[:color]
    end

    def ladrar 
        puts "#{@nombre} está ladrando!"
    end
end
propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

osito=Dog.new(propiedades)
puts osito.ladrar


