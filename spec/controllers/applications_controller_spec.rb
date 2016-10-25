require 'rails_helper'
RSpec.describe ApplicationController, type: :controller do

# This should return the minimal set of values that should be in the session
# in order to pass any filters (e.g. authentication) defined in
# PostsController. Be sure to keep this updated too.
let(:valid_session) { {} }
  describe "GET #index" do
    it "assigns all forums as @forums" do
      user = User.create!(email: "test@example.com", password: "password1")
      forum = Forum.create!(name: "test name", description: "test description abcdefghijklmnopqrstuvwxyz", user_id: 1)
      get :index, params: {}, session: valid_session
      expect(assigns(:forums)).to eq([forum])
    end
  end
end