require 'spec_helper'

describe VideosController do

  describe "GET show" do
    it "sets the @video variable for authenticated users" do
      session[:user_id] = Fabricate(:user).id
      video = Fabricate(:video)
      get :show, id: video.id
      expect(assigns(:video)).to eq(video)
    end

    it "redirects to the sign in page for unauthenticated users" do
      video = Fabricate(:video)
      get :show, id: video.id
      expect(response).to redirect_to sign_in_path
    end
  end

  describe "POST search" do
    it "sets the @results variable for authenticated users" do
      session[:user_id] = Fabricate(:user).id
      movie = Fabricate(:video, title: "Resident Evil")
      post :search, search_term: 'dent'
      expect(assigns(:results)).to eq([movie])
    end
    it "redirects to the sign in page for unathenticated users" do
      movie = Fabricate(:video, title: "Resident Evil")
      post :search, search_term: 'dent'
      expect(response).to redirect_to sign_in_path
    end

  end

end
