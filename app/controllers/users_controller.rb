class UsersController < ApplicationController
  def control_panel
    @comments = User.comment_post_hash(current_user)
  end

  private

end
