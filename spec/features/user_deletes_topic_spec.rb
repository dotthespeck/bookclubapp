require 'rails_helper'

feature "User can delete a topic" do

scenario "User can delete a topic" do

  book = FactoryGirl.create(:book)
  topic = FactoryGirl.create(:topic, book: book)

  visit book_path(book.id)
  click_link("Edit topic")
  click_on "Delete"

  expect(page).to have_no_content(topic.title)
  end
end
