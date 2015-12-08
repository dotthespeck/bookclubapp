require 'rails_helper'

feature "User edits book information" do

#    %q(
#   As a user
#   I want to edit a book
#   So that I can correct any mistakes or add updates
#
#   Acceptance Criteria
#
#   [] I must provide valid information
#   [] I must be presented with errors if I fill out the form incorrectly
#   [] I must be able to get to the edit page from the question details page
# )

scenario "User edits book information" do

  book = FactoryGirl.create(:book)

  visit root_path
  click_link("cover")

  click_link("edit")
  fill_in "Title", with: "Little Women 2: The Wrath of Jo"
  fill_in "Author", with: "Mallory Ortberg"
  click_on "Edit Book Information"

  expect(page).to have_content "Book information updated successfully"
  end
end
