class ExternalApi::PackagesController < ApiController
  def get_data
    num = (Time.now.to_f - Time.now.to_i) * rand() * 10
    render json: { value: num.to_f.round(2), at: Time.now }
  end
end
