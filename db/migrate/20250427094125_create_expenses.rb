class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.string :category
      t.decimal :amount
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
