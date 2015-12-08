class Book < ActiveRecord::Base

#has_many :comments, dependent: :destroy

validates :title, length: { minimum: 2 }
validates :author, length: { minimum: 2 }
validates :book_cover, :format => URI::regexp(%w(http https))
end
