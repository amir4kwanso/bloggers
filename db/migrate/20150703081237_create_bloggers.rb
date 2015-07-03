class CreateBloggers < ActiveRecord::Migration
  def change
    create_table :bloggers do |t|
      t.string :name
      t.integer :age
      t.boolean :gender
      t.text :address

      t.timestamps null: false
    end
  end
end
