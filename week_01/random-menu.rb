# Ada - Week 01
# Random Menu Generator

# Create a random restaurant menu of food dishes
# Pull one item each from different arrays to create a combined menu item

# Adjectives
adjectives = ["spicy", "hot", "cold", "soft", "creamy", "hard", "shredded", "lightly", "buttery", "pan"]

# Cooking styles
cooking_styles = ["sautéed", "stir-fried", "seared", "braised", "stewed", "steamed", "baked", "roasted", "broiled", "grilled"]

# Foods
foods = ["dumplings", "clams", "broccoli", "ham", "potatoes", "shrimp", "asparagus", "fish", "steak", "pork"]

# Create and show a list of ten numbered menu items
10.times do |i|
  puts "#{i + 1}. #{adjectives.sample} #{cooking_styles.sample} #{foods.sample}"
end
