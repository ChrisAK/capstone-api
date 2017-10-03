require "rails_helper"

RSpec.describe PokemonTeamsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pokemon_teams").to route_to("pokemon_teams#index")
    end

    it "routes to #new" do
      expect(:get => "/pokemon_teams/new").to route_to("pokemon_teams#new")
    end

    it "routes to #show" do
      expect(:get => "/pokemon_teams/1").to route_to("pokemon_teams#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pokemon_teams/1/edit").to route_to("pokemon_teams#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pokemon_teams").to route_to("pokemon_teams#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pokemon_teams/1").to route_to("pokemon_teams#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pokemon_teams/1").to route_to("pokemon_teams#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pokemon_teams/1").to route_to("pokemon_teams#destroy", :id => "1")
    end

  end
end
