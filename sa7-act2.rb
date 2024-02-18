puts "prob1"
def tag(name, content)
  "<#{name}>#{content}</#{name}>"
end

puts tag :p, "This is a paragraph."
puts tag :h1, "This is a header."

puts "\nprob2"
numbers = [1, 2, 3, 4, 5]
list1=[]
triple = Proc.new { |x| x * 3 }
numbers.each do |element|
  puts element*2
end
p numbers.map(&triple)

puts "\nprob3"
def safe_divide(a, b)
  begin
    a/b
  rescue ZeroDivisionError => e
    puts "Error: Division by zero is not allowed."
  rescue IOError => e
    puts "IO error: #{e.message}"
  end
end

puts safe_divide 10, 2
puts safe_divide 3, 0

puts "\nprob4"
content = File.read('input.txt')
reverse_content = content.reverse
File.open('output.txt', 'w') do |file|
  file.puts reverse_content
end
puts "Note that reversed content was added to output.txt"

puts "\nprob5"
class InvalidAgeError < StandardError; end

def validate_age(age)
  if age < 0
    raise InvalidAgeError, "InvalidAgeError: Age cannot be negative."
  else
    puts "Age is valid."
  end
end
begin
  validate_age(-5)
rescue InvalidAgeError => e
  puts e.message
end
begin
  validate_age(30)
rescue InvalidAgeError => e
  puts e.message
end


puts "\nprob6"
person = { "Name" => "Alice", "Age" => 20, "Grade" => "A" }
# puts person
person.each do |key, value|
  puts "#{key}: #{value}"
end

puts "\nprob7"
numbers = [1,2,3,4,5,6]
puts numbers.select { |n| n.even? }

puts "\nprob8"
def warn_unless(condition, warning)
  unless condition
    puts "This is a warning."
  else
    puts
  end
end
warn_unless(true, "This is a warning.")
warn_unless(false, "This is a warning.")

puts "\nprob9"
def check_status
  puts "Status: #{$app_status}"
end

$app_status = "OK"
check_status
$app_status = "Error"
check_status

puts "\nprob10"
5.times do |i|
  puts "Ruby is fun!"
end

puts "\nprob11"
range_to_array = (1..5).to_a # [1, 2, 3, 4, 5]
(1..5).each do |number|
  puts number
end

puts "\nprob12"
lines = File.readlines('sample.txt')
(0..2).each do |index|
  puts "#{index + 1}: #{lines[index]}"
end

puts "\nprob13"
puts "see greet.rb, sample usage: ruby greet.rb Alice Bob"

puts "\nprob14"
double = Proc.new { |x| x.length }
p ["Ruby", "is", "awesome"].map(&double)

puts "\nprob15"
def divide_numbers(dividend , divisor)
  begin
    dividend/divisor
  rescue ZeroDivisionError => e
    puts "Cannot divide by zero!"
  rescue IOError => e
    puts "IO error: #{e.message}"
  end
end

puts divide_numbers(10, 2)
puts divide_numbers(10, 0)
