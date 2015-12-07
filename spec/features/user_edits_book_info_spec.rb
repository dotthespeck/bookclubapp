require 'rails_helper'

feature "User edits book information" do

#    %q(
#   As a user
#   I want to edit a review
#   So that I can correct any mistakes or add updates
#
#   Acceptance Criteria
#
#   [x] I must provide valid information
#   [x] I must be presented with errors if I fill out the form incorrectly
#   [x] I must be able to get to the edit page from the question details page
# )

scenario "User edits book information" do

  book = FactoryGirl.create(:book)

  visit root_path
  click_on book.book_cover

  click_on "Edit Book Information"
  fill_in "Title", with: "Little Women 2: The Wrath of Jo"
  click_on "Edit Book Information"

  expect(page).to have_content "Book information was successfully updated"
  click_on book.title

  click_on "Edit Review"
  fill_in "Review", with: review.review

  click_on "Edit Review"

  expect(page).to have_content "Review was successfully edited"
  end
end
