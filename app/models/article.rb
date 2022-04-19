class Article < ApplicationRecord
    has_one :category

    validates :title, presence=> true
    validates :content, presence=> true
    scope :active, 			 -> { where('active = ?', true) }
  scope :alphabetical, -> { order('name') }
  
end
