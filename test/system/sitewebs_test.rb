require "application_system_test_case"

class SitewebsTest < ApplicationSystemTestCase
  setup do
    @siteweb = sitewebs(:one)
  end

  test "visiting the index" do
    visit sitewebs_url
    assert_selector "h1", text: "Sitewebs"
  end

  test "should create siteweb" do
    visit sitewebs_url
    click_on "New siteweb"

    fill_in "Description", with: @siteweb.description
    fill_in "Image", with: @siteweb.image
    fill_in "Name", with: @siteweb.name
    fill_in "Tag", with: @siteweb.tag
    fill_in "Url", with: @siteweb.url
    click_on "Create Siteweb"

    assert_text "Siteweb was successfully created"
    click_on "Back"
  end

  test "should update Siteweb" do
    visit siteweb_url(@siteweb)
    click_on "Edit this siteweb", match: :first

    fill_in "Description", with: @siteweb.description
    fill_in "Image", with: @siteweb.image
    fill_in "Name", with: @siteweb.name
    fill_in "Tag", with: @siteweb.tag
    fill_in "Url", with: @siteweb.url
    click_on "Update Siteweb"

    assert_text "Siteweb was successfully updated"
    click_on "Back"
  end

  test "should destroy Siteweb" do
    visit siteweb_url(@siteweb)
    click_on "Destroy this siteweb", match: :first

    assert_text "Siteweb was successfully destroyed"
  end
end
