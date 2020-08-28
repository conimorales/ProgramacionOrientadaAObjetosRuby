#crea la clase o molde || se agregan los comportamientos o estados
class Lego
end

# instanciar 10 objetos legos || crear 10 legos
legos= []
10.times do 
    legos << Lego.new
end

print legos

#[#<Lego:0x2eaaba0>, #<Lego:0x2eaab70>, #<Lego:0x2eaab58>, #<Lego:0x2eaab40>, 
#<Lego:0x2eaab28>, #<Lego:0x2eaab10>, #<Lego:0x2eaaaf8>, #<Lego:0x2eaaae0>, #<Lego:0x2eaaac8>, #<Lego:0x2eaaa80>]

#se ocupa
#a = Lego.new
#print a 