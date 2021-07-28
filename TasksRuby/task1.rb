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
class SearсhHash
  def initialize()
    @hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}
    @target = :key9
  end
  def search(h, t)
    # puts @hash.to_a
    if h.has_key? t
      puts t
    end
  end
  
end
print_ruby = SearсhHash.new
print_ruby.search
