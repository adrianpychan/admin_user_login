class PagesController < ApplicationController

  before_action :authenticate_user!, only: [:users], unless: :admin_signed_in?
  before_action :authenticate_admin!, only: [:admins], unless: :admin_signed_in?

  def home
  end

  def admins
    if admin_signed_in?
      @admin_email = current_admin.email
      @user_type = Admin.table_name.singularize.capitalize
    end
  end

  def users
    if user_signed_in?
      @user_email = current_user.email
      @user_type = User.table_name.singularize.capitalize
    elsif admin_signed_in?
      @user_email = current_admin.email
      @user_type = Admin.table_name.singularize.capitalize
    end
  end
end
