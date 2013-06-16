class AddGameParams < ActiveRecord::Migration
  def change
  	change_table :games do |t|
  		t.integer  :number_of_players
  		t.string   :size
  end
end
