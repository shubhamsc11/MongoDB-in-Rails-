class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  # If you want to add Id as a primary key or you can enter id directly in inputs, default is bson object id
  field :id, type: String, default: -> { BSON::ObjectId.new.to_s }
  field :name, type: String
  field :brand_name, type: String
  field :price, type: Float

  field :description, localize: true
end

# Note :-
# The BSON ObjectID EX:- "623cb6db6474151d9fcf6de4", consists of 24 hexadecimal characters. Each character represents 4 bits, so the entire ObjectID represents 96 bits(12 bytes) of information.
# Timestamp: The first 8 characters (4 bytes) represent the timestamp.
# Machine ID: The next 6 characters (3 bytes) represent the machine identifier.
# Process ID: The next 4 characters (2 bytes) represent the process ID.
# Counter: The final 6 characters (3 bytes) represent a counter value, starting with a random value. 
# Every new object/record request generate new and unique id for the object.
