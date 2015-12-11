require 'rails_helper'

feature "User edits comment" do

scenario "User edits comment" do

  book = FactoryGirl.create(:book)
  topic = FactoryGirl.create(:topic, book: book)
  comment = FactoryGirl.create(:comment, topic: topic)

  visit book_topic_path(book.id, topic.id)

  click_link("Edit comment")
  fill_in "Comment", with: "I still don't know what Meg's deal is"
  click_on "Update Comment"

  expect(page).to have_content "Comment updated successfully"
  end
end
