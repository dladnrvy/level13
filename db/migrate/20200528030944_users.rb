class Users < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
       t.string :user_id
        t.string :password
        t.string :name
        t.string :gender
        t.string :like
       end
  end
end
