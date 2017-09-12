class Sensor < ApplicationRecord
  has_many :packages
  belongs_to :node

  enum type_name: ["level-o-meter", "pluviometer"]

  def name
    "#{type_name}-#{id+1000}"
  end
end
