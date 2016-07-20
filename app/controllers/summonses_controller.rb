class SummonsesController < ApplicationController
  before_action :set_summons, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except=>[:home]

  # GET /summonses
  # GET /summonses.json
  def index
    @summonses = Summons.all
    @summonses = Summons.all.where(classroom: current_user.classroom)
  end

  # GET /summonses/1
  # GET /summonses/1.json
  def show
  end

  # GET /summonses/new
  def new
    @summons = Summons.new
  end

  # GET /summonses/1/edit
  def edit
  end

  # POST /summonses
  # POST /summonses.json
  def create
    @summons = Summons.new(summons_params)

    respond_to do |format|
      if @summons.save
        format.html { redirect_to @summons, notice: 'Summons was successfully created.' }
        format.json { render :show, status: :created, location: @summons }
      else
        format.html { render :new }
        format.json { render json: @summons.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /summonses/1
  # PATCH/PUT /summonses/1.json
  def update
    respond_to do |format|
      if @summons.update(summons_params)
        format.html { redirect_to @summons, notice: 'Summons was successfully updated.' }
        format.json { render :show, status: :ok, location: @summons }
      else
        format.html { render :edit }
        format.json { render json: @summons.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /summonses/1
  # DELETE /summonses/1.json
  def destroy
    @summons.destroy
    respond_to do |format|
      format.html { redirect_to summonses_url, notice: 'Summons was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_summons
      @summons = Summons.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def summons_params
      params.require(:summons).permit(:student, :teacher, :reason, :place, :classroom)
    end
end
