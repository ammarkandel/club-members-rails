module IdeasHelper
  def check_access(idea)
    out = ''
    if user_signed_in? && current_user.name == idea.user.name
      out << link_to('Show', idea)
      out << link_to('Edit', edit_idea_path(idea))
      out << link_to('Destroy', idea, method: :delete, data: { confirm: 'Are you sure?' })
    end
    out.html_safe
  end

  def access_name(idea)
    idea.user.name if user_signed_in?
  end
end
