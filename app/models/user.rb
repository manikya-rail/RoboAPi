class User
  include Mongoid::Document
   include Mongoid::Attributes::Dynamic
  include Mongoid::Timestamps
  field :firstName, type: String
  field :lastName, type: String
  field :email, type: String

  validates :email, uniqueness: true
  validates :firstName, presence: true
end
