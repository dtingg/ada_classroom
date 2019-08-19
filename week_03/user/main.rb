require_relative "user"

# Create an instance of the class
# ada = User.new

# ada.name = "Ada Lovelace"
# ada.email = "ada@adadev.org"

# puts ada.email
# puts ada.summary

ada = User.new("Ada Lovelace", "ada@adadev.org")
puts ada.summary

ada.name = "Ada Love"
ada.email = "adalove@adadev.org"
puts ada.summary
