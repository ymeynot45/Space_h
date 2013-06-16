class Game < ActiveRecord::Base
	SIZES = %w(Tiny Small Normal Large Huge)

	has_many :users, through: :players
	has_many :players
	belongs_to :user
	
	validates :name, :presence => true
	validates :name, :uniqueness => true
	validates :name, :length => { :minimum => 6, :maximum => 15 }
	validates :number_of_players, :presence => true
	validates :number_of_players, :numericality => { :greater_than => 1, :less_than => 5 }
	validates :size, :inclusion => SIZES

end