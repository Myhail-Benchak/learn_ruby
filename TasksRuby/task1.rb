# frozen_string_literal: true

#=========TASK 1===========================================
class PrintRuby
  @@not_exception = [10, 20, 25]
  @@max_count = 30

  def compare_numbers?(num)
    @@not_exception.map do |el_num|
      el_num == num
    end
  end

  def print_string(idx, max)
    str1 = 'ruby'
    int = idx % 5
    if int == 0 && idx != max && compare_numbers?(idx)
      puts idx.to_s + ' ' + str1
    else
      puts idx.to_s + ' <3 ' + str1
    end
  end

  def go_to_itr
    count = 1
    while count <= @@max_count
      print_string(count, @@max_count)
      count += 1
    end
  end
end
#=========TASK 2===========================================
class Circle
  attr_accessor :radius
  def initialize(radius)
    @radius = radius
  end

  def draw
    diameter = @radius * 2
    arr = []
    diameter.times do
      arr.push(' ' * diameter)
    end
    l = arr.length - 1
    arr.each_with_index do |_val, idx|
      x = 0
      y = 0
      y = -l + idx
      x = Math.sqrt(((@radius * @radius) - (y * y)).abs).round
      arr[y][x] = '*'
    end
    part_up_right = arr[(l - l / 2), l]
    part_down_left = part_up_right.reverse
    part_right = part_up_right + part_down_left
    part_left = part_right.map(&:reverse)
    result = []
    diameter.times do |i|
      result.push(part_left[i] + part_right[i])
    end
    puts result[5].length
  end
end
#=========TASK 3===========================================
class Matrix
  attr_accessor :count
  def initialize(count)
    @count = count
  end

  def create_matrix
    arr = []
    @count.times do
      arr.push('0' * @count)
    end
    arr.map.with_index do |cell, i|
      cell[i] = '1'
      puts cell
    end
  end
end
#=========TASK 4===========================================
class SearсhingHash
  def initialize
    @hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2] } } } }
    @target = :key9
  end
  @num_str = @target.to_s.gsub('key', '')
  up_hash = {}
  def search(h)
    h.each do |key, val|
      if key == @target
        puts "I found #{key} with #{val}"
      else
        search(val) if val.is_a?(Hash)
      end
    end
  end

  def run_search
    search(@hash)
  end
end
#=========TASK 5===========================================
class StringFormatize
  def formatize(str, type_of_format)
    case type_of_format
    when :camel
      puts str.gsub(/\w+/, &:capitalize).delete('^a-zA-Z0-9')
    when :underscore
      puts str.gsub(/\s+/, '_')
    when :css
      puts str.gsub(/\s+/, '-')
    else
      puts 'Please enter a valid name for formating: :camel, :underscore or :css'
    end
  end
end
#=========TASK 6===========================================
class TypeOfArray
  def get_all(arr, type)
    new_arr = arr.flatten
    result_arr_of_types = []
    new_arr.each do |element|
      result_arr_of_types.push(element) if element.instance_of? type
    end
    p result_arr_of_types
  end
end
print_ruby = TypeOfArray.new
array = [[1, 2, 3, 4, '1'], %w[2 5 10], [111, 222, 333, 444], %w[i love ruby], { key: 'value' }, [[[405, ['tttttttttttt']], ['text', 100_000]]]]
print_ruby.get_all(array, Integer)
