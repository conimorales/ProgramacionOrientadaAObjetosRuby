class Alumnos
    attr_reader :nombre, :notas
    def initialize()
        @notas = ["4"]
        @nombre= "Humberto"
    end
end
puts Alumnos.new.nombre
puts Alumnos.new.notas


