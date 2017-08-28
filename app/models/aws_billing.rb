class AwsBilling
  include Mongoid::Document
  field :summary_cost, type: String
  field :detailed_billing, type: String
end
