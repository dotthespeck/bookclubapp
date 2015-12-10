FactoryGirl.define do

  factory :book do
    title "Sample Book"
    author "Louisa May Alcott"
    book_cover "http://blogs.slj.com/afuse8production/files/2012/05/LittleWomen6.jpg"
    list_num 1

  end

  factory :topic do
    title "What's the deal with Beth?"
    book
  end

  factory :comment do
    sequence :comment do |n|
      "I don't know#{n}, she's weird"
    end
    topic
  end
end
