class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  def index
    @user = current_user
  end

  # GET /teams/1
  def show
  end

  # GET /teams/new
  def new
    @league = League.find(params[:league_id])
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  def create
    @league = League.find(params[:league_id])
    @team = @league.teams.build(team_params)
    @team.user = current_user

    if @team.save
      redirect_to @league, notice: 'Team was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
      redirect_to @league, notice: 'Team was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /teams/1
  def destroy
    @league = League.find(params[:league_id])
    @team.destroy
    redirect_to @league, notice: 'Team was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_params
      params.require(:team).permit(:name, :league_id, :user_id)
    end
end
