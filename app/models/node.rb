class Node < ApplicationRecord
  has_one :address
  has_many :sensors
  has_many :packages, through: :sensors

  enum state: [:active, :inactive]
end
