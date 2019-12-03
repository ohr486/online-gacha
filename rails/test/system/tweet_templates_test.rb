require "application_system_test_case"

class TweetTemplatesTest < ApplicationSystemTestCase
  setup do
    @tweet_template = tweet_templates(:one)
  end

  test "visiting the index" do
    visit tweet_templates_url
    assert_selector "h1", text: "Tweet Templates"
  end

  test "creating a Tweet template" do
    visit tweet_templates_url
    click_on "New Tweet Template"

    fill_in "Link", with: @tweet_template.link
    fill_in "Message", with: @tweet_template.message
    fill_in "Tweet day", with: @tweet_template.tweet_day
    click_on "Create Tweet template"

    assert_text "Tweet template was successfully created"
    click_on "Back"
  end

  test "updating a Tweet template" do
    visit tweet_templates_url
    click_on "Edit", match: :first

    fill_in "Link", with: @tweet_template.link
    fill_in "Message", with: @tweet_template.message
    fill_in "Tweet day", with: @tweet_template.tweet_day
    click_on "Update Tweet template"

    assert_text "Tweet template was successfully updated"
    click_on "Back"
  end

  test "destroying a Tweet template" do
    visit tweet_templates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tweet template was successfully destroyed"
  end
end
