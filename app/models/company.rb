class Company
  include Mongoid::Document
  include Mongoid::Timestamps
  field :companyName, type: String
  field :location, type: String
end
