class UsersController < ApplicationController
  def control_panel
    @comments = User.find_all_user_comments(current_user)
  end

  private

end
