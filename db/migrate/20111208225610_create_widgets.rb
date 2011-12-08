class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string  :name
      t.string  :description
      t.float   :price
      t.string  :currency
      t.integer :inventory

      t.integer :user_id

      t.timestamps
    end
  end
end
