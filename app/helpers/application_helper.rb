module ApplicationHelper
  def errors?(object, field_name)
    return !object.errors.messages[field_name].blank? if object.errors.any?
  end

  def teacher?(user)
    'Teacher' == user[:role]
  end

  def date_from_parameters
    if params[:search].present?
      params[:search][:date]
    else
      '01/01/2019 - 12/01/2019'
    end
  end

  def readyApply?(user)
    @course = Course.find(params[:id])
    @course.users.each do |course|
      if(course.first_name == user)
        return true
      end
    end
    return false
  end
end
