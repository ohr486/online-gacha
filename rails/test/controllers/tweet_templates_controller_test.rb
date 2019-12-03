require 'test_helper'

class TweetTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweet_template = tweet_templates(:one)
  end

  test "should get index" do
    get tweet_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_tweet_template_url
    assert_response :success
  end

  test "should create tweet_template" do
    assert_difference('TweetTemplate.count') do
      post tweet_templates_url, params: { tweet_template: { link: @tweet_template.link, message: @tweet_template.message, tweet_day: @tweet_template.tweet_day } }
    end

    assert_redirected_to tweet_template_url(TweetTemplate.last)
  end

  test "should show tweet_template" do
    get tweet_template_url(@tweet_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweet_template_url(@tweet_template)
    assert_response :success
  end

  test "should update tweet_template" do
    patch tweet_template_url(@tweet_template), params: { tweet_template: { link: @tweet_template.link, message: @tweet_template.message, tweet_day: @tweet_template.tweet_day } }
    assert_redirected_to tweet_template_url(@tweet_template)
  end

  test "should destroy tweet_template" do
    assert_difference('TweetTemplate.count', -1) do
      delete tweet_template_url(@tweet_template)
    end

    assert_redirected_to tweet_templates_url
  end
end
