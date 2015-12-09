require "rails_helper"

feature "User visits topic page" do
#    %q(
#   As a user
#   I want to view topics
#   So that I can see what others are talking about
#
#   Acceptance Criteria
#
#   [X] I must see the topics for each book
# )

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
