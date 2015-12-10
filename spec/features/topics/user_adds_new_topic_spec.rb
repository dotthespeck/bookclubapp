require "rails_helper"

feature "user adds a topic" do
  
  scenario "User adds a topic" do

    book = FactoryGirl.create(:book)

    visit book_path(book.id)
    click_on "Add a topic"
    fill_in "Title", with: "What's the deal with Meg?"
    click_on "Create Topic"

   expect(page).to have_content "Topic created successfully"
  end
end
