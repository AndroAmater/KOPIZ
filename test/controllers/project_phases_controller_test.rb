require 'test_helper'

class ProjectPhasesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get project_phases_create_url
    assert_response :success
  end

end
