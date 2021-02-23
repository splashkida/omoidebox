class MemoriesController < ApplicationController
  before_action :authenticate_user!, except: [:search, :show, :index]
  before_action :memory_params, only: :create

  def new
    @memory = Memory.new
  end

  def index
    @memory = Memory.order("created_at DESC")
  end

  def show
    @memory = Memory.order("created_at DESC")
  end

  def create
    @memory = Memory.new(memory_params)
    if @memory.valid?
      @memory.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def memory_params
    params.require(:memory).permit(:image, :year, :month, :day, :place, :weather_id, :prefecture_id, :scene_id, :price_id, :with_who, :comment).merge(user_id: current_user.id)
  end

end
