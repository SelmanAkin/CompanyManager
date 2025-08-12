class Customer < ApplicationRecord
  has_many :incomes, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { 
    with: URI::MailTo::EMAIL_REGEXP, 
    message: "Geçerli bir e-posta adresi olmalıdır" 
  }
  validates :phone, presence: true, length: {minimum: 11}
  validates :company_name, presence: true
end
