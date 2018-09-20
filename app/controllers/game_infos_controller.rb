class GameInfosController < ApplicationController
  skip_before_action :check_logined, only: [:index, :show, :find_league, :logout, :set_game_info]
  before_action :set_game_info, only: [:show, :edit, :score, :update, :destroy]

  # GET /game_infos
  # GET /game_infos.json
  def index
    @game_infos = GameInfo.page(params[:page]).per(10).order(date: :desc, updatable: :asc, created_at: :desc)
  end

  def find_league
    keyleague = params[:keyleague]
    if keyleague.empty?
      redirect_back fallback_location: { controller: 'game_infos', action: 'index' }
    else
      @game_infos = GameInfo.where('event = ?', keyleague).order(date: :desc, created_at: :desc)
      @league_selected = keyleague
      render 'game_infos/list'
    end
  end

  # GET /game_infos/1
  # GET /game_infos/1.json
  def show
  end

  # GET /game_infos/new
  def new
    @game_info = GameInfo.new
  end

  # GET /game_infos/1/edit
  def edit
  end

  # GET /game_infos/1/score
  def score
  end

  # POST /game_infos
  # POST /game_infos.json
  def create
    @game_info = GameInfo.new(game_info_params)

    respond_to do |format|
      if @game_info.save
        format.html { redirect_to @game_info, notice: 'Game info was successfully created.' }
        format.json { render :show, status: :created, location: @game_info }
      else
        format.html { render :new }
        format.json { render json: @game_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_infos/1
  # PATCH/PUT /game_infos/1.json
  def update
    respond_to do |format|
      if @game_info.update(game_info_params)
        format.html { redirect_to @game_info, notice: 'Game info was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_info }
      else
        format.html { render :edit }
        format.json { render json: @game_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_infos/1
  # DELETE /game_infos/1.json
  def destroy
    @game_info.destroy
    respond_to do |format|
      format.html { redirect_to game_infos_url, notice: 'Game info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def logout
    reset_session
    redirect_to '/game_infos'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_info
      @game_info = GameInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_info_params
      params.require(:game_info).permit(:date, :batting_first_team, :field_first_team, :stadium, :game_number, :event, :round, :top1, :bottom1, :top2, :bottom2, :top3, :bottom3, :top4, :bottom4, :top5, :bottom5, :top6, :bottom6, :top7, :bottom7, :top8, :bottom8, :top9, :bottom9, :top10, :bottom10, :top11, :bottom11, :top12, :bottom12, :top13, :bottom13, :top14, :bottom14, :top15, :bottom15, :updatable, :pitcher_top, :pitcher_bottom, :catcher_top, :catcher_bottom, :homerun_top, :homerun_bottom, :threebase_top, :threebase_bottom, :twobase_top, :twobase_bottom, :message)
    end

end
