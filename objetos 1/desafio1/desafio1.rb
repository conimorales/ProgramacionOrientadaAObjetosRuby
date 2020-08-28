class Anything
    attr_accessor :a
    def initialize (a = 5)
        @a = a
    end
    def bar
        @a += 1
    end
    def mostrar_a
        puts @a
    end
end
any = Anything.new 5
1.times do
    any.bar
end
any.mostrar_a