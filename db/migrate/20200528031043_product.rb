class Product < ActiveRecord::Migration[6.0]
  def change
     create_table :product do |t|
       t.string :name
        t.string :tag
        t.string :images
        t.string :gender
        t.string :like
       end
  end
end
