class PayrollMailer < ApplicationMailer
  default from: 'no-reply@yourcompany.com'

  def salary_notification(employee)
    @employee = employee
    @monthly_salary = employee.calculate_monthly_salary
    mail(to: @employee.email, subject: 'Maaş Bildirimi')
  end
end
