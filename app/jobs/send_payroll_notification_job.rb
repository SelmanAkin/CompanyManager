class SendPayrollNotificationJob < ApplicationJob
  queue_as :default

  def perform(employee_id)
    employee = Employee.find_by(id: employee_id)
    return unless employee && employee.email.present?

    PayrollMailer.salary_notification(employee).deliver_now
  end
end
