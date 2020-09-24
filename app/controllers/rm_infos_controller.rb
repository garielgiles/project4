class RmInfosController < ApplicationController
  before_action :set_rm_info, only: [:show, :update, :destroy]

  # GET /rm_infos
  def index
    @rm_infos = RmInfo.all

    render json: @rm_infos
  end

  # GET /rm_infos/1
  def show
    render json: @rm_info
  end

  # POST /rm_infos
  def create
    @rm_info = RmInfo.new(rm_info_params)

    if @rm_info.save
      render json: @rm_info, status: :created, location: @rm_info
    else
      render json: @rm_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rm_infos/1
  def update
    if @rm_info.update(rm_info_params)
      render json: @rm_info
    else
      render json: @rm_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rm_infos/1
  def destroy
    @rm_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rm_info
      @rm_info = RmInfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rm_info_params
      params.require(:rm_info).permit(:name, :dimension, :content)
    end
end
