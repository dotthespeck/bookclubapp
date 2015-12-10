class Comment < ActiveRecord::Base

belongs_to :topic

validates :comment, length: { minimum: 2 }
end
