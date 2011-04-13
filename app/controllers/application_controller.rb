class ApplicationController < ActionController::Base
  protect_from_forgery

  respond_to :json, :xml, :html
  before_filter :change_locale
  
protected

  def change_locale
    I18n.locale = (params[:locale] || :en)
  end
    
end
