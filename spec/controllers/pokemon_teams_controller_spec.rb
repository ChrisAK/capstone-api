require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe PokemonTeamsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # PokemonTeam. As you add validations to PokemonTeam, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PokemonTeamsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all pokemon_teams as @pokemon_teams" do
      pokemon_team = PokemonTeam.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:pokemon_teams)).to eq([pokemon_team])
    end
  end

  describe "GET #show" do
    it "assigns the requested pokemon_team as @pokemon_team" do
      pokemon_team = PokemonTeam.create! valid_attributes
      get :show, params: {id: pokemon_team.to_param}, session: valid_session
      expect(assigns(:pokemon_team)).to eq(pokemon_team)
    end
  end

  describe "GET #new" do
    it "assigns a new pokemon_team as @pokemon_team" do
      get :new, params: {}, session: valid_session
      expect(assigns(:pokemon_team)).to be_a_new(PokemonTeam)
    end
  end

  describe "GET #edit" do
    it "assigns the requested pokemon_team as @pokemon_team" do
      pokemon_team = PokemonTeam.create! valid_attributes
      get :edit, params: {id: pokemon_team.to_param}, session: valid_session
      expect(assigns(:pokemon_team)).to eq(pokemon_team)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new PokemonTeam" do
        expect {
          post :create, params: {pokemon_team: valid_attributes}, session: valid_session
        }.to change(PokemonTeam, :count).by(1)
      end

      it "assigns a newly created pokemon_team as @pokemon_team" do
        post :create, params: {pokemon_team: valid_attributes}, session: valid_session
        expect(assigns(:pokemon_team)).to be_a(PokemonTeam)
        expect(assigns(:pokemon_team)).to be_persisted
      end

      it "redirects to the created pokemon_team" do
        post :create, params: {pokemon_team: valid_attributes}, session: valid_session
        expect(response).to redirect_to(PokemonTeam.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved pokemon_team as @pokemon_team" do
        post :create, params: {pokemon_team: invalid_attributes}, session: valid_session
        expect(assigns(:pokemon_team)).to be_a_new(PokemonTeam)
      end

      it "re-renders the 'new' template" do
        post :create, params: {pokemon_team: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested pokemon_team" do
        pokemon_team = PokemonTeam.create! valid_attributes
        put :update, params: {id: pokemon_team.to_param, pokemon_team: new_attributes}, session: valid_session
        pokemon_team.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested pokemon_team as @pokemon_team" do
        pokemon_team = PokemonTeam.create! valid_attributes
        put :update, params: {id: pokemon_team.to_param, pokemon_team: valid_attributes}, session: valid_session
        expect(assigns(:pokemon_team)).to eq(pokemon_team)
      end

      it "redirects to the pokemon_team" do
        pokemon_team = PokemonTeam.create! valid_attributes
        put :update, params: {id: pokemon_team.to_param, pokemon_team: valid_attributes}, session: valid_session
        expect(response).to redirect_to(pokemon_team)
      end
    end

    context "with invalid params" do
      it "assigns the pokemon_team as @pokemon_team" do
        pokemon_team = PokemonTeam.create! valid_attributes
        put :update, params: {id: pokemon_team.to_param, pokemon_team: invalid_attributes}, session: valid_session
        expect(assigns(:pokemon_team)).to eq(pokemon_team)
      end

      it "re-renders the 'edit' template" do
        pokemon_team = PokemonTeam.create! valid_attributes
        put :update, params: {id: pokemon_team.to_param, pokemon_team: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested pokemon_team" do
      pokemon_team = PokemonTeam.create! valid_attributes
      expect {
        delete :destroy, params: {id: pokemon_team.to_param}, session: valid_session
      }.to change(PokemonTeam, :count).by(-1)
    end

    it "redirects to the pokemon_teams list" do
      pokemon_team = PokemonTeam.create! valid_attributes
      delete :destroy, params: {id: pokemon_team.to_param}, session: valid_session
      expect(response).to redirect_to(pokemon_teams_url)
    end
  end

end
