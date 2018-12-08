# https://adventofcode.com/2018/day/1

task :day_1 do
  changelist = File.readlines('data/input.txt').map(&:to_i)
  current = changelist.inject(0) { |acc, change| acc + change }
  puts "Part 1: #{current}"
end

task :day_1_2 do
  changelist = File.readlines('data/input.txt').map(&:to_i)
  current = 0
  duplicate = nil
  seen = []

  # TODO: Optimize
  while duplicate.nil?
    changelist.each do |change|
      current += change
      if seen.include?(current)
        duplicate = current
        break
      end
      seen << current
    end
  end

  puts "Part 2: #{duplicate}"
end
