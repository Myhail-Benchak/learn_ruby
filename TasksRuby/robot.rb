require "matrix"
DEFAULT_SIGN = 0
POSITION_SIGN = 1
ROUTE_SIGN = 2
#==============

module RouteOfObject
  def init_route(route)
    routes = { south: 0, nord: 0, west: 0, east: 0 }
    case route
    when "SOUTH"
      routes[:south] = 1
    when "NORD"
      routes[:nord] = 1
    when "WEST"
      routes[:west] = 1
    when "EAST"
      routes[:east] = 1
    end
    return routes
  end
end

class Area
  attr_accessor :count_col, :count_row

  def initialize(count_col = 5, count_row = 6)
    @count_col = count_col
    @count_row = count_row
  end

  def build_area
    row = []
    @count_col.times { row.push(0 * @count_row) }
    area = Matrix.rows([row] * @count_row)
  end
end

class ToyRobot
  include RouteOfObject
  attr_reader :area_for_walking

  def initialize(area_for_walking)
    @data = { :x => 0, :y => 0, :f => '' }
    @position = area_for_walking
  end
  def get_position(x_position, y_position)
    @position[y_position, x_position] = POSITION_SIGN
  end

  def get_route(input_route)
    f = init_route(route)
  end

  def place(x_position, y_position, input_route)
    current_position = get_position(x_position, y_position)
  end

  def report
    @data[:x] = 
   puts @data[:x]
  end
end

my_area = Area.new(10, 15).build_area
my_robot = ToyRobot.new(my_area)
my_robot.report
# my_robot.place(0, 5, 'NORD')
