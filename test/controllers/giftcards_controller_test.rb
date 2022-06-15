require "test_helper"

class GiftcardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @giftcard = giftcards(:one)
  end

  test "should get index" do
    get giftcards_url
    assert_response :success
  end

  test "should get new" do
    get new_giftcard_url
    assert_response :success
  end

  test "should create giftcard" do
    assert_difference("Giftcard.count") do
      post giftcards_url, params: { giftcard: { address: @giftcard.address, commission: @giftcard.commission, first_name: @giftcard.first_name, gift_card_value: @giftcard.gift_card_value, last_name: @giftcard.last_name, mob_no: @giftcard.mob_no, order_date: @giftcard.order_date } }
    end

    assert_redirected_to giftcard_url(Giftcard.last)
  end

  test "should show giftcard" do
    get giftcard_url(@giftcard)
    assert_response :success
  end

  test "should get edit" do
    get edit_giftcard_url(@giftcard)
    assert_response :success
  end

  test "should update giftcard" do
    patch giftcard_url(@giftcard), params: { giftcard: { address: @giftcard.address, commission: @giftcard.commission, first_name: @giftcard.first_name, gift_card_value: @giftcard.gift_card_value, last_name: @giftcard.last_name, mob_no: @giftcard.mob_no, order_date: @giftcard.order_date } }
    assert_redirected_to giftcard_url(@giftcard)
  end

  test "should destroy giftcard" do
    assert_difference("Giftcard.count", -1) do
      delete giftcard_url(@giftcard)
    end

    assert_redirected_to giftcards_url
  end
end
