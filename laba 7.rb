

str_my = Random.rand(20..40).times.map { (1...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(' ')
# one = Triangle.new(0, 0, 6, 0, 3, 4)
# p one.square
# two = TrianglePrism.new(0, 0, 6, 0, 3, 4, 1)
# p two.square_area
#part_one
