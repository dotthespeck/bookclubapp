require "rails_helper"

feature "User sees all topics for a book" do
  scenario "User sees all the topics for a book" do

    book = FactoryGirl.create(:book)
    topic = FactoryGirl.create(:topic, book: book)

    visit "books/#{book.id}"

    expect(page).to have_content topic.title
    end
  end

#   scenario "Most recent posted first" do
#
#     book = FactoryGirl.create(:book)
#     second_book = FactoryGirl.create(:book)
#
#     visit root_path
#     (second_book.title).should appear_before(book.title)
#
#   end
# end
