require 'rails_helper'

feature "User can delete a comment" do

scenario "User can delete a comment" do

  book = FactoryGirl.create(:book)
  topic = FactoryGirl.create(:topic, book: book)
  comment = FactoryGirl.create(:comment, topic: topic)

  visit book_topic_path(book.id, topic.id)
  click_link("Edit comment")
  click_on "Delete"

  expect(page).to have_no_content(comment.comment)
  end
end
