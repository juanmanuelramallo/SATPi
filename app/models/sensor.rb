class Sensor < ApplicationRecord
  has_many :packages
  belongs_to :node

  enum type_name: ["level-o-meter", "pluviometer"]
end
