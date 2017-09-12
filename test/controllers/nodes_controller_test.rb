require 'test_helper'

class NodesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nodes_index_url
    assert_response :success
  end

end
