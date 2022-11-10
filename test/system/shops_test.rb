require "application_system_test_case"

class ShopsTest < ApplicationSystemTestCase
  setup do
    @shop = shops(:one)
  end

  test "visiting the index" do
    visit shops_url
    assert_selector "h1", text: "Shops"
  end

  test "should create shop" do
    visit shops_url
    click_on "New shop"

    fill_in "Closingtime", with: @shop.ClosingTime
    fill_in "Openingtime", with: @shop.OpeningTime
    fill_in "Shopname", with: @shop.ShopName
    fill_in "Status", with: @shop.Status
    fill_in "Name", with: @shop.name
    click_on "Create Shop"

    assert_text "Shop was successfully created"
    click_on "Back"
  end

  test "should update Shop" do
    visit shop_url(@shop)
    click_on "Edit this shop", match: :first

    fill_in "Closingtime", with: @shop.ClosingTime
    fill_in "Openingtime", with: @shop.OpeningTime
    fill_in "Shopname", with: @shop.ShopName
    fill_in "Status", with: @shop.Status
    fill_in "Name", with: @shop.name
    click_on "Update Shop"

    assert_text "Shop was successfully updated"
    click_on "Back"
  end

  test "should destroy Shop" do
    visit shop_url(@shop)
    click_on "Destroy this shop", match: :first

    assert_text "Shop was successfully destroyed"
  end
end