class Address < ApplicationRecord
  belongs_to :node

  def to_s
    "#{address} #{city} #{state} #{zip}"
  end
end
