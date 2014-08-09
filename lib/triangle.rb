class Triangle
  def initialize( x, y, z )
    raise ArgumentError unless x.is_a?(Integer) && y.is_a?(Integer) && z.is_a?(Integer)
    @x, @y, @z = x, y, z
  end

  def print
    return "三角形じゃないです＞＜" unless triangle?
    return "正三角形ですね！"       if equilateral?
    return "二等辺三角形ですね！"   if isosceles?
    return "不等辺三角形ですね！"
  end

  private

  def triangle?
    ((@x != 0) && (@y != 0) && (@z != 0)) && (@x < @y + @z) && (@y < @x + @z) && (@z < @x + @y)
  end

  def equilateral?
    triangle? && (@x == @y) && (@y == @z)
  end

  def isosceles?
    triangle? && !(equilateral?) && ((@x == @y) || (@y == @z) || (@x == @z))
  end
end
