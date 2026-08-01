require "test_helper"

class ExcretionRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get excretion_records_index_url
    assert_response :success
  end
end
