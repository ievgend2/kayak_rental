module ApplicationHelper

  def readable_time(time)
    time.strftime("%b %d, %I:%M%P")
  end

  # def author_of(record)
  #   user_signed_in? && current_user.id == record.user_id
  # end

  # def admin?
  #   customer_signed_in? && current_customer.admin?
  # end

end
