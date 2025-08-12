class Employee < ApplicationRecord
  has_many :leaves, class_name: "Leave", dependent: :destroy

  validates :name, presence: true
  validates :position, presence: true
  validates :salary, presence: true, numericality: { greater_than: 0 }
  validates :hire_date, presence: true
  
  def calculate_monthly_salary
   (salary.to_f / 12).round(2)
  end

end
