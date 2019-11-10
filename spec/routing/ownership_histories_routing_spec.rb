require "rails_helper"

RSpec.describe OwnershipHistoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/ownership_histories").to route_to("ownership_histories#index")
    end

    it "routes to #new" do
      expect(:get => "/ownership_histories/new").to route_to("ownership_histories#new")
    end

    it "routes to #show" do
      expect(:get => "/ownership_histories/1").to route_to("ownership_histories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ownership_histories/1/edit").to route_to("ownership_histories#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/ownership_histories").to route_to("ownership_histories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ownership_histories/1").to route_to("ownership_histories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ownership_histories/1").to route_to("ownership_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ownership_histories/1").to route_to("ownership_histories#destroy", :id => "1")
    end
  end
end
