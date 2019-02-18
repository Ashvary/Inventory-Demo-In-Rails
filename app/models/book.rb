class Book < ApplicationRecord
	belongs_to :user
	has_many :buy_books

	validates :name    , presence: true 
	validates :quantity   , presence: true 
	validates :isbncode   , presence: true , Uniqueness: {case_sensitive: false} 

end
