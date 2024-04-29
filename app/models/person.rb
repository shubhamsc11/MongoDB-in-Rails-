class Person
  include Mongoid::Document
  field :name, type: String
  field :age, type: Integer
  validates_uniqueness_of :name

  # to store data in another database in different collection
  # store_in collection: "citizens", database: "other", client: "analytics"

  # include Mongoid::Attributes::Dynamic # to make fields dynamic
  

  # field :first_name, type: String
  # field :middle_name, type: String
  # field :last_name, type: String

  # Custom Getters & Setters¶
  # def first_name
  #   read_attribute(:fn)
  # end

  # def first_name=(value)
  #   write_attribute(:fn, value)
  # end

  # not worked
  # field :clothes, type: Set

  # field :first_name, as: :fn
  # field :last_name, as: :ln, type: String
end
