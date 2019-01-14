class StaticPagesController < ApplicationController
  def home
    @courses = Course.with_lessons.sort_by{|course| course.count_users}
      .reverse!.take Settings.courses.popular_course
  end
end
