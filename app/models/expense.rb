class Expense < ApplicationRecord
  belongs_to :employee, optional: true

  validates :category, presence: true
  validates :amount, presence: true, numericality:{other_than: 0, message: "Sıfır Olamaz."}
  validates :date, presence: true
  validates :description, presence: true
end
