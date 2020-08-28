class Parent 
    def foo
        puts 'hola'
    end
end

class Child < Parent
    def foo
        puts 'antes'
        super 
        puts 'despues'
    end
end

Child.new.foo