class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :comment, type: String

  belongs_to :post
end
