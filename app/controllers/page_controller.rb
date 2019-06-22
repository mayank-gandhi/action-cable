class PageController < ApplicationController
  def index
  end

  def broadcast
    if params[:message].present?
      message = "<p>#{current_user.email} : #{params[:message]}</p>"
      ActionCable.server.broadcast 'web_notifications_channel', message: message
    end
    render :index
  end
end
