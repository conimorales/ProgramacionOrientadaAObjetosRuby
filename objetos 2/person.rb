#clase padre
class Person 
    attr_accessor :name, :age 
    def initialize(name)
        @name = name
        @age = 0
    end
    def get_older
        @age += 1
    end
end

#clase hija 
class Company < Person
    def get_older
        @age += 2 
    end 
end

c = Company.new("DesafioLatam")
c.get_older
c.get_older
puts c.age