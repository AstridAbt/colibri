module ApplicationHelper
  def pages_home?
    params[:controller] == 'pages' && params[:action] == 'home'
  end

  def pages_quests_index?
    params[:controller] == 'quests' && params[:action] == 'index'
  end

  def pages_quests_show?
    params[:controller] == 'quests' && params[:action] == 'show'
  end

  def pages_profile_show?
    params[:controller] == 'profiles' && params[:action] == 'show'
  end

  def pages_earth?
    params[:controller] == 'comparisons' && params[:action] == 'index'
  end

end
