require "rails_helper"

feature "User sees all books" do
  scenario "User sees all the books" do

    book = FactoryGirl.create(:book)
    visit root_path

    expect(page).to have_content book.title
    expect(page).to have_content book.author
    expect(page).to have_css("img[src*='#{book.book_cover}']")
    expect(page).to have_content book.list_num
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
