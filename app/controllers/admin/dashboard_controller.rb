class Admin::DashboardController < Admin::AdminController

  menu_item :dashboard

  def index
    @comments  = Comment.unread
    @inquiries = Inquiry.pending
  end

end