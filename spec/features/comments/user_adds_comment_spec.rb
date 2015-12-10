require "rails_helper"

feature "user adds a comment" do

 scenario "User adds a comment" do

   book = FactoryGirl.build(:book)
   topic = FactoryGirl.create(:topic, book: book)
   comments = FactoryGirl.create_list(:comment, 5, topic: topic)
   comments.each do |comment|

   visit book_topic_path(book.id, topic.id)
   expect(page).to have_content comment.comment

   click_on "Add a comment"
   fill_in "Comment", with: "Still don't get that Beth kid"
   click_on "Create Comment"

   expect(page).to have_content "Comment created successfully"
    end
  end
end
