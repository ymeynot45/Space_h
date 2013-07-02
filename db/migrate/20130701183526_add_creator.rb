class AddCreator < ActiveRecord::Migration
  def change
  	# change_table :games do |t|
  		# t.string   :creator, null: false
  		add_column :games, :creator, :string
  	# end
  end
end