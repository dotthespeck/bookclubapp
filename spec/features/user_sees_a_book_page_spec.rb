require 'rails_helper'

feature 'User sees information' do
  #  %q(
  # As a user
  # I want to view a book's details
  # So that I can see a book's details
  #
  # Acceptance Criteria
  #
  # [X] I must be able to get to this page from the books index
  # [X] I must see the book's title
  # [X] I must see the book's description
  # [X] I must see the book's cover
  # )

scenario 'User clicks on book' do

  book = FactoryGirl.create(:book)

    visit root_path
    click_link("cover")

    expect(page).to have_content book.title
    expect(page).to have_content book.author
    expect(page).to have_css("img[src*='#{book.book_cover}']")
  end
end
