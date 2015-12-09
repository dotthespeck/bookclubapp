require 'rails_helper'

feature "User can delete a book" do

scenario "User can delete a book" do

  book = FactoryGirl.create(:book)

  visit root_path
  click_link("cover")
  click_link("edit")

  click_on "Delete"

  expect(page).to have_no_content(book.title)
  end

end
