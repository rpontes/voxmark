class InquiryMailer < ActionMailer::Base
  default :to => "rpontes@gmail.com"

  def notification(inquiry)
    @inquiry = inquiry
    mail :reply_to => @inquiry.email, :subject => "Nova mensagem"
  end
end

