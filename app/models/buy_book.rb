class BuyBook < ApplicationRecord
belongs_to :user
belongs_to :book

	validates :quantity   , presence: true 
	validates :user_id   , presence: true 
end
