module ApplicationHelper
  def pages_home?
    params[:controller] == 'pages' && params[:action] == "home"
  end
end
