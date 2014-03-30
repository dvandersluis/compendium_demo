class CreateSpendings < ActiveRecord::Migration
  def change
    create_table :spendings do |t|
      t.integer :category_id
      t.float :amount

      t.timestamps
    end
  end
end
