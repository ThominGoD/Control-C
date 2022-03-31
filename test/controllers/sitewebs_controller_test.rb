require "test_helper"

class SitewebsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @siteweb = sitewebs(:one)
  end

  test "should get index" do
    get sitewebs_url
    assert_response :success
  end

  test "should get new" do
    get new_siteweb_url
    assert_response :success
  end

  test "should create siteweb" do
    assert_difference("Siteweb.count") do
      post sitewebs_url, params: { siteweb: { description: @siteweb.description, image: @siteweb.image, name: @siteweb.name, tag: @siteweb.tag, url: @siteweb.url } }
    end

    assert_redirected_to siteweb_url(Siteweb.last)
  end

  test "should show siteweb" do
    get siteweb_url(@siteweb)
    assert_response :success
  end

  test "should get edit" do
    get edit_siteweb_url(@siteweb)
    assert_response :success
  end

  test "should update siteweb" do
    patch siteweb_url(@siteweb), params: { siteweb: { description: @siteweb.description, image: @siteweb.image, name: @siteweb.name, tag: @siteweb.tag, url: @siteweb.url } }
    assert_redirected_to siteweb_url(@siteweb)
  end

  test "should destroy siteweb" do
    assert_difference("Siteweb.count", -1) do
      delete siteweb_url(@siteweb)
    end

    assert_redirected_to sitewebs_url
  end
end
