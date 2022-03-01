require "test_helper"

class SpeechesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get speeches_index_url
    assert_response :success
  end

  test "should get new" do
    get speeches_new_url
    assert_response :success
  end

  test "should get edit" do
    get speeches_edit_url
    assert_response :success
  end
end
