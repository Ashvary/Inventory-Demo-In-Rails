class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :isbncode
      t.integer :quantity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
