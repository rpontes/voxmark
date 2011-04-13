require File.dirname(__FILE__) + '/acceptance_helper'

feature "Contact", %q{
  In order to get in touch with site owner
  As a visitor
  I want to send a contact message
} do

  scenario "valid message", :js => true do
    visit contact_page

    fill_in "inquiry[email]",   :with => "danielvlopes@gmail.com"
    fill_in "inquiry[name]",    :with => "Daniel Lopes"
    fill_in "inquiry[message]", :with => "Hello, I want a new feature"

    click_button "Send Message"
    should_have_notice "Your messages was successfully sent."
  end

  scenario "invalid message" do
    visit contact_page
    click_button "Send Message"

    should_have_errors "Email is invalid",
      "Email can't be blank",
      "Name can't be blank",
      "Message can't be blank"
  end

end