# Preview all emails at http://localhost:3000/rails/mailers/alert_mailer
class AlertMailerPreview < ActionMailer::Preview
  def alert_users
    AlertMailer.alert_users(Alert.last)
  end
end
