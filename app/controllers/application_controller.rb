class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @forums = Forum.all
  end
end
