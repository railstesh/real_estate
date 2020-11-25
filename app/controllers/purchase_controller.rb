class PurchaseController < ApplicationController

  def very_long_task
    recipient_email = valid_table(params[:table_name])

    EmailNotificationJob.set(wait: 60.second).perform_later(current_manager, recipient_email)

    render :json => {:notice => "Congratulations, you will receive confirmation by email" }
  end

  private

  def valid_table(table)
    if ["houses", "commercial_units", "complex_buildings"].include?(table)
      table.classify.constantize.update_data(params[:id])
    end
  end

end