require 'rails_helper'

feature 'User sees information' do

scenario 'User clicks on book' do

  book = FactoryGirl.create(:book)

    visit root_path
    click_link("cover")

    expect(page).to have_content book.title
    expect(page).to have_content book.author
    expect(page).to have_css("img[src*='#{book.book_cover}']")
  end
end
