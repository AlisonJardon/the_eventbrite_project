class Event < ApplicationRecord
	belongs_to :user 
	has_many :attendances
	has_many :users, through: :attendances 


	validates :start_date, presence: true
	
	validates :duration, presence: true
	
	validates :title, presence: true,
	# length: { minimum: 5, maximum: 140, message: 'Le titre doit être compris entre 5 et 140 caractères' }
	
	validates :description, presence: true
	# length: { minimum: 20, maximum: 1000, message: 'La description doit faire 20 caractères au minimum et 1000 au maximum' }

	validates :price, presence: true

	validates :location, presence: true

end
