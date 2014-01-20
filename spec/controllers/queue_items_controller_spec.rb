require 'spec_helper'

describe QueueItemsController do
  describe "GET index" do
    it "sets queue_items for queue_items of the current user" do
      allison = Fabricate(:user)
      session[:user_id] = allison.id
      queue_item1 = Fabricate(:queue_item, user: allison)
      queue_item2 = Fabricate(:queue_item, user: allison)
      get :index
      expect(assigns(:queue_items)).to match_array([queue_item1, queue_item2])
    end
    it "redirects to the sign in page for unauthenticated users" do
      get :index
      expect(response).to redirect_to sign_in_path
    end
  end

end
