module Square
  def self.area(side)
    side * side
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

puts Square.area(4)
puts Rectangle.area(10, 4)