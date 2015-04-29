class PinsController < ApplicationController
  
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pins = Pin.all
    respond_with(@pins)
  end

  def show
    @pins = Pin.all
    respond_with(@pin)
  end

  def new
    @pin = current_user.pins.new
    # @pin = Pin.new
    respond_with(@pin)
  end

  def edit
  end

  def create
    @pin = current_user.pins.new(pin_params)
    @pin.save
    respond_with(@pin)
  end

  def update
    @pin.update(pin_params)
    respond_with(@pin)
  end

  def destroy
    @pin.destroy
    respond_with(@pin)
  end

  # def contract_params
  #   params.require(:section).permit(:id, :descriptions, :image)
  # end

  private
    def set_pin
      @pin = Pin.find(params[:id])
    end

    def pin_params
      params.require(:pin).permit(:descriptions, :image)
    end
end
