require_relative "bounding_box"

class BoundingArea
  attr_reader :bounding_area

  def initialize(bounding_area = [])
    @bounding_area = bounding_area
  end

  def contains_point?(x, y)
    return false if bounding_area.empty?
    bounding_area.any? { |box| box.contains_point?(x, y) }
  end
end
