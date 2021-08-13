# frozen_string_literal: true
# coding: utf-8
# https://gist.github.com/drkmen/4649f65aeefe06880b73364d81f45a71
#=========TASK 1===========================================
class PrintRuby
  def go_to_itr
    30.times do |index|
      p [10, 20, 25].include?(index + 1) ? "ruby" : "<3 ruby"
    end
  end
end
#=========TASK 2===========================================
class Circle
  attr_accessor :radius

  def initialize(radius)
    @radius = radius.to_i
    @diameter = @radius * 2
  end

  def draw
    arr = Array.new(@diameter) { " " * @diameter }
    length_arr = arr.size - 1
    arr.each_with_index do |val, i|
      x = 0
      y = 0
      y = -length_arr + i
      x = Math.sqrt(((@radius * @radius) - (y * y)).abs).round
      arr[y][x] = "*"
    end
    part_up_right = arr[(length_arr - length_arr / 2), length_arr]
    part_down_left = part_up_right.reverse
    part_right = part_up_right + part_down_left
    part_left = part_right.map(&:reverse)
    result = []
    @diameter.times do |i|
      result.push(part_left[i] + part_right[i])
    end
    puts result
  end
end

#=========TASK 3===========================================
class Matrixx
  require 'matrix'
  # Вывести в консоль матрицу с еденицами по диагонали. Размер задается с консоли
  # Чтобы использовать нативный класс Matrix - нужна версия ruby >=2.6.5
  def create_matrix(count)
    Array.new(count) { "0" * count }.map.with_index do |cell, i|
      cell[i] = "1"
      puts cell
    end
  end
end

#=========TASK 4===========================================
class SearсhingHash
  # Написать рекурсивный метод для поиска значения ключа key9 в хеше

  def search(hash, fkey)
    hash.each do |key, val|
      if key == fkey
        puts "I found #{key} with #{val}"
      else
        search(val, fkey) if val.is_a?(Hash)
      end
    end
  end
end

#=========TASK 5===========================================
class StringFormatize
  # Написать метод, который принимает строку и приводит её в CamelCase, ruby_case_underscore и css-case
  def formatize(str, type_of_format)
    case type_of_format
    when :camel
      puts str.gsub(/\w+/, &:capitalize).delete("^a-zA-Z0-9")
    when :underscore
      puts str.gsub(/\s+/, "_")
    when :css
      puts str.gsub(/\s+/, "-")
    else
      puts "Please enter a valid name for formating: :camel, :underscore or :css"
    end
  end
end

#=========TASK 6===========================================
class TypeOfArray
  # Написать метод, который принимает многомерный массив и тип данных, возвращает массив этих типов
  def get_all(arr, type)
    # result_arr_of_types = []
    # if type == Array
    #   arr.each do |element|
    #     result_arr_of_types.push(element) if element.instance_of? type
    #   end
    # else
    #   arr.flatten.each do |element|
    #     result_arr_of_types.push(element) if element.instance_of? type
    #   end
    # end
    # return result_arr_of_types
    # p arr

    arr = arr.flatten unless type == Array
    arr.select { |val| val.is_a?(type) }
  end
end

require "readline"

task_number = gets.chomp
# while task_number = Readline.readline("Пожалуйста введите номер задания от 1 до 6 > ", true)
while true
  case task_number
  when "1"
    puts "Task" + task_number + ' Вывести в консоль, 30 раз "<3 ruby", каждый в новой строке, 10ый, 20ый, и 25ый вывод вывести просто "ruby"'
    # str = Readline.readline("Запустить Y/N? >> ", true)
    # case str
    # when 'Y'
    print_ruby = PrintRuby.new
    print_ruby.go_to_itr
    break
    # end
  when "2"
    puts "Task" + task_number + ' Нарисовать в консоле круг, диаметр\радиус которого задается с консоли.'
    r = Readline.readline("Введите радиус >> ", true)
    print_ruby = Circle.new(r.to_i)
    print_ruby.draw
    break
  when "3"
    puts "Task" + task_number + " Вывести в консоль матрицу с еденицами по диагонали. Размер задается с консоли."
    value_row_and_col = Readline.readline("Введите число для определения размера матрицы >> ", true)
    print_ruby = Matrixx.new
    print_ruby.create_matrix(value_row_and_col.to_i)
    break
  when "4"
    puts "Task" + task_number + " Написать рекурсивный метод для поиска значения ключа в хеше"
    hash = { key1: {}, key2: {}, key3: { key4: "str", key5: "str2", key6: { key7: { key8: 1, key9: [2] } } } }
    puts "Ваш хеш " + hash.to_s
    search_key = Readline.readline("Введите ключ для поиска в правильном формате - key(номер) >> ", true)
    print_ruby = SearсhingHash.new
    print_ruby.search(hash, search_key.to_sym)
    break
  when "5"
    puts "Task" + task_number + " Написать метод, который принимает строку и приводит её в CamelCase, ruby_case_underscore и css-case"
    string_to_formatize = Readline.readline("Введите строку >> ", true)
    type_of_format = Readline.readline("Введите тип форматирования одно из значений: camel, underscore или css >> ", true)
    print_ruby = StringFormatize.new
    print_ruby.formatize(string_to_formatize, type_of_format.to_sym)
    break
  when "6"
    puts "Task" + task_number + " Написать метод, который принимает многомерный массив и тип данных, возвращает массив этих типов"
    array = [[1, 2, 3, 4, "1"], %w[2 5 10], [111, 222, 333, 444], %w[i love ruby], { key: "value" }, [[405, ["tttttttttttt"]], ["text", 100_000]]]
    puts 'Ваш массив: ' + array.to_s
    type_of_data = Readline.readline("Введите тип данных с большой или мальнькой буквы >> ", true)
    print_ruby = TypeOfArray.new
    p print_ruby.get_all(array, Object.const_get(type_of_data.capitalize))
    break
  else
    puts "Неверный или некорректный номер задания попробуйте еще раз"
  end
end
