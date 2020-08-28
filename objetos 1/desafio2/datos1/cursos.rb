require 'date'

class Course

  attr_accessor :name, :dates

  def initialize(name, *dates)
    @name = name
    @dates = dates.map {|date| Date.parse(date)}
  end

  def self.read_file

    file = File.open("cursos.txt", "r")
    data = file.readlines
    file.close

    fecha = []

    data.each do |date|
      ls = date.split(" ")
      fecha.push Course.new(*ls)
    end

  end

  def payments_before(filter_date)
    raise ArgumentError, 'El argumento no es valido' unless filter_date >= 2018-01-01
    @dates.select {|date| date < filter_date}
  end

  def payments_after(filter_date)
    raise ArgumentError, 'El argumento no es valido' unless filter_date >= 2018-01-01
    @dates.select {|date| date > filter_date}
  end

end


course = Course.read_file

fechas = []

course.each do |curso|
  ls = curso.split ()
  fechas.push Course.new(*ls)
end


fechas.each do |date|
  puts date.payments_before(Date.today)
  puts date.payments_after(Date.today)
end