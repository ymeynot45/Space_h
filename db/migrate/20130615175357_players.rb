class Players < ActiveRecord::Migration
  def change
  	create_table  :players do |t|
  		t.integer	    :user_id, :null => false
  		t.integer	    :game_id, :null => false
  		t.integer		  :cash, :default => 0, :null => false
  		t.integer		  :metal, :default => 0, :null => false
  		t.integer		  :ideal_temperature, :null => false
  		t.timestamps
  	end
  end
end
