# frozen_string_literal: true

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
#====================================================
class PaintCircle
  attr_accessor :symb, :diameter
  def initialize(symb, diameter)
    @symb = symb
    @diameter = diameter
  end

  def build_string
    d = @diameter
    arr1 = (1..d/2).to_a
    arr2 = arr1.reverse
    final_arr = arr1 + arr2
    p arr1
    p arr2
    arr2.each do |ind|
      # offset = (d/2 + ind).abs
      # l = (@symb + (' ' * (offset)))
      # line = l.reverse + l
      line = @symb + (' ' * ind) + @symb
      p line
    end
  end

  def paint_circle
    p @diameter
    p @symb.to_s
  end
end
print_ruby = PaintCircle.new('@', 30)
print_ruby.build_string
