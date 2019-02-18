class DropBuyBooksTable < ActiveRecord::Migration[5.2]
  def change
		drop_table :buy_books
  end
end
