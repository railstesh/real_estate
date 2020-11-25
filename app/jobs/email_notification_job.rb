class EmailNotificationJob < ApplicationJob
  queue_as :default

  def perform(current_manager, recipient_email)
    ManagerMailer.buyer(current_manager, recipient_email).deliver_later
    ManagerMailer.seller(current_manager, recipient_email).deliver_later
  end
end
