class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table  :users do |t|
    	t.string  :name
    	t.integer :phone
    	t.string  :email
    	t.text    :address
      t.references :country, foreign_key: true
      t.timestamps
    end
  end
end
