class PokemonTeamsController < ApplicationController
  before_action :set_pokemon_team, only: [:show, :update, :destroy]

  # GET /pokemon_teams
  def index
    @pokemon_teams = PokemonTeam.where(:team_id => params[:team_id])

    render json: @pokemon_teams
  end

  # GET /pokemon_teams/1
  def show
    render json: @pokemon_team
  end

  # POST /pokemon_teams
  def create
    @pokemon_team = PokemonTeam.new(pokemon_team_params)

    if @pokemon_team.save
      render json: @pokemon_team, status: :created, location: @pokemon_team
    else
      render json: @pokemon_team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pokemon_teams/1
  def update
    if @pokemon_team.update(pokemon_team_params)
      render json: @pokemon_team
    else
      render json: @pokemon_team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pokemon_teams/1
  def destroy
    @pokemon_team.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon_team
      @pokemon_team = PokemonTeam.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pokemon_team_params
      params.require(:pokemon_team).permit(:pokemon_id, :team_id)
    end
end
