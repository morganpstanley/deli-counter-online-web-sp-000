# Write your code here.

require 'pry'

def line(current_line)
  if current_line == []
    current_line_result = "The line is currently empty."
  else
    i = 1
    current_line_result = "The line is currently:"
    current_line.each do |person|
      current_line_result << " #{i}. #{person}"
      i += 1
    end
  end
  puts current_line_result
end

def take_a_number(current_line, new_person)
  current_line.push(new_person)
  puts "Welcome, #{new_person}. You are number #{current_line.length} in line."
end

def now_serving(current_line)
  if current_line == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{current_line.shift}."
  end
end
