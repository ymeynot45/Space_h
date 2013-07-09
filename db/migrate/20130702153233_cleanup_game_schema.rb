class CleanupGameSchema < ActiveRecord::Migration
  def change
  	change_table :games do |t|
  	 	t.rename :user_id, :creator_id
  	end
  	remove_column :games, :creator
  end
end
