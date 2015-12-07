require "rails_helper"

feature "user adds a book" do
# %q(
#
#    As a user
#    I want to post a link to a book
#    So I can share what I'm reading with others
#
#    Acceptance Criteria
#
#   [] I must provide a title that is at least 1 character long
#   [] I must provide a valid URL to the book
#   [] The book list number must be consecutive
#   [] I must be presented with errors if I fill out the form incorrectly
# )


 scenario "User adds a book" do

   book = FactoryGirl.build(:book)

  visit root_path
   click_on "Add a book"
   fill_in "Title", with: book.title
   fill_in "Author", with: book.author
   fill_in "Cover Image", with: book.book_cover
   fill_in "List Number", with: book.list_num
   click_on "Create Book"

  expect(page).to have_content "Book was successfully created"
  end
end
