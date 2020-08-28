#producto con diferentes stock y colores 
class Product
    attr_reader :red 
    def initialize(name, blue, red, green)
        @name = name
        @blue = blue.to_i
        @red = red.to_i
        @green = green.to_i
    end
    def stock_total
        puts self
        @blue + @green + @red
    end
    def self.load_data(filename = 'products.txt')
        file = File.open(filename, 'r')
        data = file.readlines
        file.close
        products = []

        data.each do |line|
            name, blue, red, green = line.split(', ')
            products << Product.new(name, blue, red, green)
        end 
        products
    end  

end

products = Product.load_data

print products [1].stock_total

#mostrar el stock total de rojo
products.each do |product|
    puts product.red
end

#mostrar la suma total de stock rojo
puts products.inject(0) { |sum, product| sum + product.red}

#mostrar el stock total de todos los productos 
puts products.inject(0) { |sum, product| sum + product.stock_total}