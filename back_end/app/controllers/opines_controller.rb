class OpinesController < ApplicationController
  before_action :set_opine, only: %i[ show update destroy ]

  # GET /opines
  def index
    @opines = Opine.all

    render json: @opines
  end

  # GET /opines/1
  def show
    render json: @opine
  end

  # POST /opines
  def create
    @opine = Opine.new(opine_params)

    if @opine.save
      render json: @opine, status: :created, location: @opine
    else
      render json: @opine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /opines/1
  def update
    if @opine.update(opine_params)
      render json: @opine
    else
      render json: @opine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /opines/1
  def destroy
    @opine.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opine
      @opine = Opine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def opine_params
      params.require(:opine).permit(:user_name, :comment)
    end
end
