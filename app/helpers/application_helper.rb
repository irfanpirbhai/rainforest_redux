module ApplicationHelper

  def show_flash_fields

  if flash[:notice]
    <div class="notice"><%= flash[:notice] %></div>
  end

  if flash[:alert]
    <div class="alert"><%= flash[:alert] %></div>
  end
  
  if flash[:error]
    <div class="error"><%= flash[:error] %></div>
  end

end
