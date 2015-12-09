require "rails_helper"

feature "User visits topic page" do
  scenario "User visits topic page" do

    book = FactoryGirl.create(:book)
    topic = FactoryGirl.create(:topic, book: book)

    visit book_path(book.id)
    click_on topic.title

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
