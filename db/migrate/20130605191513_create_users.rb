class CreateUsers < ActiveRecord::Migration
  def change
     create_table :users do |t|

      t.text    :first_name
      t.text    :last_name
      t.text    :email
      t.text    :password_hash
   end   
  end
end
