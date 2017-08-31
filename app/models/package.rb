class Package < ApplicationRecord
  belongs_to :sensor

  ENUM_TYPES = ["integer", "float", "string"]
  enum type: [:integer, :float, :string]

end
