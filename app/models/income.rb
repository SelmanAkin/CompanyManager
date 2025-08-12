class Income < ApplicationRecord
  belongs_to :customer, optional: true

  validates :customer, presence: :true
  validates :amount, presence: :true, numericality:{other_than: 0,message: "0'dan büyük olmalıdır"} 
  validates :date, presence: :true
  validates :description, presence: :true
end
