class LessonsController < ApplicationController
  before_action :require_login

  def index
    @user ||= current_user
    @words = Word.with_learned(@user.id).with_correct_answer
    @pagy, @lessons = pagy @user.lessons
  end

  def new
  end

  def create
    @lesson = Lesson.new lesson_params
    if @lesson.save
      redirect_to edit_lesson_path(@lesson.id)
    else
      flash[:danger] = "Can't start lesson"
      redirect_to courses_path
    end
  end

  def edit
    @lesson = Lesson.find_by(id: params[:id])
    course = @lesson.course
    words = course.words.random_words

    words.each do |word|
      @lesson.lesson_answers.build(word_id: word.id)
      # @lesson.lesson_answers << lesson_answer
    end
  end

  def update
  end

  private

  def lesson_params
    params.require(:lesson).permit :course_id, :user_id, :results, lesson_anwers_attributes: [ :id, :word_id, :word_answer_id ]
  end
end
