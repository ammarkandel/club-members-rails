module ApplicationHelper
  def check_new_idea
    out = ''
    out << link_to('Create New Idea', new_idea_path) if user_signed_in?
    out.html_safe
  end
end
