class InquiryMailer < ActionMailer::Base
  default :to => "contato@voxmark.com.br"

  def notification(inquiry)
    @inquiry = inquiry

    mail :reply_to => @inquiry.email, :subject => "New inquiry"
  end
end

