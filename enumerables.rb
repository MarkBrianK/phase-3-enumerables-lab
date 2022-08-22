require 'pry'

def spicy_foods
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end
def get_names(spicy_foods)
  spicy_foods.collect{|spicy| spicy[:name]}
end

def spiciest_foods(spiciest_foods)
  spicy_foods.select{|spicy| spicy[:heat_level]>5}
end

def print_spicy_foods(spiciest_foods)
  spiciest_foods.map do |spice|
    puts"#{spice[:name]} (#{spice[:cuisine]}) | Heat Level: #{'🌶' * spice[:heat_level]}"
  end
end
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find{|spicy| spicy[:cuisine]===cuisine}
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort_by do |food|
    food[:heat_level]
  end
end

def print_spiciest_foods (spicy_foods)
  high= spiciest_foods(spicy_foods)
  print_spicy_foods(high)
end
def average_heat_level(spicy_foods)
  total = spicy_foods.sum do |spice|
    spice[:heat_level]
  end
  total/spicy_foods.length
end

