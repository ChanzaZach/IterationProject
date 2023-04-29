require "rails_helper" 
RSpec.describe CardsController, :type => :controller do 
  login_user
  describe "test web requests" do 
    context "GET #index" do 
      it "returns a success response" do 
      get :index 
      expect(response).to be_successful 
      end 
    end 
    context "GET #show" do 
      let!(:card) { Card.create(title: "Test title", description: "Test description") } 
      it "returns a success response" do 
        expect(response).to be_successful 
      end 
    end 
    context "GET #new" do 
      it "should render #new template" do 
        expect(response).to be_successful 
      end 
    end
  end 
end