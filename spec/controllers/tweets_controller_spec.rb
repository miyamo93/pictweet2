require 'rails_helper'

describe TweetsController do
  describe 'GET #new' do
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end
  describe 'GET #edit' do
    it "assigns the requested tweet to @tweet" do
      tweet = create(:tweet)
      get :edit, params: { id: tweet }
      expect(assigns(:tweet)).to eq tweet
    end

    it "renders the :edit template" do
      tweet = create(:tweet)
      get :edit, params: { id: tweet }
      expect(response).to render_template :edit
    end
    describe 'GET #index' do
      it "populates an array of tweets ordered by created_at DESC" do
        tweets = create_list(:tweet, 3) 
        get :index
      end
  
      it "renders the :index template" do
      end
    end
  end
end