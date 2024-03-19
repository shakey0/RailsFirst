require "test_helper"

class TestThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_thing = test_things(:one)
  end

  test "should get index" do
    get test_things_url
    assert_response :success
  end

  test "should get new" do
    get new_test_thing_url
    assert_response :success
  end

  test "should create test_thing" do
    assert_difference("TestThing.count") do
      post test_things_url, params: { test_thing: { item_1: @test_thing.item_1, item_2: @test_thing.item_2 } }
    end

    assert_redirected_to test_thing_url(TestThing.last)
  end

  test "should show test_thing" do
    get test_thing_url(@test_thing)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_thing_url(@test_thing)
    assert_response :success
  end

  test "should update test_thing" do
    patch test_thing_url(@test_thing), params: { test_thing: { item_1: @test_thing.item_1, item_2: @test_thing.item_2 } }
    assert_redirected_to test_thing_url(@test_thing)
  end

  test "should destroy test_thing" do
    assert_difference("TestThing.count", -1) do
      delete test_thing_url(@test_thing)
    end

    assert_redirected_to test_things_url
  end
end
