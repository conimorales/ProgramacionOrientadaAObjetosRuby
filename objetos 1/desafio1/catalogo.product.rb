class Product
    attr_reader :name
    def initialize(name, *product)
        @name = name
        @product = product.map(&:to_i)
    end
    def average
        @product.inject(&:+) / @product.size.to_f
    end

end

file = File.open('catalogo.txt', 'r') 
data = file.readlines
file.close

products_list = []

data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(*ls)
end
print products_list

products_list.each do |line|
    puts line.name
    puts line.average
end
