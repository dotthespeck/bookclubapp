class Topic < ActiveRecord::Base

belongs_to :book
has_many :comments

validates :title, length: { minimum: 2 }
end
