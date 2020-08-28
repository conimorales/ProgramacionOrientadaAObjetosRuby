class Student 
    attr_reader :name
    def initialize(name, *scores)
        @name  = name 
        @scores = scores.map(&:to_i)
    end
    def average
        @scores.inject(&:+) / @scores.size.to_f
    end
        
end

file = File.open('scores.txt','r')
data = file.readlines
file.close
#NOTAS DE CADA PERSONA
students = []
data.each do |line|
    ls = line.split(', ')
    students << Student.new(*ls)
end 
print students

#PROMEDIO DE CADA PERSONA
students.each do |student|
    puts student.name
    puts student.average
end

#PROMEDIO DEL CURSO 
averages = students.map(&:average)
puts averages.inject(:+) / averages.size