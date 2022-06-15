require "application_system_test_case"

class GiftcardsTest < ApplicationSystemTestCase
  setup do
    @giftcard = giftcards(:one)
  end

  test "visiting the index" do
    visit giftcards_url
    assert_selector "h1", text: "Giftcards"
  end

  test "should create giftcard" do
    visit giftcards_url
    click_on "New giftcard"

    fill_in "Address", with: @giftcard.address
    fill_in "Commission", with: @giftcard.commission
    fill_in "First name", with: @giftcard.first_name
    fill_in "Gift card value", with: @giftcard.gift_card_value
    fill_in "Last name", with: @giftcard.last_name
    fill_in "Mob no", with: @giftcard.mob_no
    fill_in "Order date", with: @giftcard.order_date
    click_on "Create Giftcard"

    assert_text "Giftcard was successfully created"
    click_on "Back"
  end

  test "should update Giftcard" do
    visit giftcard_url(@giftcard)
    click_on "Edit this giftcard", match: :first

    fill_in "Address", with: @giftcard.address
    fill_in "Commission", with: @giftcard.commission
    fill_in "First name", with: @giftcard.first_name
    fill_in "Gift card value", with: @giftcard.gift_card_value
    fill_in "Last name", with: @giftcard.last_name
    fill_in "Mob no", with: @giftcard.mob_no
    fill_in "Order date", with: @giftcard.order_date
    click_on "Update Giftcard"

    assert_text "Giftcard was successfully updated"
    click_on "Back"
  end

  test "should destroy Giftcard" do
    visit giftcard_url(@giftcard)
    click_on "Destroy this giftcard", match: :first

    assert_text "Giftcard was successfully destroyed"
  end
end
