class CreateLeaves < ActiveRecord::Migration[7.1]
  def change
    create_table :leaves do |t|
      t.references :employee, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :status

      t.timestamps
    end
  end
end
