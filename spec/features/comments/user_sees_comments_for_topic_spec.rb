require "rails_helper"

feature "User sees all comments for a topic" do
  scenario "User sees all comments for a topic" do

    book = FactoryGirl.create(:book)
    topic = FactoryGirl.create(:topic, book: book)
    comments = FactoryGirl.create_list(:comment, 5, topic: topic)
    comments.each do |comment|



      visit book_topic_path(book.id, topic.id)

      expect(page).to have_content comment.comment
    end
  end
end
