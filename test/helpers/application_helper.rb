module ApplicationHelper
  def errors?(object, field_name)
    return !object.errors.messages[field_name].blank? if object.errors.any?
  end
end
