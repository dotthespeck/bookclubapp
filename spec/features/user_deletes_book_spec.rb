require 'rails_helper'

feature "User can delete a book", %q(
  As a user
  I want to delete a book I posted
  So that I can delete a book I posted for any reason

  Acceptance Criteria

  [] I must be able delete a book from the book details page
  [] All reviews associated with the book must also be deleted
) do

scenario "User can delete a book" do

  book = FactoryGirl.create(:book)

  visit root_path
  click_link("cover")
  click_link("edit")

  click_on "Delete"

  expect(page).to have_no_content(book.title)
  end

end
