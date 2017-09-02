class Api::NodesController < ApiController
  def index
    nodes = Node.all
    render json: nodes, status: :ok
  end
end
