class CoursesController < ApplicationController
  before_action :require_login

  def index
    @pagy, @courses = pagy Course.all
  end
end
