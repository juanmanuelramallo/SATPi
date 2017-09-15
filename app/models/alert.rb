class Alert < ApplicationRecord
  belongs_to :sensor
  belongs_to :package

  enum status: ["Baja", "Media", "Alta"]

  after_create :deliver_notification

  private

  def deliver_notification
    AlertMailer.alert_users(self).deliver_now
  end
end
