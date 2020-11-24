class Post < ApplicationRecord
  validates :title, :keyword, :plan, presence: true 
end
