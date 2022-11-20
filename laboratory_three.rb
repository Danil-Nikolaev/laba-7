# frozen_string_literal: true

# This class create for work with file
class One
  def part_one(str_my)
    word_array = []
    File.open('text.txt', 'w') { |f| f.print(str_my) }
    File.open('text.txt') do |f|
      f.each { |s| s.split.select { |str_elem| str_elem.length == 2 }.each { |i| word_array << i } }
    end
    word_array
  end
end

# This class Triangle
class Triangle
  attr_reader :x1, :x2, :x3, :y1, :y2, :y3, :line_one, :line_two, :line_three

  def initialize(x_one, y_one, x_two, y_two, x_three, y_three)
    @x1 = x_one
    @y1 = y_one
    @x2 = x_two
    @y2 = y_two
    @x3 = x_three
    @y3 = y_three
    long_line
  end

  def long_line
    @line_one = Math.sqrt((@x2 - @x1)**2 + (@y2 - @y1)**2)
    @line_two = Math.sqrt((@x3 - @x1)**2 + (@y3 - @y1)**2)
    @line_three = Math.sqrt((@x3 - @x2)**2 + (@y3 - @y2)**2)
  end

  def square
    p = (@line_one + @line_two + @line_three) / 2
    Math.sqrt(p * (p - @line_one) * (p - @line_two) * (p - @line_three))
  end
end

# This class Triangle prism
class TrianglePrism < Triangle
  attr_reader :x1, :x2, :x3, :y1, :y2, :y3, :line_one, :line_two, :line_three, :h

  def initialize(x_one, y_one, x_two, y_two, x_three, y_three, h_one)
    super(x_one, y_one, x_two, y_two, x_three, y_three)
    @hi = h_one
    long_line
  end

  def square_area
    @square_one = @hi * @line_one
    @square_two = @hi * @line_two
    @square_three = @hi * @line_three
    square_triangle = square * 2
    square_triangle + @square_one + @square_two + @square_three
  end
end
