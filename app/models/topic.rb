class Topic < ActiveRecord::Base

belongs_to :book
validates :title, length: { minimum: 2 }
end
