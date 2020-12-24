require 'test_helper'

class Api::CocktailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_cocktails_index_url
    assert_response :success
  end

  test "should get show" do
    get api_cocktails_show_url
    assert_response :success
  end

end
