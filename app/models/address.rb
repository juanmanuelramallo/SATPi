class Address < ApplicationRecord
  belongs_to :node, optional: true
  belongs_to :user, optional: true

  def to_s
    "#{address} #{city} #{state} #{zip}"
  end
end
