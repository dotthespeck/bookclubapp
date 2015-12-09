require 'rails_helper'

feature "User edits book information" do

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
