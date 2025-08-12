class AddEmployeeToExpenses < ActiveRecord::Migration[7.1]
  def change
    add_reference :expenses, :employee, null: true, foreign_key: true
  end
end
