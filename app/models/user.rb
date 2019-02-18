class User < ApplicationRecord
	belongs_to :country
	belongs_to :state
	belongs_to :city
	has_many :book
	has_many :buy_books
	
	has_attached_file :avatar , :styles => {:medium => "300x300>" , :thumb => "100x100>"}
	validates_attachment_content_type :avatar , content_type: /\Aimage\/.*\z/
	
	before_save {self.email = email.downcase}
	validates :name    , presence: true , length: { minimum:2 , maximum:30 }
	validates :phone   , presence: true , length: { minimum:10 , maximum:10 } ,
			   Uniqueness: {case_sensitive: false}
	validates :email   , presence: true , Uniqueness: {case_sensitive: false} 
	validates :address , presence: true , length: { minimum:10 } , Uniqueness: {case_sensitive: false}
	validates :country_id , presence: true
	validates :state_id , presence: true
	validates :city_id , presence: true

end
