class CreateIncomes < ActiveRecord::Migration[7.1]
  def change
    create_table :incomes do |t|
      t.references :customer, null: false, foreign_key: true
      t.decimal :amount
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
