# frozen_string_literal: true

require_relative 'laboratory_three'

choice = 0
triangle_oject = Triangle.new(0, 0, 6, 0, 3, 4)
traingle_prism_object = TrianglePrism.new(0, 0, 6, 0, 3, 4, 1)
one_object = One.new
while choice != 4
  my_str = Random.rand(20..40).times.map { (1...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(' ')
  print "1 часть\n"
  print "2 часть\n"
  print "3 часть\n"
  print "4.Выход\n"
  choice = gets.to_i
  p one_object.part_one my_str if choice == 1
  p triangle_oject.square if choice == 2
  p traingle_prism_object.square_area if choice == 3
  break if choice == 4
end
