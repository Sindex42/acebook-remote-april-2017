require 'rails_helper'

RSpec.feature "Comment", type: :feature do
  scenario "Can comment on posts" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Add a comment:")
    fill_in "Commenter",with: "Daniel"
    fill_in "Body", with: "This is a comment"
    click_button "Create Comment"
    expect(page).to have_content("This is a comment")

end
end