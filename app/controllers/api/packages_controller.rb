class Api::PackagesController < ApiController
  before_action :set_sensor, except: :batch_create

  def index
    render json: @sensor.packages, status: :ok
  end

  def create
    data = params[:data]
    render_bad_request_for_create && return unless data.present?
    begin
      package = @sensor.packages.create!(data: data)
      render json: package, status: :ok
    rescue
      render json: { STATUS: "ERROR", message: "Un error inesperado impidió guardar el paquete. Intenta nuevamente" }, status: :bad_request
    end
  end

  def batch_create
    begin
      params[:packages].each do |package|
        sensor = Sensor.find package[:sensor_id]
        package = sensor.packages.create!(data: package[:data])
      end
      render json: { STATUS: "SUCCESS", message: "All packages have been create successfully" }, status: :ok
    rescue
      render json: { STATUS: "ERROR", message: "Error inesperado. Intente nuevamente" }, status: :bad_request
    end
  end

  private

  def set_sensor
    @sensor = Sensor.find_by id: params[:sensor_id]
    render_bad_request && return unless @sensor.present?
  end

  def packages_params
    params.permit(:package).require(:sensor_id)
  end

  def render_bad_request
    render json: { STATUS: "ERROR", message: "Se requiere el parametro 'sensor_id'" }, status: :bad_request
  end

  def render_bad_request_for_create
    render json: { STATUS: "ERROR", message: "Se requiere el parametro 'data'" }, status: :bad_request
  end
end
