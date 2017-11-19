require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get show_all" do
    get products_show_all_url
    assert_response :success
  end

  test "should get show" do
    get products_show_url
    assert_response :success
  end

end
