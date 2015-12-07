require "rails_helper"

feature "User sees all books" do
#    %q(
#   As a user
#   I want to view recently posted books
#   So that I can see what others are reading
#
#   Acceptance Criteria
#
#   [] I must see the title of each book
#   [] I must see the description of each book
#   [] I must see the cover of each book
#   [] I must see books listed in order by list number
# )

  scenario "User sees all the books" do

    book = FactoryGirl.create(:book)
    visit root_path

    expect(page).to have_content "#{book.title}"
    expect(page).to have_content "#{book.author}"
    expect(page).to have_content "#{book.book_cover}"
    expect(page).to have_content "#{book.list_num}"
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
