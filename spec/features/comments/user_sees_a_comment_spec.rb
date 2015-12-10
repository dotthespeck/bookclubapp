require "rails_helper"

feature "User sees a comment on the book page" do
  scenario "User sees a comment on the book page" do

    book = FactoryGirl.create(:book)
    topic = FactoryGirl.create(:topic, book: book)
    comment = FactoryGirl.create(:comment, topic: topic)
    comment2 = FactoryGirl.create(:comment, topic: topic)


    visit "books/#{book.id}"

    expect(page).to have_content comment2.comment
    expect(page).to have_no_content comment.comment
    end
  end
