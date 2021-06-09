module ApplicationHelper

  def resource_name
    :skater
  end

  def resource
    @resource ||= Skater.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:skater]
  end

  def resource_class
    devise_mapping.to
  end
end
