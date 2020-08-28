class Product
    attr_accessor :dia1, :dia2, :dia3, :dia4
    def initialize(name, dia1, dia2, dia3, dia4)
        @name = name
        @dia1 = dia1.to_i
        @dia2 = dia2.to_i
        @dia3 = dia3.to_i
        @dia4 = dia4.to_i
    end
    def mayor_valor
    end

end

products = []
file = File.open('casino.txt', 'r')
data = file.readlines
file.close

data.each do |line|
    name, dia1, dia2, dia3, dia4 = line.split(', ')
    products << Product.new(name, dia1, dia2, dia3, dia4)
end
print products

dia_1 = products.inject(0) { |sum, product| sum + product.dia1} / 4
dia_2 = products.inject(0) { |sum, product| sum + product.dia2} / 4
dia_3 = products.inject(0) { |sum, product| sum + product.dia3} / 4
dia_4 = products.inject(0) { |sum, product| sum + product.dia4} / 4

dia_total = (dia_1 + dia_2 + dia_3 + dia_4) / 4 
puts dia_total

