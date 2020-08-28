class Alumno
    attr_reader :nombre, :notas
    def initialize()
        @notas = [7, 'A', 'B+']
        @nombre = "Humberto"
    end
    
end

puts Alumno.new.nombre
print Alumno.new.notas