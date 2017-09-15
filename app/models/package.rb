class Package < ApplicationRecord
  belongs_to :sensor
  has_one :alert

  validates :sensor_id, presence: true
  validates :data, presence: true

  after_create :create_alert

  private

  def create_alert
    if data > sensor.limit
      diff = data - sensor.limit
      status = if diff < 5
        0
      elsif diff < 10
        1
      else
        2
      end
      Alert.create(sensor: sensor, status: status, package: self)
    end
  end
end
