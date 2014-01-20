require 'spec_helper'

describe SessionsController do
  describe "GET new" do
    it "renders the new template for unauthenticated users" do
      get :new
      expect(response).to render_template :new
    end
    it "redirects to the home page if authenticated user" do
      session[:user_id] = Fabricate(:user).id
      get :new
      expect(response).to redirect_to home_path
    end
  end

  describe "POST create" do

    context "with valid credentials" do
      before do
        @alex = Fabricate(:user)
        post :create, email: @alex.email, password: @alex.password
      end

      it "assigns the user.id to the session user_id" do
        expect(session[:user_id]).to eq(@alex.id)
      end
      it "redirects to the home path" do
        expect(response).to redirect_to home_path
      end
      it "generates flash notice" do
        expect(flash[:notice]).not_to be_blank
      end
    end

    context "with invalid credentials" do
      before do
        alex = Fabricate(:user) #reates object in db
        alex = Fabricate.build(:user) #reates object in memory
        post :create, email: alex.email, password: alex.password+'asdf'
      end
      it "does not assign the user.id to the session user_id" do
        expect(session[:user_id]).to be_nil
      end
      it "generates flash error" do
        expect(flash[:error]).not_to be_blank
      end
      it "redirects to the sign in path" do
        expect(response).to redirect_to sign_in_path
      end
    end

  end

  describe "GET destroy" do

    before do
      session[:user_id] = Fabricate(:user).id
      get :destroy
    end

    it "clears the session for the user" do
      expect(session[:user_id]).to be_nil
    end
    it "redirects to the root path" do
      expect(response).to redirect_to root_path
    end
    it "generates flash message" do
      expect(flash[:notice]).not_to be_blank
    end
  end
end
