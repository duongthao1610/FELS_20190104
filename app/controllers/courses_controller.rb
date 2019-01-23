class CoursesController < ApplicationController
  before_action :require_login, :get_user

  def index
    @course_with_users = Course.with_users
    @pagy, @courses = pagy Course.all
  end

  def get_user
    @user = current_user
  end
end
