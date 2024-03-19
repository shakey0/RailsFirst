class CreateTestThings < ActiveRecord::Migration[7.1]
  def change
    create_table :test_things do |t|
      t.string :item_1
      t.string :item_2

      t.timestamps
    end
  end
end
