require 'test_helper'

class BuyBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get buy_books_new_url
    assert_response :success
  end

  test "should get create" do
    get buy_books_create_url
    assert_response :success
  end

  test "should get index" do
    get buy_books_index_url
    assert_response :success
  end

end
