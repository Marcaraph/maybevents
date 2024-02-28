require "application_system_test_case"

class AdmnsTest < ApplicationSystemTestCase
  setup do
    @admn = admns(:one)
  end

  test "visiting the index" do
    visit admns_url
    assert_selector "h1", text: "Admns"
  end

  test "should create admn" do
    visit admns_url
    click_on "New admn"

    click_on "Create Admn"

    assert_text "Admn was successfully created"
    click_on "Back"
  end

  test "should update Admn" do
    visit admn_url(@admn)
    click_on "Edit this admn", match: :first

    click_on "Update Admn"

    assert_text "Admn was successfully updated"
    click_on "Back"
  end

  test "should destroy Admn" do
    visit admn_url(@admn)
    click_on "Destroy this admn", match: :first

    assert_text "Admn was successfully destroyed"
  end
end
