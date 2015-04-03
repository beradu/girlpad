class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :user, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
