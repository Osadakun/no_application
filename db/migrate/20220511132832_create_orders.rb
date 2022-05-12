class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.text :name
      t.text :enemy_name
      t.text :first_double_1
      t.text :first_double_2
      t.text :first_single
      t.text :second_double_1
      t.text :second_double_2

      t.timestamps
    end
  end
end
