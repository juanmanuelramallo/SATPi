class AlertMailer < ApplicationMailer
  default from: 'Info SATPi <postmaster@sandbox841fdc073b274a3693b798bd1167f7f3.mailgun.org>'

  def alert_users(alert)
    @alert = alert
    @sensor = alert.sensor
    mail(to: User.all.map(&:email), subject: "Alerta #{ alert.status } - SATPi")
  end
end
