class BetsController < ApplicationController
  before_action :set_bet, only: %i[ show edit update destroy ]
  before_action :set_game

  # GET /bets or /bets.json
  def index
    @bets = Bet.all
  end

  # GET /bets/1 or /bets/1.json
  def show
  end

  # GET /bets/new
  def new
    @bet = Bet.new
  end

  # GET /bets/1/edit
  def edit
  end

  # POST /bets or /bets.json
  def create
    @bet = Bet.new(bet_params)
    @bet.user = current_user
    @bet.game = @game

    respond_to do |format|
      if @bet.save
        format.html { redirect_to games_url, notice: "Bet was successfully created." }
        format.json { render :show, status: :created, location: @bet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bets/1 or /bets/1.json
  def update
    respond_to do |format|
      if @bet.update(bet_params)
        format.html { redirect_to games_url, notice: "Bet was successfully updated." }
        format.json { render :show, status: :ok, location: @bet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bets/1 or /bets/1.json
  def destroy
    @bet.destroy

    respond_to do |format|
      format.html { redirect_to game_bets_url, notice: "Bet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bet
      @bet = Bet.find(params[:id])
    end

    def set_game
      @game = Game.find(params[:game_id])
    end

    # Only allow a list of trusted parameters through.
    def bet_params
      params.require(:bet).permit(:team, :score_difference, :game_id)
    end
end
