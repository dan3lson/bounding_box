require_relative "bounding_box"

class BoundingArea
  attr_reader :bounding_area

  def initialize(bounding_area = [])
    @bounding_area = bounding_area
  end

  def contains_point?(x, y)
    return false if bounding_area.empty?
    results = []
    bounding_area.each do |box|
      results << box.contains_point?(x, y)
    end
    results.include?(true)
  end
end
