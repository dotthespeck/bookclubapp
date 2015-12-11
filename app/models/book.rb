class Book < ActiveRecord::Base

has_many :topics, dependent: :destroy

validates :title, length: { minimum: 2 }
validates :author, length: { minimum: 2 }
validates :book_cover, :format => URI::regexp(%w(http https))
validates :book_cover, length: { maximum: 200}

  def self.featured_book
    featured_book = Book.where(status: 'Featured')
    return featured_book
  end

  def self.future_books
    @future_books = Book.where(status: 'Coming up')
    return @future_books
  end

  def self.past_books
    @past_books = Book.where(status: 'Done')
    return @past_books
  end
end
