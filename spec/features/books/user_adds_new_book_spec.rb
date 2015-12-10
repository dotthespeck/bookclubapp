require "rails_helper"

feature "user adds a book" do

 scenario "User adds a book" do

   book = FactoryGirl.build(:book)

  visit root_path
   click_on "Add a book"
   fill_in "Title", with: book.title
   fill_in "Author", with: book.author
   fill_in "Cover Image", with: book.book_cover
   fill_in "List Number", with: book.list_num
   click_on "Create Book"

  expect(page).to have_content "Book created successfully"
  end
end
