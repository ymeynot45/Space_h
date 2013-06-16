class Game < ActiveRecord::Base
	has_many :users through: :players
	has_many :players
	belongs_to :user
	
	validates :name, :presence => true
	validates :name, :uniqueness => true
	validates :name, :length => { :minimum => 6, :maximum => 15 }
end