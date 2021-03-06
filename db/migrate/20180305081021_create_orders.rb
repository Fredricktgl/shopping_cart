class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.belongs_to :user, foreign_key: true
      t.string :status
      t.string :transaction_num
      t.timestamps
    end
  end
end
