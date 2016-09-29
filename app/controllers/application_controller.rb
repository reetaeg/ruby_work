#encoding:utf-8
class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  private

  def admin_only
    unless current_user.admin?
      redirect_to :back, :alert => "권한이 없습니다."
    end
  end
  
end
