class Game < ActiveRecord::Base
	SIZES = %w(Tiny Small Normal Large Huge)
	NUM_PLAYERS = (2..4)

	has_many :users, through: :players
	has_many :players
	belongs_to :user
	
	validates :name, :presence => true
	validates :name, :uniqueness => true
	validates :name, :length => { :minimum => 6, :maximum => 15 }
	validates :number_of_players, :presence => true
	validates :number_of_players, :numericality => { :greater_than => NUM_PLAYERS.first, :less_than => NUM_PLAYERS.last }
	validates :size, :inclusion => SIZES

end