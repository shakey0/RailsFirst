require "application_system_test_case"

class TestThingsTest < ApplicationSystemTestCase
  setup do
    @test_thing = test_things(:one)
  end

  test "visiting the index" do
    visit test_things_url
    assert_selector "h1", text: "Test things"
  end

  test "should create test thing" do
    visit test_things_url
    click_on "New test thing"

    fill_in "Item 1", with: @test_thing.item_1
    fill_in "Item 2", with: @test_thing.item_2
    click_on "Create Test thing"

    assert_text "Test thing was successfully created"
    click_on "Back"
  end

  test "should update Test thing" do
    visit test_thing_url(@test_thing)
    click_on "Edit this test thing", match: :first

    fill_in "Item 1", with: @test_thing.item_1
    fill_in "Item 2", with: @test_thing.item_2
    click_on "Update Test thing"

    assert_text "Test thing was successfully updated"
    click_on "Back"
  end

  test "should destroy Test thing" do
    visit test_thing_url(@test_thing)
    click_on "Destroy this test thing", match: :first

    assert_text "Test thing was successfully destroyed"
  end
end
