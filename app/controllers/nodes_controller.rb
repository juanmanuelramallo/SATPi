class NodesController < ApplicationController
  def index
    @nodes = Node.all
    @external_data = { num: ((Time.now.to_f - Time.now.to_i) * rand() * 10).round(2), at: Time.now }
  end
end
