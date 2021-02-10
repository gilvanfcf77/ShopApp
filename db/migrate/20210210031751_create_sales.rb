class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.timestamp :date
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
