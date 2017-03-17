#!/usr/bin/env ruby

# Takes the number of 6 sided dice to roll then returns the total

def roll_dice(dice = 1)
  total = 0
  dice.times do |n|
    total += Random.rand(1..6)
  end
  total
end

# Takes the number of 6 sided dice to roll and the number of times to roll them
# then prints out how many times each possible number came up

def dice_outcomes(dice, rolls)
  outcomes = []
  rolls.times do |roll|
    outcomes << roll_dice(dice)
  end
  occurences = outcomes.each_with_object(Hash.new(0)) do |outcome, count|
    count[outcome] += 1
  end
  occurences.sort.map do |key, val|
    outcome = ""
    val.times do
      outcome << '#'
    end
    $stdout.puts "#{key}: #{outcome}"
  end
end

dice_outcomes(ARGV[0].to_i, ARGV[1].to_i)