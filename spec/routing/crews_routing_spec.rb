require "rails_helper"

RSpec.describe CrewsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/crews").to route_to("crews#index")
    end


    it "routes to #show" do
      expect(:get => "/crews/1").to route_to("crews#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/crews").to route_to("crews#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/crews/1").to route_to("crews#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/crews/1").to route_to("crews#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/crews/1").to route_to("crews#destroy", :id => "1")
    end

  end
end
