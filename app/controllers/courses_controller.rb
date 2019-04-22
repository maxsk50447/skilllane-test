class CoursesController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:search] && params[:search][:date].present?
      start_date, end_date = params[:search][:date].split(' - ')
      p params[:search]
      @courses = Course.where('LOWER(name) LIKE ?', "%#{params[:search][:name].downcase}%")
      if start_date == end_date 
        @courses = @courses.where('date LIKE ?', params[:search][:date])
        p @courses
      else
        @courses = @courses.having_date_between(start_date, end_date)
      end
    else
      @courses = Course.all
    end

    authorize @courses, :index?

  end

  def new 
    @course = Course.new(user_id: current_user.id)

    authorize @course, :new?
  end

  def show
    @course = Course.find(params[:id])
    authorize @course, :show?
  end

  def apply
    @course = Course.find(params[:id])

    authorize @course, :apply?

    @course.users << current_user

    @course.save

    if @course.save
      redirect_to courses_path
    end
  end

  def create
    @course = Course.new(course_params)

    authorize @course, :create?

    if @course.save
      redirect_to courses_path
    else
      render 'new'
    end
  end



  private def course_params
    params
      .require(:course)
      .permit(:name,
              :description,
              :course_type,
              :date,
              :student_amount
      ).merge(user_id: current_user.id)
  end
end
