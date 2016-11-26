class UsersController < ApplicationController
  before_action :find_user, only: [:control_panel]

  def control_panel
    @comments = @user.comment_post_hash
  end

  private

  def find_user
    @user = current_user
  end
end
