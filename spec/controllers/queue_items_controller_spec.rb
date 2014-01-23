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

  describe "POST create" do
    it "redirects to the my_queue page" do
      session[:user_id] = Fabricate(:user).id
      video = Fabricate(:video)
      post :create, video_id: video.id
      expect(response).to redirect_to my_queue_path
    end
    it "creates a queue item" do
      session[:user_id] = Fabricate(:user).id
      video = Fabricate(:video)
      post :create, video_id: video.id
      expect(QueueItem.count).to eq(1)
    end
    it "creates a queue item that is associated with the video" do
      session[:user_id] = Fabricate(:user).id
      video = Fabricate(:video)
      post :create, video_id: video.id
      expect(QueueItem.first.video).to eq(video)
    end
    it "creates a queue item associated with the signed in user" do
      alex = Fabricate(:user)
      session[:user_id] = alex.id
      video = Fabricate(:video)
      post :create, video_id: video.id
      expect(QueueItem.first.user).to eq(alex)
    end
    it "puts the queue_item as the last in the queue" do
      alex = Fabricate(:user)
      session[:user_id] = alex.id
      elf = Fabricate(:video)
      Fabricate(:queue_item, video: elf, user: alex)
      elf2 = Fabricate(:video)
      post :create, video_id: elf2.id
      elf2_queue_item = QueueItem.where(video_id: elf2.id, user_id: alex.id).first
      expect(elf2_queue_item.position).to eq(2)
    end
    it "does not add the video if it is already in the queue" do
      alex = Fabricate(:user)
      session[:user_id] = alex.id
      elf = Fabricate(:video)
      Fabricate(:queue_item, video: elf, user: alex)
      post :create, video_id: elf.id
      expect(alex.queue_items.count).to eq(1)
    end
    it "redirects to the sign in page for unauthenticated users" do
      video = Fabricate(:video)
      post :create, video_id: video.id
      expect(response).to redirect_to sign_in_path
    end
  end

  describe "POST destroy" do
    it "redirects to the my queue page" do
      session[:user_id] = Fabricate(:user).id
      queue_item = Fabricate(:queue_item)
      delete :destroy, id: queue_item.id
      expect(response).to redirect_to my_queue_path
    end
    it "deletes the queue item" do
      alex = Fabricate(:user)
      session[:user_id] = alex.id
      queue_item = Fabricate(:queue_item, user: alex)
      delete :destroy, id: queue_item.id
      expect(QueueItem.count).to eq(0)
    end

    it "normalizes the remaining queue items" do
      alex = Fabricate(:user)
      session[:user_id] = alex.id
      queue_item1 = Fabricate(:queue_item, user: alex, position: 1)
      queue_item2 = Fabricate(:queue_item, user: alex, position: 2)
      delete :destroy, id: queue_item1.id
      expect(QueueItem.first.position).to eq(1)

    end

    it "does not delete the queue item if the user is not the queue item owner" do
      alex = Fabricate(:user)
      bey = Fabricate(:user)
      session[:user_id] = alex.id
      queue_item = Fabricate(:queue_item, user: bey)
      delete :destroy, id: queue_item.id
      expect(QueueItem.count).to eq(1)
    end
    it "redirects to sign in page when user is unauthenticated" do
      alex = Fabricate(:user)
      queue_item = Fabricate(:queue_item, user: alex)
      delete :destroy, id: queue_item.id
      expect(response).to redirect_to sign_in_path
    end
  end

  describe "POST update queue" do
    context "with valid inputs" do
      it "redirects to my queue page" do
        alex = Fabricate(:user)
        session[:user_id] = alex.id
        queue_item1 = Fabricate(:queue_item, user: alex, position: 1)
        queue_item2 = Fabricate(:queue_item, user: alex, position: 2)
        post :update_queue, queue_items: [{ id: queue_item1.id, position: 2 }, { id: queue_item2.id, position: 1 }]
        expect(response).to redirect_to my_queue_path
      end
      it "reorders queue items" do
        alex = Fabricate(:user)
        session[:user_id] = alex.id
        queue_item1 = Fabricate(:queue_item, user: alex, position: 2)
        queue_item2 = Fabricate(:queue_item, user: alex, position: 1)
        post :update_queue, queue_items: [{ id: queue_item1.id, position: 2 }, { id: queue_item2.id, position: 1 }]
        expect(alex.queue_items).to eq([queue_item2, queue_item1])
      end
      it "normalizes position numbers to increment from 1" do
        alex = Fabricate(:user)
        session[:user_id] = alex.id
        queue_item1 = Fabricate(:queue_item, user: alex, position: 2)
        queue_item2 = Fabricate(:queue_item, user: alex, position: 1)
        post :update_queue, queue_items: [{ id: queue_item1.id, position: 3 }, { id: queue_item2.id, position: 2 }]
        expect(alex.queue_items.map(&:position)).to eq([1, 2])
      end
    end
    context "with invalid inputs" do
      it "redirects to the my queue page" do
        alex = Fabricate(:user)
        session[:user_id] = alex.id
        queue_item1 = Fabricate(:queue_item, user: alex, position: 1)
        queue_item2 = Fabricate(:queue_item, user: alex, position: 2)
        post :update_queue, queue_items: [{ id: queue_item1.id, position: 3.4 }, { id: queue_item2.id, position: 2 }]
        expect(response).to redirect_to my_queue_path
      end
      it "sets the flash error message" do
        alex = Fabricate(:user)
        session[:user_id] = alex.id
        queue_item1 = Fabricate(:queue_item, user: alex, position: 1)
        queue_item2 = Fabricate(:queue_item, user: alex, position: 2)
        post :update_queue, queue_items: [{ id: queue_item1.id, position: 2.6 }, { id: queue_item2.id, position: 1 }]
        expect(flash[:error]).to be_present
      end
      it "does not change the queue positions" do
        alex = Fabricate(:user)
        session[:user_id] = alex.id
        queue_item1 = Fabricate(:queue_item, user: alex, position: 1)
        queue_item2 = Fabricate(:queue_item, user: alex, position: 2)
        post :update_queue, queue_items: [{ id: queue_item1.id, position: 3 }, { id: queue_item2.id, position: 2.4 }]
        expect(queue_item1.position).to eq(1)
      end
    end

    context "with unauthenticated users" do
      it "should redirect to the sign in path" do
        post :update_queue, queue_items: [{ id: 2, position: 3 }, { id: 5, position: 2 }]
        expect(response).to redirect_to sign_in_path
      end
    end


    context "with queue items that do not belong to the current user" do
      it "does not change the queue items" do
        alex = Fabricate(:user)
        session[:user_id] = alex.id
        bey = Fabricate(:user)
        queue_item1 = Fabricate(:queue_item, user: bey, position: 1)
        queue_item2 = Fabricate(:queue_item, user: alex, position: 2)
        post :update_queue, queue_items: [{ id: queue_item1.id, position: 3 }, { id: queue_item2.id, position: 1 }]
        expect(queue_item1.reload.position).to eq(1)

      end
    end
  end

end
