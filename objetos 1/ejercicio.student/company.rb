#string a fechas 
require 'date'

class Company 
    def initialize(name, *payments)
       @name = name
       #.map convertir a fecha 
       @payments = payments.map { |date| Date.parse(date)}
       
    end
    #pagos anteriores a una fecha específica
    def payments_before(filter_date)
        raise ArguementError.new('argument is not a date') if filter_date.class != Date
        @payments.select { |date| date < filter_date}
    end
end 

file = File.open('proveedores.txt','r')
data = file.readlines
file.close
companies = []
data.each do |line|
    ls = line.split(' ')
    companies << Company.new(*ls)
end
print companies[0].payments_before(Date.today)