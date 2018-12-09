require "csv"
require "pry"

frequencies_reached = [0]
current_frequency = 0
continue = true
i = 0

while continue do
  puts i
  CSV.read("input-1.csv").each do |csv|
    current_frequency += csv[0].to_i
    if frequencies_reached.include?(current_frequency)
      continue = false
      break
    end
    frequencies_reached <<  current_frequency 
  end
  i += 1
end

puts current_frequency
