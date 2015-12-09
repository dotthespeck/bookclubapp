require "rails_helper"

feature "user adds a topic" do
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

  scenario "User adds a topic" do

    book = FactoryGirl.create(:book)

    visit book_path(book.id)
    click_on "Add a topic"
    fill_in "Title", with: "What's the deal with Meg?"
    click_on "Create Topic"

   expect(page).to have_content "Topic created successfully"
  end
end
