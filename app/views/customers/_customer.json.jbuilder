json.extract! customer, :id, :name, :email, :phone, :company_name, :created_at, :updated_at
json.url customer_url(customer, format: :json)
