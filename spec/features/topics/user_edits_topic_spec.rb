require 'rails_helper'

feature "User edits topic" do

scenario "User edits topic" do

  book = FactoryGirl.create(:book)
  topic = FactoryGirl.create(:topic, book: book)

  visit book_path(book.id)

  click_link("Edit topic")
  fill_in "Title", with: "I still don't know what Meg's deal is"
  click_on "Update Topic"

  expect(page).to have_content "Topic updated successfully"
  end
end
