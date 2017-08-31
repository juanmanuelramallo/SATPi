module Satpi
  class API < Grape::API
    version 'v1', using: :header, vendor: 'twitter'
    format :json
    prefix :api

    resource :nodes do
      desc "Save a package from a sensor"
      params do
        requires :id, type: Integer, desc: "ID of the node"
        requires :data, type: JSON, desc: "JSON object of data from a node"
      end
      post "/", root: false do
        data = JSON.parse(data)
        node = Node.find params[:id]
        data.each do |sensor_data|
          sensor = Sensor.find sensor_data[:id]
          sensor.packages.create(data: sensor_data[:data])
          sensor.update last_update_at: Time.zone.now
        end
        node.update last_update_at: Datetime.now
      end
    end
  end
end
