module ApplicationHelper
  def pages_home?
    params[:controller] == 'pages' && params[:action] == 'home'
  end

  def pages_quests_index?
    params[:controller] == 'quests' && params[:action] == 'index'
  end
end
