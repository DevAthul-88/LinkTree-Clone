class DashboardController < ApplicationController
  before_action :authenticate_user!, expect: [:show]
  before_action :set_user, only: [:show]
  def index
    @should_render_navbar = true
  end
  def show
    redirect_to dashboard_path if @user.nil?
  end
     

  private

  def set_user
  
  begin
    @user = User.friendly_find(params[:id])
  rescue StandardError
    @user = nil
end
end
