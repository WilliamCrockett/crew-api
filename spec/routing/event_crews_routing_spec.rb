require "rails_helper"

RSpec.describe EventCrewsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/event_crews").to route_to("event_crews#index")
    end


    it "routes to #show" do
      expect(:get => "/event_crews/1").to route_to("event_crews#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/event_crews").to route_to("event_crews#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/event_crews/1").to route_to("event_crews#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/event_crews/1").to route_to("event_crews#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_crews/1").to route_to("event_crews#destroy", :id => "1")
    end

  end
end
