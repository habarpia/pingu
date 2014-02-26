class PenguinsController < ApplicationController
  before_action :set_penguin, only: [:show, :edit, :update, :destroy]

  # GET /penguins
  # GET /penguins.json
  def index
    @penguins = Penguin.all
  end

  # GET /penguins/1
  # GET /penguins/1.json
  def show
  end

  # GET /penguins/new
  def new
    @penguin = Penguin.new
  end

  # GET /penguins/1/edit
  def edit
  end

  # POST /penguins
  # POST /penguins.json
  def create
    @penguin = Penguin.new(penguin_params)

    respond_to do |format|
      if @penguin.save
        format.html { redirect_to @penguin, notice: 'Penguin was successfully created.' }
        format.json { render action: 'show', status: :created, location: @penguin }
      else
        format.html { render action: 'new' }
        format.json { render json: @penguin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /penguins/1
  # PATCH/PUT /penguins/1.json
  def update
    respond_to do |format|
      if @penguin.update(penguin_params)
        format.html { redirect_to @penguin, notice: 'Penguin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @penguin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /penguins/1
  # DELETE /penguins/1.json
  def destroy
    @penguin.destroy
    respond_to do |format|
      format.html { redirect_to penguins_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_penguin
      @penguin = Penguin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def penguin_params
      params.require(:penguin).permit(:name, :gender, :personality, :colour_mum, :colour_dad, :colour_own, :belly_colour_mum, :belly_colour_dad, :belly_colour_own, :beak_mum, :beak_dad, :beak_own, :eyes_mum, :eyes_dad, :eyes_own, :belly_mum, :belly_dad, :belly_own, :body_mum, :body_dad, :body_own)
    end
end
