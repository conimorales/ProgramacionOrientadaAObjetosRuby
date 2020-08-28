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

file = File.open('nuevo_catalogo.txt', 'r') 
data = file.readlines
file.close

products_list = []

data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(*ls)
end
print products_list


