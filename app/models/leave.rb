class Leave < ApplicationRecord
  belongs_to :employee

  enum status: { pending: 0, approved: 1, rejected: 2 }

  validates :employee, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
end
