require "rails_helper"

feature "User sees all topics for a book" do
  scenario "User sees all the topics for a book" do

    book = FactoryGirl.create(:book)
    topic = FactoryGirl.create(:topic, book: book)
    comment = FactoryGirl.create(:comment, topic: topic)
    comment2 = FactoryGirl.create(:comment, topic: topic)


    visit "books/#{book.id}"
save_and_open_page
    expect(page).to have_content comment2.comment
    expect(page).to have_no_content comment.comment
    end
  end
