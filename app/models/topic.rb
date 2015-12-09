class Topic < ActiveRecord::Base

belongs_to :book, dependent: :destroy

validates :title, length: { minimum: 2 }
end
